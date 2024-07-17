Profile:        IhrisBasicCareport
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-careports
Title:          "CA Report Information"
Description:    "iHRIS Profile of the Basic resource for CA Report."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisCareport named careports 1..1 MS
* extension[careports].extension[recieved].valueCoding ^label = "Recieved Report?"
* extension[careports].extension[recieved].valueCoding 1..1 MS
* extension[careports].extension[date].valueDate ^label = "Date"
* extension[careports].extension[date].valueDate 1..1 MS


Extension:      IhrisCareport
Id:             ihris-careports
Title:          "CA Report details"
* extension contains
      recieved 0..1 MS and
      date 0..1 MS
* extension[recieved].value[x] only Coding
* extension[recieved].valueCoding ^label = "Recieved Report?"
* extension[recieved].valueCoding from IhrisYesNoValueSet (required)
* extension[date].value[x] only date
* extension[date].valueDate ^label =  "Date"

Instance:       IhrisPractitionerWorkflowCareport
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS CA Report Workflow"
* description = "iHRIS workflow to record a CA Report"
* id = "ihris-careports"
* url = "http://ihris.org/fhir/Questionnaire/ihris-careports"
* name = "ihris-careports"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a CA Report information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports"
* item[0].text = "CA Reports"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:recieved.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Recieved Report?"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:date.value[x]:valueDate"
* item[0].item[0].item[1].text = "Date"
* item[0].item[0].item[1].type = #date
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false

Instance:       ihris-page-basic-careports
InstanceOf:     IhrisPage
Title:          "Careport"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-careports)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/basic-careports/FIELD?edit=true"
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
* extension[display].extension[link][2].extension[url].valueUrl = "/questionnaire/ihris-careports/basic-careports?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Recieved Report?|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='careports').valueCoding.display"
* extension[display].extension[search][1].valueString = "Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='date').valueCoding.display"
* extension[section][0].extension[title].valueString = "CA Report"
* extension[section][0].extension[description].valueString = "CA Report details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:careports.extension:careports.value[x]:valueCoding.display"
* extension[section][0].extension[field][2].valueString = "extension:careports.extension:date.value[x]:valueDate"
