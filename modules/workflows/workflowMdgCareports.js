const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')

const workflowMdgCareports = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      fhirQuestionnaire.processQuestionnaire( req.body ).then(async(bundle) => {
        let practitioner = req.query.practitioner
        let careportsIndex = bundle.entry && bundle.entry.findIndex(entry => entry.resource.resourceType === 'Basic' && entry.resource.meta && entry.resource.meta.profile.includes('http://ihris.org/fhir/StructureDefinition/ihris-basic-careports'))
        let careports = bundle.entry[careportsIndex]
        careports.resource.extension.push({
          url: 'http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference',
          valueReference: {
            reference: 'Practitioner/' + practitioner
          }
        })
/*        let careport = careports.resource.extension.find((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-ihris-careports"
        })
        let reportYear = careport.extension.find((ext) => {
          return ext.url === "year"
        })
        let submissionDate = careport.extension.find((ext) => {
          return ext.url === "date"
        })
        if(reportYear && submissionDate && moment(reportYear.valueDate).isAfter(endDate.submissionDate)) {
          resolve(await workflowMdgCareports.outcome("La date est antérieure à l'année du rapport"))
        } else {*/
         return resolve(bundle)  
        //}
      })
    })
  },
  postProcess: ( req, results ) => {
    return new Promise( (resolve, reject) => {
        if ( results.entry && results.entry.length > 0 && results.entry[0].response.location ) {
          if ( !req.body.meta ) req.body.meta = {}
          if ( !req.body.meta.tag ) req.body.meta.tag = []
          req.body.meta.tag.push( { system: "http://ihris.org/fhir/tags/resource", code: results.entry[0].response.location } )
          resolve( req )
        }
    })
  },
  outcome: (message) => {
    return new Promise ((resolve, reject ) => {
      let outcomeBundle = {
        resourceType: "Bundle",
        type: "transaction",
        entry: [{
          resource:{
            resourceType: "OperationOutcome",
            issue: [
            {
              severity: "error",
              code: "exception",
              diagnostics: message
            }]
          },
          request: {
            method: "POST",
            url: "OperationOutcome"
          }
        }]
      }
      winston.info(JSON.stringify(outcomeBundle,null,2))
      resolve(outcomeBundle)
    })
  }
}
 
module.exports = workflowMdgCareports
