Profile:        IhrisBasicDistance
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-distance
Title:          "Education History Information"
Description:    "iHRIS Profile of the Basic resource for Education History."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisDistance named distance 1..1 MS
* extension[distance].extension[village].valueDecimal ^label = "Distance Domicile – Hameau le plus éloigné (km)"
* extension[distance].extension[village].valueDecimal 0..1 MS
* extension[distance].extension[csb].valueDecimal ^label = "Distance lieu de travail – CSB (km)"
* extension[distance].extension[csb].valueDecimal 0..1 MS
* extension[distance].extension[workplace].valueDecimal ^label = "Distance Domicile - lieu de travail (km)"
* extension[distance].extension[workplace].valueDecimal 0..1 MS
* extension[distance].extension[csbrc].valueDecimal ^label = "Distance CSB – AC le plus éloigné (km) - RC"
* extension[distance].extension[csbrc].valueDecimal 0..1 MS
    
Extension:      IhrisDistance
Id:             ihris-distance
Title:          "Education History details"
* extension contains
    village 0..1 MS and
    csb 0..1 MS and
    workplace 0..1 MS and
    csbrc 0..1 MS
* extension[village].value[x] only decimal
* extension[village].valueDecimal ^label = "Distance Domicile – Hameau le plus éloigné (km)"
* extension[csb].value[x] only decimal
* extension[csb].valueDecimal ^label = "Distance lieu de travail – CSB (km)"
* extension[workplace].value[x] only decimal
* extension[workplace].valueDecimal ^label = "Distance Domicile - lieu de travail (km)"
* extension[csbrc].value[x] only decimal
* extension[csbrc].valueDecimal ^label = "Distance CSB – AC le plus éloigné (km) - RC"

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

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:village.value[x]:valueDecimal"
* item[0].item[0].item[0].text = "Distance Domicile – Hameau le plus éloigné (km)"
* item[0].item[0].item[0].type = #decimal
* item[0].item[0].item[0].required = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:csb.value[x]:valueDecimal"
* item[0].item[0].item[1].text = "Distance lieu de travail – CSB (km)"
* item[0].item[0].item[1].type = #decimal
* item[0].item[0].item[1].required = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:workplace.value[x]:valueDecimal"
* item[0].item[0].item[2].text = "Distance Domicile - lieu de travail (km)"
* item[0].item[0].item[2].type = #decimal
* item[0].item[0].item[2].required = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance#Basic.extension:distance.extension:csbrc.value[x]:valueDecimal"
* item[0].item[0].item[3].text = "Distance CSB – AC le plus éloigné (km) - RC"
* item[0].item[0].item[3].type = #decimal
* item[0].item[0].item[3].required = false


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
* extension[display].extension[search][0].valueString = "Distance Domicile – Hameau le plus éloigné|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='village').valueDecimal"
* extension[display].extension[search][1].valueString = "Distance lieu de travail – CSB|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='csb').valueDecimal"
* extension[display].extension[search][2].valueString = "Distance Domicile - lieu de travail|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='workplace').valueDecimal"
* extension[display].extension[search][3].valueString = "Distance CSB – AC le plus éloigné|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-distance').extension.where(url='csbrc').valueDecimal"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Distance from Centers"
* extension[section][0].extension[description].valueString = "Distance details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:location"
* extension[section][0].extension[field][1].valueString = "extension:distance.extension:village"
* extension[section][0].extension[field][2].valueString = "extension:distance.extension:csb"
* extension[section][0].extension[field][3].valueString = "extension:distance.extension:workplace"
* extension[section][0].extension[field][4].valueString = "extension:distance.extension:csbrc"

