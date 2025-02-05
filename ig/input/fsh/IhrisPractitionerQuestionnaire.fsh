Instance:       IhrisPractitionerQuestionnaire
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Practitioner Questionnaire"
* description = "iHRIS Practitioner initial data entry questionnaire."
* id = "ihris-practitioner"
* url = "http://ihris.org/fhir/Questionnaire/ihris-practitioner"
* name = "ihris-practitioner"
* status = #active
* date = 2020-06-22
* purpose = "Data entry page for practitioners."

* item[0].linkId = "Practitioner"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner"
* item[0].text = "Community Health Worker|Primary demographic details"
* item[0].type = #group

* item[0].item[0].linkId = "Practitioner.name[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.name"
* item[0].item[0].text = "Name"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Practitioner.name[0].family"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.name.family"
* item[0].item[0].item[0].text = "Last Name"
* item[0].item[0].item[0].type = #string
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Practitioner.name[0].given[0]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.name.given"
* item[0].item[0].item[1].text = "First Names"
* item[0].item[0].item[1].type = #string
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = true

* item[0].item[1].linkId = "Practitioner.birthDate"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.birthDate"
* item[0].item[1].text = "Date of Birth"
* item[0].item[1].type = #date
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Practitioner.gender"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.gender"
* item[0].item[2].text = "Gender"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-gender-valueset"
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "Practitioner.extension[0]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.extension:maritalStatus.value[x]"
* item[0].item[3].text = "Marital Status"
* item[0].item[3].type = #choice
* item[0].item[3].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-marital-status-valueset"
* item[0].item[3].required = false
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "Practitioner.extension[1]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.extension:nationality.value[x]"
* item[0].item[4].text = "Nationality"
* item[0].item[4].type = #choice
* item[0].item[4].answerValueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-2"
* item[0].item[4].required = false
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "Practitioner.active"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.active"
* item[0].item[5].text = "Active"
* item[0].item[5].type = #boolean
* item[0].item[5].required = true

* item[1].linkId = "__Practitioner:contact"
* item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner"
* item[1].text = "Contact Details| phone numbers"
* item[1].type = #group

* item[1].item[0].linkId = "Practitioner.extension[2]"
* item[1].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.extension:phone.value[x]"
* item[1].item[0].text = "Mobile Phone"
* item[1].item[0].type = #string
* item[1].item[0].required = true
* item[1].item[0].repeats = false
* item[1].item[0].extension[constraint][0].extension[key].valueId = "ihris-phone-check"
* item[1].item[0].extension[constraint][0].extension[severity].valueCode = #error
* item[1].item[0].extension[constraint][0].extension[expression].valueString = "matches('^$|^(([+][2][6][1][1-9][0-9]{8})|([0][1-9][0-9]{8}))')"
* item[1].item[0].extension[constraint][0].extension[human].valueString = "Phone number must be in the format +261xxxxxxxxx or 0xxxxxxxxx"

* item[2].linkId = "PractitionerRole"
* item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[2].text = "Position|Position the person holds"
* item[2].type = #group
* item[2].extension[constraint][0].extension[key].valueId = "ihris-start-end-date"
* item[2].extension[constraint][0].extension[severity].valueCode = #error
* item[2].extension[constraint][0].extension[expression].valueString = "where(linkId='PractitionerRole.period.end').answer.first().valueDateTime.empty() or where(linkId='PractitionerRole.period.end').answer.first().valueDateTime >= where(linkId='PractitionerRole.period.start').answer.first().valueDateTime"
* item[2].extension[constraint][0].extension[human].valueString = "The end date must be after the start date."

* item[2].item[0].linkId = "PractitionerRole.practitioner"
* item[2].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.practitioner"
* item[2].item[0].text = "Practitioner"
* item[2].item[0].type = #string
* item[2].item[0].required = true
* item[2].item[0].repeats = false
* item[2].item[0].readOnly = true
* item[2].item[0].answerOption.valueString = "__REPLACE__Practitioner"
* item[2].item[0].answerOption.initialSelected = true

* item[2].item[1].linkId = "PractitionerRole.code"
* item[2].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.code"
* item[2].item[1].text = "Job Title / Community Health Worker Type"
* item[2].item[1].type = #choice
* item[2].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-job-chwr"
* item[2].item[1].required = true
* item[2].item[1].repeats = false

* item[2].item[2].linkId = "PractitionerRole.period.start"
* item[2].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.start"
* item[2].item[2].text = "Start Date"
* item[2].item[2].type = #dateTime
* item[2].item[2].required = true
* item[2].item[2].repeats = false

* item[2].item[3].linkId = "PractitionerRole.location#tree"
* item[2].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.location"
* item[2].item[3].text = "Fokotany"
* item[2].item[3].type = #reference
* item[2].item[3].required = true
* item[2].item[3].repeats = true

* item[2].item[4].linkId = "PractitionerRole.extension[0]#preload"
* item[2].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:workPlace.value[x]"
* item[2].item[4].text = "Place of Work"
* item[2].item[4].type = #choice
* item[2].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-workplace"
* item[2].item[4].required = false
* item[2].item[4].repeats = false

* item[2].item[5].linkId = "PractitionerRole.extension[1]#preload"
* item[2].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:category.value[x]"
* item[2].item[5].text = "Category"
* item[2].item[5].type = #choice
* item[2].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-category-valueset"
* item[2].item[5].required = false
* item[2].item[5].repeats = false

* item[2].item[6].linkId = "PractitionerRole.active"
* item[2].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.active"
* item[2].item[6].text = "Active"
* item[2].item[6].type = #boolean
* item[2].item[6].required = true

* item[3].linkId = "Practitioner.identifier"
* item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.identifier"
* item[3].text = "Identifiers|Identifiers for the practitioner"
* item[3].type = #group

* item[3].item[0].linkId = "Practitioner.identifier[1]"
* item[3].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.identifier"
* item[3].item[0].text = "CIN (National ID Number)"
* item[3].item[0].type = #group
* item[3].item[0].repeats = false
* item[3].item[0].required = false

* item[3].item[0].item[0].linkId = "Practitioner.identifier[0].value"
* item[3].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.identifier.value"
* item[3].item[0].item[0].text = "ID Number"
* item[3].item[0].item[0].type = #string
* item[3].item[0].item[0].repeats = false
* item[3].item[0].item[0].required = true

* item[3].item[0].item[1].linkId = "Practitioner.identifier[0].type"
* item[3].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner#Practitioner.identifier.type"
* item[3].item[0].item[1].text = "ID Type"
* item[3].item[0].item[1].type = #choice
* item[3].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-mdg-identifier-type"
* item[3].item[0].item[1].repeats = false
* item[3].item[0].item[1].required = true
* item[3].item[0].item[1].readOnly = true
* item[3].item[0].item[1].answerOption.valueCoding = http://ihris.org/fhir/CodeSystem/ihris-mdg-identifier-codesystem#CIN
* item[3].item[0].item[1].answerOption.initialSelected = true