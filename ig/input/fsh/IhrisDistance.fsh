Profile:        IhrisBasicDistance
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-distance
Title:          "Education History Information"
Description:    "iHRIS Profile of the Basic resource for Education History."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisDistance named distance 1..1 MS
* extension[distance].extension[fokontany].valueDecimal ^label = "Distance from Fokontany"
* extension[distance].extension[fokontany].valueDecimal 1..1 MS
* extension[distance].extension[csb].valueDecimal ^label = "Distance from CSB"
* extension[distance].extension[csb].valueDecimal 1..1 MS
* extension[distance].extension[commsite].valueDecimal ^label = "Distance from Community Site"
* extension[distance].extension[commsite].valueDecimal 1..1 MS
    
Extension:      IhrisDistance
Id:             ihris-distance
Title:          "Education History details"
* extension contains
    fokontany 1..1 MS and
    csb 1..1 MS and
    commsite 1..1 MS
* extension[fokontany].value[x] only decimal
* extension[fokontany].valueDecimal ^label = "Distance from Fokontany"
* extension[csb].value[x] only decimal
* extension[csb].valueDecimal ^label = "Distance from CSB"
* extension[commsite].value[x] only decimal
* extension[commsite].valueDecimal ^label = "Distance from Community Site"

Instance:       IhrisPractitionerWorkflowDistance
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Education History Workflow"
* description = "iHRIS workflow to record a Education History"
* id = "ihris-distance"
* url = "http://ihris.org/fhir/Questionnaire/ihris-distance"
* name = "ihris-distance"
* status = #active
* date = 2023-08-27
* purpose = "Workflow page for recording a Education History information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance"
* item[0].text = "Distance From the Centers"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:fokontany.value[x]:valueDecimal"
* item[0].item[0].text = "Distance from Fokontany"
* item[0].item[0].type = #decimal
* item[0].item[0].required = true

* item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:csb.value[x]:valueDecimal"
* item[0].item[1].text = "Distance from CSB"
* item[0].item[1].type = #decimal
* item[0].item[1].required = true

* item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:commsite.value[x]:valueDecimal"
* item[0].item[2].text = "Distance from Community Site"
* item[0].item[2].type = #decimal
* item[0].item[2].required = true


Instance:       ihris-page-basic-distance
InstanceOf:     IhrisPage
Title:          "Distance from Centers"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-distance)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/basic-distance/FIELD?edit=true"
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
* extension[display].extension[search][0].valueString = "Location|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-location-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Fokotany|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='fokotany').valueDecimal"
* extension[display].extension[search][2].valueString = "CSB|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='csb').valueDecimal"
* extension[display].extension[search][3].valueString = "Community Site|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='commsite').valueDecimal"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[display].extension[field][1].extension[path].valueString = "Basic.extension:location.value[x]:valueReference"
* extension[section][0].extension[title].valueString = "Distance from Centers"
* extension[section][0].extension[description].valueString = "Distance details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:location"
* extension[section][0].extension[field][1].valueString = "extension:distance.extension:fokotany.value[x]:valueDecimal"
* extension[section][0].extension[field][2].valueString = "extension:distance.extension:csb.value[x]:valueDecimal"
* extension[section][0].extension[field][3].valueString = "extension:distance.extension:commsite.value[x]:valueDecimal"

