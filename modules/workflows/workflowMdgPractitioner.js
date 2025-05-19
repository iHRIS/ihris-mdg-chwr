const winston = require('winston')
const moment = require("moment")
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')

const workflowMdgPractitioner = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      fhirQuestionnaire.processQuestionnaire( req.body ).then( (bundle) => {
        let practitioner = bundle.entry.find((entry) => {
          return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/ihris-practitioner")
        })
        let role = bundle.entry.find((entry) => {
          return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role")
        })
        let cin = practitioner.resource.identifier.find((id) => {
          return id.type.coding.find((cd) => {
            return cd.code === 'CIN'
          })
        })
        if(cin) {
          let valid = validateCIN(cin.value)
          if(!valid) {
            return reject({message: "Format de CIN incorrect : 12 chiffres requis, avec espace après chaque groupe de 3 chiffres.: XXX XXX XXX XXX"})
          }
        }
        let phone = practitioner.resource.extension.find((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phone"
        })?.valueString
        if(phone) {
          let valid = validatePhone(phone)
          if(!valid.valid) {
            return reject({message: "Le numéro de téléphone est invalide, il doit contenir 10 chiffres regroupés comme suit : XXX XX XXX XX (3 chiffres, espace, 2 chiffres, espace, 3 chiffres, espace, 2 chiffres)."})
          } else {
            let index = practitioner.resource.extension.findIndex((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phone"
            })
            practitioner.resource.extension[index].valueString = valid.formatted
          }
        }
        let startDate = moment(role.resource.period.start)
        let dob = moment(practitioner.resource.birthDate)
        if (!startDate.isValid()) {
          return reject({message: "Format de date de début d'emploi invalide"});
        }
        if (!dob.isValid()) {
          return reject({message: "Format de date de naissance invalide"});
        }
        if (startDate.isBefore(dob)) {
          return reject({message: "La date de début d'emploi ne peut pas être antérieure à la date de naissance"});
        }
        const ageAtEmployment = startDate.diff(dob, 'years');
        if (ageAtEmployment < 16) {
          return reject({message: "Le personnel doit avoir au moins 18 ans lors de l'embauche"});
        }
        function validateCIN(idNumber) {
           if (typeof idNumber !== 'string') return false;
  
          const parts = idNumber.split(' ');
          if (parts.length !== 4) return false;
          
          return parts.every(part => 
            part.length === 3 && 
            [...part].every(char => char >= '0' && char <= '9')
          );
        }
        function validatePhone(phone) {
          let digits = '';
          for (const char of phone) {
            if (char >= '0' && char <= '9') {
              digits += char;
            } else if (char !== ' ') {
              return { valid: false, formatted: null };
            }
          }
          if (digits.length !== 10) {
            return { valid: false, formatted: null };
          }
          const formatted =
            digits.slice(0, 3) + ' ' +
            digits.slice(3, 5) + ' ' +
            digits.slice(5, 8) + ' ' +
            digits.slice(8, 10);

          return { valid: true, formatted }; 
        }
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
 
module.exports = workflowMdgPractitioner
