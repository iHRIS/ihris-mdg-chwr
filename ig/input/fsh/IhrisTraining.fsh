Profile:        IhrisBasicTraining
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-training
Title:          "iHRIS Training"
Description:    "iHRIS Profile of the Basic resource for a  Training."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisTraining named training 0..1 MS
* extension[training].extension[provider] ^label = "Training Provider"
* extension[training].extension[provider].valueString 0..1 MS
* extension[training].extension[provider].valueString ^label = "Training Provider"
* extension[training].extension[training] ^label = "Training Type/Recived"
* extension[training].extension[training].valueCoding 0..1 MS
* extension[training].extension[training].valueCoding ^label = "Training Recived"
* extension[training].extension[date] ^label = "Training Date"
* extension[training].extension[date].valueDate 1..1 MS
* extension[training].extension[date].valueDate ^label = "Training Date"


Extension:      IhrisTraining
Id:             ihris-training
Title:          "Training details"
* extension contains
   provider 0..1 MS and
   training 0..* MS and
   date 0..1 MS 
* extension[provider].value[x] only string
* extension[provider].valueString 0..1 MS
* extension[provider].valueString ^label = "Provider"
* extension[training].value[x] only Coding
* extension[training].valueCoding 0..1 MS
* extension[training].valueCoding from IhrisTrainingValueSet (required)
* extension[training].valueCoding ^label = "Training Recived"
* extension[date].value[x] only date
* extension[date].valueDate 0..1 MS
* extension[date].valueDate ^label = "Training Date"


Instance:       ihris-page-basic-training
InstanceOf:     IhrisPage
Title:          "iHRIS Basic  Training Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-training)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Provider|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-training').extension.where(url='provider').valueString"
* extension[display].extension[search][1].valueString = "Training|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-training').extension.where(url='training').valueCoding"
* extension[display].extension[search][2].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][3].valueString = "Training Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-training').extension.where(url='date').valueDate"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:training.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Training"
* extension[section][0].extension[description].valueString = "Training details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:training.extension:provider.value[x]:valueString"
* extension[section][0].extension[field][2].valueString = "Basic.extension:training.extension:training.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "Basic.extension:training.extension:date.value[x]:valueDate"

Instance:       ihris-page-training
InstanceOf:     IhrisPage
Title:          "iHRIS Training CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-training-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Training Type/Category"
* extension[section][0].extension[description].valueString = "Training"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

CodeSystem:      IhrisTrainingCodeSystem
Id:              ihris-training-codesystem
Title:           "Training"
* ^version = "0.2.0"

ValueSet:         IhrisTrainingValueSet
Id:               ihris-training-valueset
Title:            "iHRIS  Training ValueSet"
* ^version = "0.2.0"
* codes from system IhrisTrainingCodeSystem

Instance:       IhrisPractitionerWorkflowTraining
InstanceOf:     Questionnaire
Usage:          #definition
* title = "iHRIS  Training Workflow"
* description = "iHRIS workflow to record a  Training"
* id = "ihris-training"
* url = "http://ihris.org/fhir/Questionnaire/ihris-training"
* name = "ihris-training"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a  Training Information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-training"
* item[0].text = "Training Information"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-training#Basic.extension:training.extension:provider.value[x]:valueString"
* item[0].item[0].text = "Training Provider"
* item[0].item[0].type = #string
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-training#Basic.extension:training.extension:training.value[x]:valueCoding"
* item[0].item[1].text = "Training Recieved"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-training-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-training#Basic.extension:training.extension:date.value[x]:valueDate"
* item[0].item[2].text = "Training Date"
* item[0].item[2].type = #date
* item[0].item[2].required = true
* item[0].item[2].repeats = false
