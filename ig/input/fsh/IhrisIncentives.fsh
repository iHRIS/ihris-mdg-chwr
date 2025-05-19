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
* extension[incentive].extension[motivation].valueCoding ^label = "Did the AC receive motivation this month?"
* extension[incentive].extension[motivation].valueCoding 1..1 MS
* extension[incentive].extension[motivationType].valueCoding ^label = "Motivation Type"
* extension[incentive].extension[motivationType].valueCoding 1..1 MS
* extension[incentive].extension[motivationMonth].valueCoding ^label = "Motivation Month"
* extension[incentive].extension[motivationMonth].valueCoding 1..1 MS
* extension[incentive].extension[motivationYear].valueDate ^label = "Motivation Year"
* extension[incentive].extension[motivationYear].valueDate 1..1 MS
* extension[incentive].extension[other].valueString ^label = "Other"
* extension[incentive].extension[other].valueString 0..1 MS


Extension:      IhrisIncentive
Id:             ihris-incentive
Title:          "Incentive details"
* extension contains
      incentive 1..* MS and
      motivation 0..1 MS and
      motivationType 0..1 MS and
      motivationMonth 0..1 MS and
      motivationYear 0..1 MS and
      other 0..1 MS
* extension[incentive].value[x] only Coding
* extension[incentive].valueCoding ^label = "Activity Packs"
* extension[incentive].valueCoding from IhrisIncentiveValueSet (required)
* extension[motivation].value[x] only Coding
* extension[motivation].valueCoding ^label =  "Motivation status"
* extension[motivation].valueCoding from IhrisYesNoValueSet (required)
* extension[motivationType].value[x] only Coding
* extension[motivationType].valueCoding ^label =  "Motivation Type"
* extension[motivationType].valueCoding from IhrisMotivationTypeValueSet (required)
* extension[motivationMonth].value[x] only Coding
* extension[motivationMonth].valueCoding ^label =  "Motivation Month"
* extension[motivationMonth].valueCoding from IhrisMonthValueSet (required)
* extension[motivationYear].value[x] only date
* extension[motivationYear].valueDate ^label =  "Motivation Year"
* extension[other].valueString ^label = "Other"
* extension[other].valueString 0..1 MS

CodeSystem:      IhrisYesNo
Id:              ihris-yesno
Title:           "Yes/No"
* ^date = "2023-09-29T08:41:04.362Z"
* ^version = "0.3.0"
* #yes "Oui" "Oui"
* #no "Non" "Non"

ValueSet:         IhrisYesNoValueSet
Id:               ihris-yesno-valueset
Title:            "iHRIS Yes-no ValueSet"
* ^date = "2023-09-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisYesNo

CodeSystem:      IhrisIncentive
Id:              ihris-incentive
Title:           "Activity Packs"
* ^date = "2023-09-29T08:41:04.362Z"
* ^version = "0.4.0"
* #basic "Paquet de Base" "Paquet de Base"
* #essential "Paquet Essentiel" "Paquet Essentiel"
* #specific "Paquet Spécifique" "Paquet Spécifique"

ValueSet:         IhrisIncentiveValueSet
Id:               ihris-incentive-valueset
Title:            "iHRIS Activity Packs ValueSet"
* ^date = "2023-09-29T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system IhrisIncentive

CodeSystem:      IhrisMotivationType
Id:              ihris-motivation-type
Title:           "Motivation Type"
* ^date = "2022-09-29T08:41:04.362Z"
* ^version = "0.1.0"
* #rf "Financière Régulière"
* #of "Financière Occasionnelle"
* #nf "Non Financière"

ValueSet:         IhrisMotivationTypeValueSet
Id:               ihris-motivation-type-valueset
Title:            "iHRIS Motivation Type ValueSet"
* ^date = "2022-09-29T08:41:04.362Z"
* ^version = "0.1.0"
* codes from system IhrisMotivationType


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
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive"
* item[0].text = "Motivation/Incentive Provided"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:incentive.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Activity Packs"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-incentive-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = true

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:motivation.value[x]:valueCoding"
* item[0].item[0].item[1].text = "Did the AC receive motivation this month?"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:motivationType.value[x]:valueCoding"
* item[0].item[0].item[2].text = "Motivation Type"
* item[0].item[0].item[2].type = #choice
* item[0].item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-motivation-type-valueset"
* item[0].item[0].item[2].required = false
* item[0].item[0].item[2].repeats = false
* item[0].item[0].item[2].enableBehavior = #any
* item[0].item[0].item[2].enableWhen[0].question = "Basic.extension[0].extension[1]"
* item[0].item[0].item[2].enableWhen[0].operator = #=
* item[0].item[0].item[2].enableWhen[0].answerCoding = ihris-yesno#yes

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:other.value[x]:valueString"
* item[0].item[0].item[3].text = "Other"
* item[0].item[0].item[3].type = #string
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false
* item[0].item[0].item[3].enableBehavior = #any
* item[0].item[0].item[3].enableWhen[0].question = "Basic.extension[0].extension[2]"
* item[0].item[0].item[3].enableWhen[0].operator = #=
* item[0].item[0].item[3].enableWhen[0].answerCoding = ihris-motivation-type#nf

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:motivationMonth.value[x]:valueCoding"
* item[0].item[0].item[4].text = "Motivation Month"
* item[0].item[0].item[4].type = #choice
* item[0].item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-month-valueset"
* item[0].item[0].item[4].required = false
* item[0].item[0].item[4].repeats = false
* item[0].item[0].item[4].enableBehavior = #any
* item[0].item[0].item[4].enableWhen[0].question = "Basic.extension[0].extension[1]"
* item[0].item[0].item[4].enableWhen[0].operator = #=
* item[0].item[0].item[4].enableWhen[0].answerCoding = ihris-yesno#yes

* item[0].item[0].item[5].linkId = "Basic.extension[0].extension[5]#year"
* item[0].item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive#Basic.extension:incentive.extension:motivationYear.value[x]:valueDate"
* item[0].item[0].item[5].text = "Motivation Year"
* item[0].item[0].item[5].type = #date
* item[0].item[0].item[5].required = false
* item[0].item[0].item[5].repeats = false

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
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Incentive"
* extension[section][0].extension[description].valueString = "Incentive details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:incentive.extension:incentive"
* extension[section][0].extension[field][2].valueString = "extension:incentive.extension:motivation"
* extension[section][0].extension[field][3].valueString = "extension:incentive.extension:motivationType"
* extension[section][0].extension[field][4].valueString = "extension:incentive.extension:other"
* extension[section][0].extension[field][5].valueString = "extension:incentive.extension:motivationMonth"
* extension[section][0].extension[field][6].valueString = "extension:incentive.extension:motivationYear"

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

Instance:      ihris-page-motivation-type
InstanceOf:    IhrisPage
Title:         "iHRIS Motivation Type CodeSystem Page"
Usage:         #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-motivation-type)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Motivation Type"
* extension[section][0].extension[description].valueString = "Motivation Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"
