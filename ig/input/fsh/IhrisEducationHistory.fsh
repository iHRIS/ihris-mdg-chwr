Profile:        IhrisBasicEducationHistory
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-education-history
Title:          "Education History Information"
Description:    "iHRIS Profile of the Basic resource for Education History."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisEducationHistory named educationHistory 1..1 MS
* extension[educationHistory].extension[level].valueCoding ^label = "Highest Level of Study"
* extension[educationHistory].extension[level].valueCoding 1..1 MS
    
Extension:      IhrisEducationHistory
Id:             ihris-education-history
Title:          "Education History details"
* extension contains
      level 1..1 MS
* extension[level].value[x] only Coding
* extension[level].valueCoding ^label = "Education Level"
* extension[level].valueCoding from IhrisEducationLevelValueSet (required)

CodeSystem:      IhrisEducationLevel
Id:              ihris-education-level
Title:           "Education Level"
* ^date = "2024-07-20T08:41:04.362Z"
* ^version = "0.5.0"
* #primary "Primaire"
* #secondary "Secondaire"
* #university "Universitaire"
* #none "Aucun"

ValueSet:         IhrisEducationLevelValueSet
Id:               ihris-education-level-valueset
Title:            "iHRIS Education Level ValueSet"
* ^date = "2024-07-20T08:41:04.362Z"
* ^version = "0.5.0"
* codes from system IhrisEducationLevel


Instance:       IhrisPractitionerWorkflowEducationHistory
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Education History Workflow"
* description = "iHRIS workflow to record a Education History"
* id = "ihris-education-history"
* url = "http://ihris.org/fhir/Questionnaire/ihris-education-history"
* name = "ihris-education-history"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Education History information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-education-history"
* item[0].text = "Education History"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-education-history#Basic.extension:educationHistory"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-education-history#Basic.extension:educationHistory.extension:level.value[x]"
* item[0].item[0].item[0].text = "Highest Level of Study"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-education-level-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

Instance:       ihris-page-basic-education-history
InstanceOf:     IhrisPage
Title:          "Education History"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-education-history)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/basic-education-history/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "secondary"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][2].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][2].extension[text].valueString = "Add Another"
* extension[display].extension[link][2].extension[button].valueBoolean = true
* extension[display].extension[link][2].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][2].extension[url].valueUrl = "/questionnaire/ihris-education-history/basic-education-history?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Level|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-education-history').extension.where(url='level').valueCoding.display"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[display].extension[field][1].extension[path].valueString = "Basic.extension:educationHistory.extension:year.value[x]:valueDate"
* extension[display].extension[field][1].extension[type].valueString = "year"
* extension[section][0].extension[title].valueString = "Education History"
* extension[section][0].extension[description].valueString = "Education History details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:educationHistory.extension:level.value[x]:valueCoding"

Instance:       ihris-page-education-level
InstanceOf:     IhrisPage
Title:          "iHRIS Education Level CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-education-level)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Study Level"
* extension[section][0].extension[description].valueString = "Study Level"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"