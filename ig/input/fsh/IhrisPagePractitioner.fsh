Instance:       ihris-page-practitioner
InstanceOf:     IhrisPage
Title:          "Practitioner"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner)
* extension[display].extension[search][0].valueString = "Last Name|Practitioner.name.family"
* extension[display].extension[search][1].valueString = "First Name(s)|Practitioner.name.given"
* extension[display].extension[search][2].valueString = "Birth Date|Practitioner.birthDate"
* extension[display].extension[search][3].valueString = "Gender|Practitioner.gender|http://ihris.org/fhir/ValueSet/ihris-gender-valueset"
* extension[display].extension[search][4].valueString = "Status|Practitioner.active"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[filter][1].valueString = "Gender|gender|http://ihris.org/fhir/ValueSet/ihris-gender-valueset"
* extension[display].extension[add].extension[url].valueUrl = "/questionnaire/ihris-practitioner/practitioner"
* extension[display].extension[add].extension[icon].valueString = "mdi-account-plus"
* extension[display].extension[add].extension[class].valueString = "accent"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Practitioner.id"
* extension[display].extension[link][0].extension[text].valueString = "Modifier"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "secondary"
* extension[section][0].extension[title].valueString = "CSB/Health Worker"
* extension[section][0].extension[description].valueString = "Primary demographic details"
* extension[section][0].extension[name].valueString = "Practitioner"
* extension[section][0].extension[field][0].valueString = "Practitioner.name"
* extension[section][0].extension[field][1].valueString = "Practitioner.name.given"
* extension[section][0].extension[field][2].valueString = "Practitioner.name.family"
* extension[section][0].extension[field][3].valueString = "Practitioner.birthDate"
* extension[section][0].extension[field][4].valueString = "Practitioner.gender"
* extension[section][0].extension[field][5].valueString = "Practitioner.extension:maritalStatus"
* extension[section][0].extension[field][6].valueString = "Practitioner.extension:nationality"
* extension[section][0].extension[field][7].valueString = "Practitioner.extension:residence"
* extension[section][1].extension[title].valueString = "Identifiers"
* extension[section][1].extension[description].valueString = "Personal identifiers"
* extension[section][1].extension[name].valueString = "identifiers"
* extension[section][1].extension[field][0].valueString = "Practitioner.identifier"
* extension[section][1].extension[field][1].valueString = "Practitioner.identifier.use"
* extension[section][1].extension[field][2].valueString = "Practitioner.identifier.type"
* extension[section][1].extension[field][3].valueString = "Practitioner.identifier.value"
* extension[section][1].extension[field][4].valueString = "Practitioner.identifier.system"
* extension[section][2].extension[title].valueString = "Contact Details"
* extension[section][2].extension[description].valueString = "Phone numbers"
* extension[section][2].extension[name].valueString = "contact"
* extension[section][3].extension[field][0].valueString = "Practitioner.extension:phone"
* extension[section][3].extension[title].valueString = "Position"
* extension[section][3].extension[description].valueString = "Position the person holds"
* extension[section][3].extension[name].valueString = "position"
* extension[section][3].extension[field][0].valueString = "PractitionerRole.code"
* extension[section][3].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner-role)
* extension[section][3].extension[resource].extension[linkfield].valueString = "PractitionerRole.practitioner"
* extension[section][3].extension[resource].extension[column][0].extension[header].valueString = "Job/CSB Type"
* extension[section][3].extension[resource].extension[column][0].extension[field].valueString = "PractitionerRole.code.coding[0]"
* extension[section][3].extension[resource].extension[column][1].extension[header].valueString = "Fokontany"
* extension[section][3].extension[resource].extension[column][1].extension[field].valueString = "PractitionerRole.location"
* extension[section][3].extension[resource].extension[column][2].extension[header].valueString = "Start Date"
* extension[section][3].extension[resource].extension[column][2].extension[field].valueString = "PractitionerRole.period.start"
* extension[section][3].extension[resource].extension[column][3].extension[header].valueString = "End Date"
* extension[section][3].extension[resource].extension[column][3].extension[field].valueString = "PractitionerRole.period.end"
* extension[section][3].extension[resource].extension[column][4].extension[header].valueString = "Workplace"
* extension[section][3].extension[resource].extension[column][4].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-workplace').valueCoding.display"
* extension[section][3].extension[resource].extension[column][5].extension[header].valueString = "Active/Functional"
* extension[section][3].extension[resource].extension[column][5].extension[field].valueString = "PractitionerRole.active"
* extension[section][3].extension[resource].extension[column][6].extension[header].valueString = "Actions"
* extension[section][3].extension[resource].extension[column][6].extension[field].valueString = "_action"
* extension[section][3].extension[resource].extension[action][0].extension[link].valueString = "/resource/add/practitionerrole?PractitionerRole.practitioner.reference=Practitioner/FHIRID"
* extension[section][3].extension[resource].extension[action][0].extension[text].valueString = "Assign Job/CSB Type"
* extension[section][3].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][3].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][3].extension[resource].extension[action][0].extension[condition].valueString = "PractitionerRole.period.end.exists()"
* extension[section][3].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][3].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/practitionerrole/ITEMID"
* extension[section][3].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][3].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][3].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][3].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-endrole/practitioner?practitionerrole=ITEMID"
* extension[section][3].extension[resource].extension[action][2].extension[text].valueString = "Terminer"
* extension[section][3].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][3].extension[resource].extension[action][2].extension[condition].valueString = "PractitionerRole.period.end.empty()"
* extension[section][3].extension[resource].extension[action][2].extension[class].valueString = "warning"
// * extension[sectio3][4].extension[resource].extension[action][3].extension[link].valueString = "/questionnaire/ihris-promotion/practitioner?practitionerrole=ITEMID"
// * extension[section][4].extension[resource].extension[action][3].extension[text].valueString = "Enter Promotion"
// * extension[section][4].extension[resource].extension[action][3].extension[row].valueBoolean = true
// * extension[sectio4][4].extension[resource].extension[action][3].extension[condition].valueString = "PractitionerRole.period.end.empty()"
// * extension[sectio4][4].extension[resource].extension[action][3].extension[class].valueString = "accent"
* extension[section][4].extension[title].valueString = "Distance Information"
* extension[section][4].extension[description].valueString = "Person's Distance from Centers"
* extension[section][4].extension[name].valueString = "distance"
* extension[section][4].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-distance)
* extension[section][4].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][4].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][4].extension[resource].extension[column][0].extension[header].valueString = "Distance from Fokotany"
* extension[section][4].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='fokontany').valueDecimal"
* extension[section][4].extension[resource].extension[column][1].extension[header].valueString = "Distance from CSB"
* extension[section][4].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='csb').valueDecimal"
* extension[section][4].extension[resource].extension[column][2].extension[header].valueString = "Distance from Community Site"
* extension[section][4].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='commsite').valueDecimal"
* extension[section][4].extension[resource].extension[column][3].extension[header].valueString = "Actions"
* extension[section][4].extension[resource].extension[column][3].extension[field].valueString = "_action"
* extension[section][4].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-distance/basic-distance?practitioner=FHIRID"
* extension[section][4].extension[resource].extension[action][0].extension[text].valueString = "Add Distance Information"
* extension[section][4].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][4].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][4].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][4].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-distance/ITEMID"
* extension[section][4].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][4].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][4].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][4].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-distance/basic-distance/ITEMID?practitioner=FHIRID"
* extension[section][4].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][4].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][4].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][5].extension[title].valueString = "Education History"
* extension[section][5].extension[description].valueString = "Education History Details for the Person"
* extension[section][5].extension[name].valueString = "education-history"
* extension[section][5].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-education-history)
* extension[section][5].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][5].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][5].extension[resource].extension[column][0].extension[header].valueString = "level"
* extension[section][5].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-education-history').extension.where(url='level').valueCoding"
* extension[section][5].extension[resource].extension[column][1].extension[header].valueString = "Actions"
* extension[section][5].extension[resource].extension[column][1].extension[field].valueString = "_action"
* extension[section][5].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-education-history/basic-education-history?practitioner=FHIRID"
* extension[section][5].extension[resource].extension[action][0].extension[text].valueString = "Add Education Information"
* extension[section][5].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][5].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][5].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][5].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-education-history/ITEMID"
* extension[section][5].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][5].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][5].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][5].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-education-history/basic-education-history/ITEMID?practitioner=FHIRID"
* extension[section][5].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][5].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][5].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][6].extension[title].valueString = "Incentives Provided/Motivation"
* extension[section][6].extension[description].valueString = "Incentives Provided Details for the Health Worker"
* extension[section][6].extension[name].valueString = "incentive"
* extension[section][6].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-incentive)
* extension[section][6].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][6].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][6].extension[resource].extension[column][0].extension[header].valueString = "Activity Packs"
* extension[section][6].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='incentive').valueCoding.display"
* extension[section][6].extension[resource].extension[column][1].extension[header].valueString = "Motivation status"
* extension[section][6].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='motivation').valueCoding.display"
* extension[section][6].extension[resource].extension[column][2].extension[header].valueString = "Motivation Type"
* extension[section][6].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='motivationType').valueCoding.display"
* extension[section][6].extension[resource].extension[column][3].extension[header].valueString = "Other Motivation"
* extension[section][6].extension[resource].extension[column][3].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='other').valueString"
* extension[section][6].extension[resource].extension[column][4].extension[header].valueString = "Actions"
* extension[section][6].extension[resource].extension[column][4].extension[field].valueString = "_action"
* extension[section][6].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-incentive/basic-incentive?practitioner=FHIRID"
* extension[section][6].extension[resource].extension[action][0].extension[text].valueString = "Add Motivation Information"
* extension[section][6].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][6].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][6].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][6].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-incentive/ITEMID"
* extension[section][6].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][6].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][6].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][6].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-incentive/basic-incentive/ITEMID?practitioner=FHIRID"
* extension[section][6].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][6].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][6].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][7].extension[title].valueString = "Trainings"
* extension[section][7].extension[description].valueString = "Training Received ACs"
* extension[section][7].extension[name].valueString = "training"
* extension[section][7].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-training)
* extension[section][7].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][7].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][7].extension[resource].extension[column][0].extension[header].valueString = "Training Recived"
* extension[section][7].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-training').extension.where(url='training').valueCoding.display"
* extension[section][7].extension[resource].extension[column][1].extension[header].valueString = "Date"
* extension[section][7].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-training').extension.where(url='date').valueDate"
* extension[section][7].extension[resource].extension[column][2].extension[header].valueString = "Actions"
* extension[section][7].extension[resource].extension[column][2].extension[field].valueString = "_action"
* extension[section][7].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-training/basic-training?practitioner=FHIRID"
* extension[section][7].extension[resource].extension[action][0].extension[text].valueString = "Add Training"
* extension[section][7].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][7].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][7].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][7].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-training/ITEMID"
* extension[section][7].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][7].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][7].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][7].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-training/basic-training/ITEMID?practitioner=FHIRID"
* extension[section][7].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][7].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][7].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][8].extension[title].valueString = "CA Reports"
* extension[section][8].extension[description].valueString = "CA Reports Details for the Health Worker"
* extension[section][8].extension[name].valueString = "careports"
* extension[section][8].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-careports)
* extension[section][8].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][8].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][8].extension[resource].extension[column][0].extension[header].valueString = "Received"
* extension[section][8].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='recieved').valueCoding.display"
* extension[section][8].extension[resource].extension[column][1].extension[header].valueString = "Month"
* extension[section][8].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='month').valueCoding.display"
* extension[section][8].extension[resource].extension[column][2].extension[header].valueString = "Date"
* extension[section][8].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='date').valueDate"
* extension[section][8].extension[resource].extension[column][3].extension[header].valueString = "Actions"
* extension[section][8].extension[resource].extension[column][3].extension[field].valueString = "_action"
* extension[section][8].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-careports/basic-careports?practitioner=FHIRID"
* extension[section][8].extension[resource].extension[action][0].extension[text].valueString = "Add CA Report Information"
* extension[section][8].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][8].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][8].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][8].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-careports/ITEMID"
* extension[section][8].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][8].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][8].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][8].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-careports/basic-careports/ITEMID?practitioner=FHIRID"
* extension[section][8].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][8].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][8].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][9].extension[title].valueString = "Eqiupment Information"
* extension[section][9].extension[description].valueString = "Equipment Information for the Health Worker"
* extension[section][9].extension[name].valueString = "equipment"
* extension[section][9].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-equipment)
* extension[section][9].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][9].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][9].extension[resource].extension[column][0].extension[header].valueString = "Equipment Received"
* extension[section][9].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-equipment').extension.where(url='recieved').valueCoding.display"
* extension[section][9].extension[resource].extension[column][1].extension[header].valueString = "Equipment Type"
* extension[section][9].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-equipment').extension.where(url='equipmenttype').valueCoding.display"
* extension[section][9].extension[resource].extension[column][2].extension[header].valueString = "Date"
* extension[section][9].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-equipment').extension.where(url='date').valueDate"
* extension[section][9].extension[resource].extension[column][3].extension[header].valueString = "Actions"
* extension[section][9].extension[resource].extension[column][3].extension[field].valueString = "_action"
* extension[section][9].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-equipment/basic-equipment?practitioner=FHIRID"
* extension[section][9].extension[resource].extension[action][0].extension[text].valueString = "Add Equipment Information"
* extension[section][9].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][9].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][9].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][9].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-equipment/ITEMID"
* extension[section][9].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][9].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][9].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][9].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-equipment/basic-equipment/ITEMID?practitioner=FHIRID"
* extension[section][9].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][9].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][9].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][10].extension[title].valueString = "Supervision"
* extension[section][10].extension[description].valueString = "Supervision Information for the Health Worker"
* extension[section][10].extension[name].valueString = "supervision"
* extension[section][10].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-supervision)
* extension[section][10].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][10].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][10].extension[resource].extension[column][0].extension[header].valueString = "Supervised?"
* extension[section][10].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-supervision').extension.where(url='supervised').valueCoding.display"
* extension[section][10].extension[resource].extension[column][1].extension[header].valueString = "Monthly AC Gathering"
* extension[section][10].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-supervision').extension.where(url='monthlyacg').valueCoding.display"
* extension[section][10].extension[resource].extension[column][2].extension[header].valueString = "Date of Supervision"
* extension[section][10].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-supervision').extension.where(url='date').valueDate"
* extension[section][10].extension[resource].extension[column][3].extension[header].valueString = "Actions"
* extension[section][10].extension[resource].extension[column][3].extension[field].valueString = "_action"
* extension[section][10].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-supervision/basic-supervision?practitioner=FHIRID"
* extension[section][10].extension[resource].extension[action][0].extension[text].valueString = "Add Supervision Information"
* extension[section][10].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][10].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][10].extension[resource].extension[action][0].extension[class].valueString = "primary"
* extension[section][10].extension[resource].extension[action][1].extension[link].valueString = "/resource/view/basic-supervision/ITEMID"
* extension[section][10].extension[resource].extension[action][1].extension[text].valueString = "Afficher"
* extension[section][10].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][10].extension[resource].extension[action][1].extension[class].valueString = "primary"
* extension[section][10].extension[resource].extension[action][2].extension[link].valueString = "/questionnaire/ihris-supervision/basic-supervision/ITEMID?practitioner=FHIRID"
* extension[section][10].extension[resource].extension[action][2].extension[text].valueString = "Modifier"
* extension[section][10].extension[resource].extension[action][2].extension[row].valueBoolean = true
* extension[section][10].extension[resource].extension[action][2].extension[class].valueString = "primary"
* extension[section][11].extension[title].valueString = "Emergency Contact"
* extension[section][11].extension[description].valueString = "Emergency Contact for the Person"
* extension[section][11].extension[name].valueString = "emergency"
* extension[section][11].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-emergency)
* extension[section][11].extension[resource].extension[searchfield].valueString = "practitioner"
* extension[section][11].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[section][11].extension[resource].extension[column][0].extension[header].valueString = "Name"
* extension[section][11].extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-emergency').extension.where(url='name').valueString"
* extension[section][11].extension[resource].extension[column][1].extension[header].valueString = "Relationship"
* extension[section][11].extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-emergency').extension.where(url='relation').valueCoding.display"
* extension[section][11].extension[resource].extension[column][2].extension[header].valueString = "Phone Number"
* extension[section][11].extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-emergency').extension.where(url='phone').valueString"
* extension[section][11].extension[resource].extension[column][3].extension[header].valueString = "Actions"
* extension[section][11].extension[resource].extension[column][3].extension[field].valueString = "_action"
* extension[section][11].extension[resource].extension[action][0].extension[link].valueString = "/questionnaire/ihris-emergency/emergency?practitioner=FHIRID"
* extension[section][11].extension[resource].extension[action][0].extension[text].valueString = "Add Emergency Contact"
* extension[section][11].extension[resource].extension[action][0].extension[row].valueBoolean = false
* extension[section][11].extension[resource].extension[action][0].extension[emptyDisplay].valueBoolean = true
* extension[section][11].extension[resource].extension[action][0].extension[class].valueString = "primary"
//* extension[section][11].extension[resource].extension[action][0].extension[task].valueId = "ihris-task-add-emergency"
* extension[section][11].extension[resource].extension[action][1].extension[link].valueString = "/questionnaire/ihris-emergency/emergency/ITEMID?practitioner=FHIRID"
* extension[section][11].extension[resource].extension[action][1].extension[text].valueString = "Modifier"
* extension[section][11].extension[resource].extension[action][1].extension[row].valueBoolean = true
* extension[section][11].extension[resource].extension[action][1].extension[class].valueString = "primary"
//* extension[section][9].extension[resource].extension[action][1].extension[task].valueId = "ihris-task-edit-emergency"
