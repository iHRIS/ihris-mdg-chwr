Profile:        IhrisBasicFacilityInfo
Parent:         IhrisLocationBasic
Id:             ihris-basic-facility-info
Title:          "iHRIS FacilityInfo"
Description:    "iHRIS Profile of the Basic resource for a facility information"
* extension[location].valueReference 1..1 MS
* extension[location].valueReference ^label = "Name of CSB"
* extension contains
    IhrisFacilityInfo named facilityInfo 0..1 MS
* extension[facilityInfo].extension[electricity].valueCoding 1..1 MS
* extension[facilityInfo].extension[electricity] ^label = "Electricity Availability (Yes/No)"
* extension[facilityInfo].extension[internet].valueCoding 1..1 MS
* extension[facilityInfo].extension[internet] ^label = "Internet Network Availability (Yes/No)"
* extension[facilityInfo].extension[fokontany] ^label = "Number of Fokontany attached to the CSB"
* extension[facilityInfo].extension[fokontany].valueInteger 0..1 MS
* extension[facilityInfo].extension[ac] ^label = "Number of ACs"
* extension[facilityInfo].extension[ac].valueInteger 0..1 MS
* extension[facilityInfo].extension[inputtools].valueCoding 1..1 MS
* extension[facilityInfo].extension[inputtools] ^label = "Availability of input tools (Yes/No)"
* extension[facilityInfo].extension[tablets] ^label = "Number of Tablets"
* extension[facilityInfo].extension[tablets].valueInteger 0..1 MS
* extension[facilityInfo].extension[cosan] ^label = "COSAN Order"
* extension[facilityInfo].extension[cosan].valueString 0..1 MS


Extension:      IhrisFacilityInfo
Id:             ihris-facility-info
Title:          "Facility details"
* extension contains
    electricity 1..1 MS and
    internet 1..1 MS and
    fokontany 0..1 MS and
    ac 0..1 MS and
    inputtools 1..1 MS and
    tablets 0..1 MS and
    cosan 0..1 MS
* extension[electricity].value[x] only Coding
* extension[electricity].valueCoding 1..1 MS
* extension[electricity] ^label = "Electricity Availability (Yes/No)"
* extension[electricity].valueCoding from IhrisYesNoValueSet (required)
* extension[internet].valueCoding 1..1 MS
* extension[internet].valueCoding from IhrisYesNoValueSet (required)
* extension[internet].value[x] only Coding
* extension[internet] ^label = "Internet Network Availability (Yes/No)"
* extension[fokontany] ^label = "Number of Fokontany attached to the CSB"
* extension[fokontany].valueInteger 0..1 MS
* extension[fokontany].value[x] only integer
* extension[ac] ^label = "Number of ACs"
* extension[ac].valueInteger 0..1 MS
* extension[ac].value[x] only integer
* extension[inputtools].valueCoding 1..1 MS
* extension[inputtools].valueCoding from IhrisYesNoValueSet (required)
* extension[inputtools].value[x] only Coding
* extension[inputtools] ^label = "Availability of input tools (Yes/No)"
* extension[tablets] ^label = "Number of Tablets"
* extension[tablets].valueInteger 0..1 MS
* extension[tablets].value[x] only integer
* extension[cosan] ^label = "COSAN Order"
* extension[cosan].valueString 0..1 MS
* extension[cosan].value[x] only string


Instance:       ihris-page-facilityinfo
InstanceOf:     IhrisPage
Title:          "iHRIS Basic FacilityInfo Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-facility-info)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-location-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Facility"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/facility/FIELD"
* extension[display].extension[search][0].valueString = "Facility|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-location-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Electricity|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='electricity').valueCoding.display"
* extension[display].extension[search][2].valueString = "Internet|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='internet').valueCoding.display"
* extension[display].extension[search][3].valueString = "Fokontany|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='fokontany').valueInteger"
* extension[display].extension[search][4].valueString = "AC|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='ac').valueInteger"
* extension[display].extension[search][5].valueString = "Input Tools|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='inputtools').valueCoding.display"
* extension[display].extension[search][6].valueString = "Tablets|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='tablets').valueInteger"
* extension[display].extension[search][7].valueString = "COSAN|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='cosan').valueString"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:location.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Facility Information"
* extension[section][0].extension[description].valueString = "Facility details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:location"
* extension[section][0].extension[field][1].valueString = "Basic.extension:facilityInfo.extension:electricity.value[x]:valueCoding.display"
* extension[section][0].extension[field][2].valueString = "Basic.extension:facilityInfo.extension:internet.value[x]:valueCoding.display"
* extension[section][0].extension[field][3].valueString = "Basic.extension:facilityInfo.extension:fokontany.value[x]:valueInteger"
* extension[section][0].extension[field][4].valueString = "Basic.extension:facilityInfo.extension:ac.value[x]:valueInteger"
* extension[section][0].extension[field][5].valueString = "Basic.extension:facilityInfo.extension:inputtools.value[x]:valueCoding.display"
* extension[section][0].extension[field][6].valueString = "Basic.extension:facilityInfo.extension:tablets.value[x]:valueInteger"
* extension[section][0].extension[field][7].valueString = "Basic.extension:facilityInfo.extension:cosan.value[x]:valueString"

Instance:       IhrisLocationWorkflowFacilityInfo
InstanceOf:     Questionnaire
Usage:          #definition
* title = "iHRIS FacilityInfo Workflow"
* description = "iHRIS workflow to record a FacilityInfo"
* id = "ihris-facilityinfo"
* url = "http://ihris.org/fhir/Questionnaire/ihris-facilityinfo"
* name = "ihris-facilityinfo"
* status = #active
* date = 2023-08-27
* purpose = "Workflow page for recording a FacilityInfo Information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info"
* item[0].text = "Facility Information"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:electricity.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Electricity Availability (Yes/No)"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[0].required = true

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:internet.value[x]:valueCoding"
* item[0].item[0].item[1].text = "Internet Network Availability (Yes/No)"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[1].required = true

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:fokontany.value[x]:valueInteger"
* item[0].item[0].item[2].text = "Number of Fokontany attached to the CSB"
* item[0].item[0].item[2].type = #integer
* item[0].item[0].item[2].required = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:ac.value[x]:valueInteger"
* item[0].item[0].item[3].text = "Number of ACs"
* item[0].item[0].item[3].type = #integer
* item[0].item[0].item[3].required = false

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:inputtools.value[x]:valueCoding"
* item[0].item[0].item[4].text = "Availability of input tools (Yes/No)"
* item[0].item[0].item[4].type = #choice
* item[0].item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-yesno-valueset"
* item[0].item[0].item[4].required = true

* item[0].item[0].item[5].linkId = "Basic.extension[0].extension[5]"
* item[0].item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:tablets.value[x]:valueInteger"
* item[0].item[0].item[5].text = "Number of Tablets"
* item[0].item[0].item[5].type = #integer
* item[0].item[0].item[5].required = false

* item[0].item[0].item[6].linkId = "Basic.extension[0].extension[6]"
* item[0].item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-facility-info#Basic.extension:facilityInfo.extension:cosan.value[x]:valueString"
* item[0].item[0].item[6].text = "COSAN Order"
* item[0].item[0].item[6].type = #string
* item[0].item[0].item[6].required = false