Profile:        IhrisBasicIncentive
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-incentive
Title:          "Incentive Information"
Description:    "iHRIS Profile of the Basic resource for Incentive."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisIncentive named incentive 1..1 MS
* extension[incentive].extension[incentive].valueCoding ^label = "Activity Packs"
* extension[incentive].extension[incentive].valueCoding 1..1 MS
* extension[incentive].extension[motivation].valueCoding ^label = "Monthly Motivation status"
* extension[incentive].extension[motivation].valueCoding 1..1 MS


Extension:      IhrisIncentive
Id:             ihris-incentive
Title:          "Incentive details"
* extension contains
      incentive 1..1 MS and
      motivation 0..1 MS
* extension[incentive].value[x] only Coding
* extension[incentive].valueCoding ^label = "Activity Packs"
* extension[incentive].valueCoding from IhrisIncentiveValueSet (required)
* extension[motivation].value[x] only Coding
* extension[motivation].valueCoding ^label =  "Monthly Motivation status"
* extension[motivation].valueCoding from IhrisYesNoValueSet (required)

CodeSystem:      IhrisYesNo
Id:              ihris-yesno
Title:           "Yes/No"
* ^date = "2020-09-29T08:41:04.362Z"
* #yes "Yes" "Yes"
* #no "No" "No"

ValueSet:         IhrisYesNoValueSet
Id:               ihris-yesno-valueset
Title:            "iHRIS Yes-no ValueSet"
* ^date = "2020-09-29T08:41:04.362Z"
* ^version = "0.2.0"
* codes from system IhrisYesNo

CodeSystem:      IhrisIncentive
Id:              ihris-incentive
Title:           "Activity Packs"
* ^date = "2020-09-29T08:41:04.362Z"
* #basic "Basic" "Basic"
* #essential "Essential" "Essential"
* #specific "Specific" "Specific"

ValueSet:         IhrisIncentiveValueSet
Id:               ihris-incentive-valueset
Title:            "iHRIS Activity Packs ValueSet"
* ^date = "2020-09-29T08:41:04.362Z"
* ^version = "0.2.0"
* codes from system IhrisIncentive

Instance:       IhrisPractitionerWorkflowIncentive
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Incentive Workflow"
* description = "iHRIS workflow to record a Incentive"
* id = "ihris-incentive"
* url = "http://ihris.org/fhir/Questionnaire/ihris-incentive"
* name = "ihris-incentive"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Incentive information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.id"
* item[0].text = "Incentive"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:incentive.value[x]:valueCoding"
* item[0].item[0].text = "Activity Packs"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-incentive-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[0].extension[2]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:motivation.value[x]:valueCoding"
* item[0].item[1].text = "Monthly motivation status"
* item[0].item[1].type = #choice
* item[0].item[1].required = false
* item[0].item[1].repeats = false

Instance:       ihris-page-basic-incentive
InstanceOf:     IhrisPage
Title:          "Incentive"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-incentive)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/basic-incentive/FIELD?edit=true"
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
// * extension[display].extension[link][2].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
// * extension[display].extension[link][2].extension[text].valueString = "Add Another"
// * extension[display].extension[link][2].extension[button].valueBoolean = true
// * extension[display].extension[link][2].extension[icon].valueString = "mdi-account-arrow-right"
// * extension[display].extension[link][2].extension[url].valueUrl = "/questionnaire/ihris-incentive/basic-incentive?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Activity Packs|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='incentive').valueCoding.display"
* extension[display].extension[search][1].valueString = "Motivation Status|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-incentive').extension.where(url='motivation').valueCoding.display"
* extension[section][0].extension[title].valueString = "Incentive"
* extension[section][0].extension[description].valueString = "Incentive details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:incentive.extension:incentive.value[x]:valueCoding.display"
* extension[section][0].extension[field][2].valueString = "extension:incentive.extension:motivation.value[x]:valueBoolean"

Instance:       ihris-page-incentive
InstanceOf:     IhrisPage
Title:          "iHRIS Incentive CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-incentive)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Activity Packs"
* extension[section][0].extension[description].valueString = "Activity Packs"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"
