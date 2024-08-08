Profile:        IhrisBasicEquipment
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-equipment
Title:          "EMOIS Information"
Description:    "iHRIS Profile of the Basic resource for Equipment."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisEquipment named equipment 1..1 MS
* extension[equipment].extension[recieved].valueCoding ^label = "Recieved Equipment?"
* extension[equipment].extension[recieved].valueCoding 1..1 MS
* extension[equipment].extension[equipmenttype].valueCoding 1..1 MS
* extension[equipment].extension[equipmenttype].valueCoding ^label = "Type of Equipment"
* extension[equipment].extension[availability].valueCoding 1..1 MS
* extension[equipment].extension[availability].valueCoding ^label = "Availability"
* extension[equipment].extension[rctablet].valueCoding 1..1 MS
* extension[equipment].extension[rctablet].valueCoding ^label = "Is the RC equipped with an Android or Tablet for reporting?"
* extension[equipment].extension[actablet].valueCoding 1..1 MS
* extension[equipment].extension[actablet].valueCoding ^label = "Is the AC equipped with an Android or Tablet for managing community health programs?"
* extension[equipment].extension[date].valueDate ^label = "Date"
* extension[equipment].extension[date].valueDate 1..1 MS

Extension:      IhrisEquipment
Id:             ihris-equipment
Title:          "EMOIS details"
* extension contains
      recieved 1..1 MS and
      equipmenttype 1..* MS and
      availability 0..1 MS and
      rctablet 0..1 MS and
      actablet 0..1 MS and
      date 0..1 MS
* extension[recieved].value[x] only Coding
* extension[recieved].valueCoding ^label = "Recieved Equipment?"
* extension[recieved].valueCoding from IhrisYesNoValueSet (required)
* extension[equipmenttype].value[x] only Coding
* extension[equipmenttype].valueCoding ^label = "Type of Equipment"
* extension[equipmenttype].valueCoding from IhrisEquipmentTypeValueSet (required)
* extension[availability].value[x] only Coding
* extension[availability].valueCoding ^label = "Status of Equipment"
* extension[availability].valueCoding from IhrisAvailabilityValueSet (required)
* extension[rctablet].value[x] only Coding
* extension[rctablet].valueCoding ^label = "Is the RC equipped with an Android or Tablet for reporting?"  
* extension[rctablet].valueCoding from IhrisYesNoValueSet (required)
* extension[actablet].value[x] only Coding
* extension[actablet].valueCoding ^label = "Is the AC equipped with an Android or Tablet for managing community health programs?"
* extension[actablet].valueCoding from IhrisYesNoValueSet (required)
* extension[date].value[x] only date
* extension[date].valueDate ^label =  "Date"

CodeSystem:      IhrisEquipmentType
Id:              ihris-equipment-type
Title:           "Equipment Type"
* ^date = "2023-09-29T08:41:04.362Z"
* ^version = "0.3.0"
* #equipements "Equipements"
* #matériels "Matériels"
* #travail "Outils de travail"
* #gestion "Outils de Gestion"
* #supports "Supports"
* #intrants "Intrants"

ValueSet:         IhrisEquipmentTypeValueSet
Id:               ihris-equipment-type-valueset
Title:            "iHRIS Equipment Type ValueSet"
* ^date = "2023-10-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisEquipmentType

CodeSystem:      IhrisAvailability
Id:              ihris-availability
Title:           "Equipment Availability"
* ^date = "2023-10-29T08:41:04.362Z"
* ^version = "0.3.0"
* #good "Bon"
* #average "Moyen"
* #bad "Mauvais"

ValueSet:         IhrisAvailabilityValueSet
Id:               ihris-availability-valueset
Title:            "iHRIS Equipment Availability ValueSet"
* ^date = "2023-10-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisAvailability

Instance:       IhrisPractitionerWorkflowEquipment
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Equipment Workflow"
* description = "iHRIS workflow to record a Equipment"
* id = "ihris-equipment"
* url = "http://ihris.org/fhir/Questionnaire/ihris-equipment"
* name = "ihris-equipment"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Equipment Information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment"
* item[0].text = "EMOIS Information"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:recieved.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Recieved Equipment?"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:equipmenttype.value[x]:valueCoding"
* item[0].item[0].item[1].text = "Type of Equipment"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-equipment-type-valueset"
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false
* item[0].item[0].item[1].enableBehavior = #any
* item[0].item[0].item[1].enableWhen[0].question = "Basic.extension[0].extension[0]"
* item[0].item[0].item[1].enableWhen[0].operator = #=
* item[0].item[0].item[1].enableWhen[0].answerCoding = ihris-yesno#yes

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:availability.value[x]:valueCoding"
* item[0].item[0].item[2].text = "Status of Equipment"
* item[0].item[0].item[2].type = #choice
* item[0].item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-availability-valueset"
* item[0].item[0].item[2].required = false
* item[0].item[0].item[2].repeats = false
* item[0].item[0].item[2].enableBehavior = #any
* item[0].item[0].item[2].enableWhen[0].question = "Basic.extension[0].extension[1]"
* item[0].item[0].item[2].enableWhen[0].operator = #exists
* item[0].item[0].item[2].enableWhen[0].answerBoolean = true

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:date.value[x]:valueDate"
* item[0].item[0].item[3].text = "Date"
* item[0].item[0].item[3].type = #date
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false
* item[0].item[0].item[3].enableBehavior = #any
* item[0].item[0].item[3].enableWhen[0].question = "Basic.extension[0].extension[0]"
* item[0].item[0].item[3].enableWhen[0].operator = #=
* item[0].item[0].item[3].enableWhen[0].answerCoding = ihris-yesno#yes

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:rctablet.value[x]:valueCoding"
* item[0].item[0].item[4].text = "Is the RC equipped with an Android or Tablet for reporting?"
* item[0].item[0].item[4].type = #choice
* item[0].item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[4].required = false
* item[0].item[0].item[4].repeats = false

* item[0].item[0].item[5].linkId = "Basic.extension[0].extension[5]"
* item[0].item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment#Basic.extension:equipment.extension:actablet.value[x]:valueCoding"
* item[0].item[0].item[5].text = "Is the AC equipped with an Android or Tablet for managing community health programs?"
* item[0].item[0].item[5].type = #choice
* item[0].item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[5].required = false
* item[0].item[0].item[5].repeats = false

Instance:       ihris-page-basic-equipment
InstanceOf:     IhrisPage
Title:          "Equipment"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-equipment)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/basic-equipment/FIELD?edit=true"
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
* extension[display].extension[link][2].extension[url].valueUrl = "/questionnaire/ihris-equipment/basic-equipment?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Equipment Received|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment').extension.where(url='received').valueCoding.display"
* extension[display].extension[search][2].valueString = "Equipment Type|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment').extension.where(url='equipmenttype').valueCoding.display"
* extension[display].extension[search][3].valueString = "availability|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment').extension.where(url='availability').valueCoding.display"
* extension[display].extension[search][4].valueString = "Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment').extension.where(url='date').valueDate"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "EMOIS (Equips, Materials, Management Tools, Inputs, Supports)"
* extension[section][0].extension[description].valueString = "EMOIS details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:equipment.extension:recieved.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "extension:equipment.extension:equipmenttype.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "extension:equipment.extension:availability.value[x]:valueCoding"
* extension[section][0].extension[field][4].valueString = "extension:equipment.extension:date.value[x]:valueDate"
* extension[section][0].extension[field][5].valueString = "extension:equipment.extension:rctablet.value[x]:valueCoding"
* extension[section][0].extension[field][6].valueString = "extension:equipment.extension:actablet.value[x]:valueCoding"

Instance:       ihris-page-equipment-type
InstanceOf:     IhrisPage
Title:          "iHRIS Education Level CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-equipment-type)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Equipment Type"
* extension[section][0].extension[description].valueString = "Equipment Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"
