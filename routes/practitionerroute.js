const express = require('express')
const router = express.Router()
const axios = require('axios')
const async = require('async')
//const ihrissmartrequire = require('ihrissmartrequire')
//const fhirAxios = ihrissmartrequire("modules/fhirAxios");
const fhirAxios = require('../../modules/fhir/fhirAxios')

router.delete("/deletePractitioner/:practitioner", (req, res) => {
  let url = fhirAxios.baseUrl.href
  url = url + "/Practitioner?_revinclude=*&_id=" + req.params.practitioner
  url = url.replace("//Practitioner", "/Practitioner")
  axios.get(url).then((response) => {
    if(!response.data || !response.data.entry || !response.data.entry.length) {
      return res.status(500).json({message: "An error has occured, try later", type: "error"})
    }
    let toDelete = []
    let rolechildren = []
    let qtnResps = []
    let basics = []
    let roles = response.data.entry.filter((entry) => {
      return entry.resource.resourceType === "PractitionerRole"
    })
    let inservicereqs = response.data.entry.filter((entry) => {
      return entry.resource.meta && entry.resource.meta.profile && entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/inservice-training-request-profile")
    })
    for(let entry of response.data.entry) {
      if(entry.resource.resourceType === "Basic" && !entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/inservice-training-request-profile") && !entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/inservice-training-profile")) {
        basics.push({resource: {id: entry.resource.id, resourceType: "Basic"}})
      } else if(entry.resource.resourceType === "QuestionnaireResponse") {
        qtnResps.push({resource: {id: entry.resource.id, resourceType: "QuestionnaireResponse"}})
      }
    }
    const auditEvProm = new Promise((resolve) => {
      async.each(qtnResps, (qtnResp, nxt) => {
        let url = fhirAxios.baseUrl.href + "/AuditEvent?entity=QuestionnaireResponse/" + qtnResp.resource.id
        url = url.replace("//AuditEvent", "/AuditEvent")
        axios.get(url).then((resp) => {
          if(resp.data?.entry && resp.data.entry.length) {
            for(let entry of resp.data.entry) {
              toDelete.push({resource: {id: entry.resource.id, resourceType: "AuditEvent"}})
            }
          }
          nxt()
        }).catch((err) => {
          console.log(err);
          nxt()
        })
      }, () => {
        resolve()
      })
    })
    const servreqs = new Promise((resolve) => {
      async.each(inservicereqs, (inservicereq, nxt) => {
        let url = fhirAxios.baseUrl.href + "/Basic?inservicetrainingrequest=Basic/" + inservicereq.resource.id
        url = url.replace("//Basic", "/Basic")
        axios.get(url).then((resp) => {
          if(resp.data?.entry && resp.data.entry.length) {
            for(let entry of resp.data.entry) {
              basics.push({resource: {id: entry.resource.id, resourceType: "Basic"}})
            }
          }
          basics.push({resource: {id: inservicereq.resource.id, resourceType: "Basic"}})
          nxt()
        }).catch((err) => {
          console.log(err);
          basics.push({resource: {id: inservicereq.resource.id, resourceType: "Basic"}})
          nxt()
        })
      }, () => {
        resolve()
      })
    })
    const rolesProm = new Promise((resolve) => {
      async.each(roles, (role, nxt) => {
        let url = fhirAxios.baseUrl.href + "/Basic?practitionerrole=" + role.resource.id
        url = url.replace("//Basic", "/Basic")
        axios.get(url).then((resp) => {
          if(resp.data.entry) {
            for(let entry of resp.data.entry) {
              rolechildren.push({
                resource: {
                  id: entry.resource.id,
                  resourceType: entry.resource.resourceType
                }
              })
            }
          }
          return nxt()
        }).catch(() => {
          return nxt()
        })
      }, () => {
        resolve()
      })
    })
    Promise.all([servreqs, rolesProm, auditEvProm]).then(() => {
      toDelete = toDelete.concat(qtnResps)
      toDelete = toDelete.concat(rolechildren)
      toDelete = toDelete.concat(roles)
      toDelete = toDelete.concat(basics)
      toDelete.push({resource: {id: req.params.practitioner, resourceType: "Practitioner"}})
      let bundle = {
        resourceType: "Bundle",
        type: "transaction",
        entry: []
      }
      for(let del of toDelete) {
        bundle.entry.push({
          resource: del.resource,
          request: {
            method: "DELETE",
            url: del.resource.resourceType + "/" + del.resource.id
          }
        })
      }
      // console.error(JSON.stringify(bundle, 0, 2));
      // return res.json({message: "Practitioner deleted successfully", type: "success"})
      axios.post( fhirAxios.baseUrl.href, bundle, ).then ( () => {
        return res.json({message: "Practitioner deleted successfully", type: "success"})
      }).catch( (err) => {
        console.error(err);
        return res.status(500).json({message: "An error has occured, try later", type: "error"})
      })
    })
  }).catch((err) => {
    console.log(err);
    return res.status(500).json({message: "An error has occured, try later", type: "error"})
  })
})

module.exports = router