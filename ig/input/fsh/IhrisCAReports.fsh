Profile:        IhrisBasicCareport
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-careports
Title:          "CA Report Information"
Description:    "iHRIS Profile of the Basic resource for CA Report."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisCareport named careports 1..1 MS
* extension[careports].extension[month].valueCoding 1..1 MS
* extension[careports].extension[month].valueCoding ^label = "Month of the Year"
* extension[careports].extension[year].valueDate 1..1 MS
* extension[careports].extension[year].valueDate ^label = "Year"
* extension[careports].extension[recieved].valueCoding ^label = "Recieved Report?"
* extension[careports].extension[recieved].valueCoding 1..1 MS
* extension[careports].extension[date].valueDate ^label = "Date"
* extension[careports].extension[date].valueDate 1..1 MS


Extension:      IhrisCareport
Id:             ihris-careports
Title:          "CA Report details"
* extension contains
      month 1..1 MS and
      year 1..1 MS and
      recieved 1..1 MS and
      date 0..1 MS
* extension[month].value[x] only Coding
* extension[month].valueCoding ^label = "Month of the Year"
* extension[month].valueCoding from IhrisMonthValueSet (required)
* extension[year].value[x] only date
* extension[year].valueDate ^label = "Year"
* extension[recieved].value[x] only Coding
* extension[recieved].valueCoding ^label = "Recieved Report?"
* extension[recieved].valueCoding from IhrisYesNoValueSet (required)
* extension[date].value[x] only date
* extension[date].valueDate ^label =  "Date"

CodeSystem:      IhrisMonthCodeSystem
Id:              ihris-month-codesystem
Title:           "Activity Packs"
* ^date = "2022-09-29T08:41:04.362Z"
* ^version = "0.3.0"
* #january "Janvier"
* #february "Février"
* #march "Mars"
* #april "Avril"
* #may "Mai"
* #june "Juin"
* #july "Juillet"
* #august "Août"
* #september "Septembre"
* #october "Octobre"
* #november "Novembre"
* #december "Décembre"

ValueSet:         IhrisMonthValueSet
Id:               ihris-month-valueset
Title:            "iHRIS Activity Packs ValueSet"
* ^date = "2022-09-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisMonthCodeSystem

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
* item[0].item[0].extension[constraint][0].extension[key].valueId = "ihris-start-end-date"
* item[0].item[0].extension[constraint][0].extension[severity].valueCode = #error
* item[0].item[0].extension[constraint][0].extension[expression].valueString = "where(linkId='Basic.extension[0].extension[3]').answer.first().valueDate.empty() or where(linkId='Basic.extension[0].extension[3]').answer.first().valueDate > where(linkId='Basic.extension[0].extension[2]').answer.first().valueDate"
* item[0].item[0].extension[constraint][0].extension[human].valueString = "La date de soumission doit être postérieure à l’année du rapport."

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:recieved.value[x]"
* item[0].item[0].item[0].text = "Recieved Report?"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:month.value[x]"
* item[0].item[0].item[1].text = "Month"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-month-valueset"
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]#year"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:year.value[x]"
* item[0].item[0].item[2].text = "Report Year"
* item[0].item[0].item[2].type = #date
* item[0].item[0].item[2].required = false
* item[0].item[0].item[2].repeats = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-careports#Basic.extension:careports.extension:date.value[x]"
* item[0].item[0].item[3].text = "Submmision Date"
* item[0].item[0].item[3].type = #date
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false

Instance:       ihris-page-basic-careports
InstanceOf:     IhrisPage
Title:          "Careport"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-careports)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "Add Another"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/questionnaire/ihris-careports/basic-careports?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Month|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='month').valueCoding.display"
* extension[display].extension[search][2].valueString = "Recieved Report?|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='careports').valueCoding.display"
* extension[display].extension[search][3].valueString = "Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-careports').extension.where(url='date').valueCoding.display"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "CA Report"
* extension[section][0].extension[description].valueString = "CA Report details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:careports.extension:month.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "extension:careports.extension:year.value[x]:valueDate"
* extension[section][0].extension[field][3].valueString = "extension:careports.extension:careports.value[x]:valueCoding.display"
* extension[section][0].extension[field][4].valueString = "extension:careports.extension:date.value[x]:valueDate"
