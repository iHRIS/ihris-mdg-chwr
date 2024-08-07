Profile:        IhrisBasicSupervision
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-supervision
Title:          "Supervision Information"
Description:    "iHRIS Profile of the Basic resource for Supervision."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisSupervision named supervision 1..1 MS
* extension[supervision].extension[supervised].valueCoding ^label = "Supervised?"
* extension[supervision].extension[supervised].valueCoding 1..1 MS
* extension[supervision].extension[monthlyacg].valueCoding 1..1 MS
* extension[supervision].extension[monthlyacg].valueCoding ^label = "Monthly AC Grouping"
* extension[supervision].extension[performing].valueCoding ^label = "Performing?"
* extension[supervision].extension[performing].valueCoding 1..1 MS
* extension[supervision].extension[date].valueDate ^label = "Date of Supervision"
* extension[supervision].extension[date].valueDate 1..1 MS

Extension:      IhrisSupervision
Id:             ihris-supervision
Title:          "Supervision details"
* extension contains
      supervised 1..1 MS and
      monthlyacg 1..1 MS and
      performing 1..1 MS and
      date 0..1 MS
* extension[supervised].value[x] only Coding
* extension[supervised].valueCoding ^label = "Supervised?"
* extension[supervised].valueCoding from IhrisYesNoValueSet (required)
* extension[monthlyacg].value[x] only Coding
* extension[monthlyacg].valueCoding ^label = "Monthly AC Grouping"
* extension[monthlyacg].valueCoding from IhrisYesNoValueSet (required)
* extension[performing].value[x] only Coding
* extension[performing].valueCoding ^label = "Performing?"
* extension[performing].valueCoding from IhrisYesNoValueSet (required)
* extension[date].value[x] only date
* extension[date].valueDate ^label =  "Date"

Instance:       IhrisPractitionerWorkflowSupervision
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Supervision Workflow"
* description = "iHRIS workflow to record a Supervision"
* id = "ihris-supervision"
* url = "http://ihris.org/fhir/Questionnaire/ihris-supervision"
* name = "ihris-supervision"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Supervision Information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision"
* item[0].text = "Supervision Information"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision#Basic.extension:supervision"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision#Basic.extension:supervision.extension:supervised.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Supervised?"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision#Basic.extension:supervision.extension:monthlyacg.value[x]:valueCoding"
* item[0].item[0].item[1].text = "Monthly AC Grouping"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision#Basic.extension:supervision.extension:performing.value[x]:valueCoding"
* item[0].item[0].item[2].text = "Performing?"
* item[0].item[0].item[2].type = #choice
* item[0].item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[2].required = true
* item[0].item[0].item[2].repeats = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision#Basic.extension:supervision.extension:date.value[x]:valueDate"
* item[0].item[0].item[3].text = "Date"
* item[0].item[0].item[3].type = #date
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false
* item[0].item[0].item[3].enableBehavior = #any
* item[0].item[0].item[3].enableWhen[0].question = "Basic.extension[0].extension[0]"
* item[0].item[0].item[3].enableWhen[0].operator = #=
* item[0].item[0].item[3].enableWhen[0].answerCoding = ihris-yesno#yes

Instance:       ihris-page-basic-supervision
InstanceOf:     IhrisPage
Title:          "Supervision"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-supervision)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Supervised|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision').extension.where(url='received').valueCoding.display"
* extension[display].extension[search][2].valueString = "Monthly AC Grouping|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision').extension.where(url='monthlyacg').valueCoding.display"
* extension[display].extension[search][3].valueString = "Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-supervision').extension.where(url='date').valueDate"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Supervision"
* extension[section][0].extension[description].valueString = "Supervision details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:supervision.extension:supervised.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "extension:supervision.extension:monthlyacg.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "extension:supervision.extension:performing.value[x]:valueCoding"
* extension[section][0].extension[field][4].valueString = "extension:supervision.extension:date.value[x]:valueDate"