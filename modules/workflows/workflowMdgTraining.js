const moment = require('moment')
const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')

const workflowMdgTraining = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      fhirQuestionnaire.processQuestionnaire( req.body ).then( (bundle) => {
        let practitioner = req.query.practitioner
        let trainingIndex = bundle.entry && bundle.entry.findIndex(entry => entry.resource.resourceType === 'Basic' && entry.resource.meta && entry.resource.meta.profile.includes('http://ihris.org/fhir/StructureDefinition/ihris-basic-training'))
        let training = bundle.entry[trainingIndex]
        let trainingExtension = training.resource.extension.find(ext => ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-training')?.extension
        let startDate = trainingExtension.find((ext) => {
          return ext.url === 'date'
        })?.valueDate
        if (startDate && moment(startDate, "YYYY-MM-DD", true).isAfter(moment(), 'day')) {
          return reject({ message: "La date de formation doit être antérieure à aujourd’hui." });
        }
        training.resource.extension.push({
          url: 'http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference',
          valueReference: {
            reference: 'Practitioner/' + practitioner
          }
        })
        return resolve(bundle)
      })
    } )
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
 
module.exports = workflowMdgTraining
