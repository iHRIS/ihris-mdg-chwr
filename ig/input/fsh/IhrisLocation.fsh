Profile:        IhrisJurisdiction
Parent:         Location
Id:             ihris-jurisdiction
Title:          "Jurisdiction"
Description:    "iHRIS Profile of Locations to manage jurisdictions."
* type 1..1 MS
* type ^label = "Location Type"
* type.coding 1..1 MS
* type.coding ^label = "Location Type"
* type.coding from IhrisJurisdictionType (required)
* physicalType 1..1 MS
* physicalType ^label = "Location Physical Type"
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* partOf 0..1 MS
* partOf only Reference(IhrisJurisdiction)
* partOf ^label = "Part Of(Country/Region/District/County)"
* position 0..1 MS
* position ^label = "Co-ordinates"
* position.latitude MS
* position.latitude ^label = "Latitude"
* position.longitude MS
* position.longitude ^label = "Longitude"
* extension contains http://ihris.org/fhir/StructureDefinition/location-boundary-geojson named boundary 0..1 MS
* extension[boundary] 0..1 MS
* extension[boundary] ^label = "Location Boundary (GeoJSON)"
* extension[boundary].valueAttachment 0..1 MS
* extension[boundary].valueAttachment ^label = "Location Boundary (GeoJSON)"
* extension[boundary].valueAttachment.contentType = #application/geo+json
* extension[boundary].valueAttachment.data MS

Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Extension: LocBoundaryGeojson
Id: location-boundary-geojson
Title: "Location Boundary (GeoJSON)"
Description: "A boundary shape that represents the outside edge of the location (in GeoJSON format) This shape may have holes, and disconnected shapes."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1102"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2020-12-28T16:55:11+11:00"
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/fhir-i"
* ^jurisdiction = $m49.htm#001
* ^context.type = #element
* ^context.expression = "Location"
* . 0..1
* . ^short = "A boundary shape that represents the outside edge of the location (in GeoJSON format)"
* . ^definition = "A boundary shape that represents the outside edge of the location (in GeoJSON format) This shape may have holes, and disconnected shapes."
* . ^comment = "The format of the content is GeoJSON in both the JSON and XML formats. It will be stored in the resource using the .data property, and externally referenced via the URL property. The mimetype to be used will be 'application/geo+json'."
* value[x] 0..1
* value[x] only Attachment

Profile:        IhrisFacility
Parent:         Location
Id:             ihris-facility
Title:          "Facility"
Description:    "iHRIS Profile of Locations to manage facilities."
* type 1..1 MS
* type ^label = "Health Facility Type"
* type.coding 1..1 MS
* type.coding from IhrisFacilityTypeValueSet
* type.coding ^label = "Health Facility Type"
* physicalType 0..0 MS
// * physicalType ^label = "Facility Physical Type"
// * physicalType.coding 1..1 MS
// * physicalType.coding ^label = "Facility Physical Type"
* identifier MS
* identifier ^label = "Identifier"
* identifier.use 0..1
* identifier.value 0..1 MS
* identifier.value ^label = "Value"
* identifier.type 0..1 MS
* identifier.type ^label = "Type"
* identifier.type.coding 0..1 MS
* identifier.type.coding ^label = "Type"
* identifier.type.coding from IhrisFacilityIdentifierValueSet
* identifier.type from IhrisFacilityIdentifierValueSet
* name 1..1 MS
* name ^label = "Name of CSB"
* status 1..1 MS
* status ^label = "Active?"
* position 0..1 MS
* position ^label = "GPS Co-ordinates"
* position.longitude 1..1 MS
* position.longitude ^label = "Longitude"
* position.latitude 1..1 MS
* position.latitude ^label = "Latitude"
* partOf 1..1 MS 
* partOf only Reference(IhrisJurisdiction)
* partOf ^label = "Part Of(Country/Region/District/Municipality)"
* extension contains
        IhrisFacilityOwnership named ownership 0..1 MS  and
        IhrisFacilityOpeningYear named openingYear 0..1 MS and 
        IhrisFacilityClosureYear named closureYear 0..1 MS and
        IhrisFacilityDistanceDistrict named districtDistance 0..1 MS 
* extension[ownership] ^label = "Facility Ownership"
* extension[ownership].valueCoding 1..1 MS
* extension[openingYear] ^label = "Facility Opening Year"
* extension[openingYear].valueDate 1..1 MS
* extension[closureYear] ^label = "Facility Closure Year"
* extension[closureYear].valueDate 1..1 MS
* extension[districtDistance] ^label = "Distance from District"
* extension[districtDistance].valueDecimal 1..1 MS


Extension:      IhrisFacilityOpeningYear
Id:             ihris-facility-opening-year
Title:          "iHRIS facility opening year"
Description:    "iHRIS extension for facility opening year."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Opening Year"

Extension:      IhrisFacilityClosureYear
Id:             ihris-facility-closure-year
Title:          "iHRIS facility closure year"
Description:    "iHRIS extension for facility closure year."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Closure Year"

Extension:      IhrisFacilityDistanceDistrict
Id:             ihris-facility-distance-district
Title:          "iHRIS facility distance from district"
Description:    "iHRIS extension for facility distance from district."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only decimal
* valueDecimal 1..1 MS
* valueDecimal ^label = "Distance from District"


ValueSet:         IhrisFacilityIdentifierValueSet
Id:               ihris-facility-identifier-valueset
Title:            "iHRIS facility Identifier ValueSet"
* ^date = "2023-02-13T08:41:04.362Z"
* ^version = "0.5.0"
* codes from system IhrisFacilityIdentifierCodeSystem

CodeSystem:       IhrisFacilityIdentifierCodeSystem
Id:               ihris-facility-identifier
Title:            "Identifier Type"
* ^date = "2023-02-13T08:41:04.362Z"
* ^version = "0.5.0"
* #dhis2Id "DHIS2 ID"
* #mfrId "MFR ID"

/*Extension: IhrisFacilityInformationDetails
Id: ihris-facility-information-details
Title: "Ihris Facility Information Details"
Description: "Defines the primary resource of the facility information "
* ^context.type = #element
* ^context.expression = "Basic"
*  extension contains
        logo 0..1 MS and
        stamp 0..1 MS and
        signature 0..1 MS
* extension[logo].value[x] only Attachment
* extension[logo].valueAttachment 0..1 MS
* extension[logo].valueAttachment ^label = "Facility Logo"
* extension[stamp].value[x] only Attachment
* extension[stamp].valueAttachment 0..1 MS
* extension[stamp].valueAttachment ^label = "Facility Stamp"
* extension[signature].value[x] only Attachment
* extension[signature].valueAttachment 0..1 MS
* extension[signature].valueAttachment ^label = "Facility Authority Signature"*/

ValueSet:         IhrisFacilityOwnershipValueSet
Id:               ihris-facility-ownership
Title:            "iHRIS Facility Ownership ValueSet"
* ^date = "2022-02-23T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system IhrisFacilityOwnershipTypeCodeSystem

CodeSystem:      IhrisFacilityOwnershipTypeCodeSystem
Id:             ihris-facility-ownership-type
Title:           "Facility Ownership Type"
* ^date = "2022-02-23T08:41:04.362Z"
* ^version = "0.4.0"
* #private "Private" 
* #government "Government"
* #NGO "NGO's"

ValueSet:         IhrisJurisdictionType
Id:               ihris-jurisdiction-type
Title:            "iHRIS Jurisdiction Type ValueSet"
* ^date = "2023-06-12T08:41:04.362Z"
* ^version = "0.5.0"
* codes from system IhrisJurisdictionType

CodeSystem:      IhrisJurisdictionType
Id:              ihris-jurisdiction-type
Title:           "Jurisdiction Type"
* ^date = "2023-06-12T08:41:04.362Z"
* ^version = "0.5.0"
* #country "Country" "Country"
* #region "region" "region"
* #district "District" "District"
* #municipality "Municipality" "Municipality"

ValueSet:         IhrisFacilityTypeValueSet
Id:               ihris-facility-type
Title:            "iHRIS Facility Type ValueSet"
* ^date = "2022-02-25T08:41:04.362Z"
* ^version = "0.9.0"
* codes from system IhrisFacilityType

CodeSystem:      IhrisFacilityType
Id:              ihris-facility-type
Title:           "Facility Type"
* ^date = "2022-02-25T08:41:04.362Z"
* ^version = "0.9.0"
* #CSB1 "CSB1" "CSB1"
* #CSB2 "CSB2" "CSB2"

Extension:      IhrisFacilityOwnership
Id:             ihris-facility-ownership-prefix
Title:          "iHRIS facility ownership type"
Description:    "iHRIS extension for Personal Prefix."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Ownership"
* valueCoding from IhrisFacilityOwnershipValueSet (required)


Instance:       ihris-page-facility
InstanceOf:     IhrisPage
Title:          "Facility"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-facility)
* extension[display].extension[search][0].valueString = "Facility Name|name"
* extension[display].extension[search][1].valueString = "Facility Type|type.coding.display"
* extension[display].extension[search][2].valueString = "Report To|partOf.reference"
* extension[display].extension[search][3].valueString = "Status|status"
* extension[display].extension[search][4].valueString = "Longitute|position.longitude"
* extension[display].extension[search][5].valueString = "Latitude|position.latitude"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[filter][1].valueString = "Type|type|http://ihris.org/fhir/ValueSet/ihris-facility-type"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/facility/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "secondary"
* extension[section][0].extension[title].valueString = "Facility"
* extension[section][0].extension[description].valueString = "Facility/Duty Post details"
* extension[section][0].extension[name].valueString = "Location"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.partOf"
* extension[section][0].extension[field][3].valueString = "Location.status"
* extension[section][0].extension[field][4].valueString = "Location.position"
* extension[section][0].extension[field][5].valueString = "Location.extension:distanceDistrict"
* extension[section][0].extension[field][6].valueString = "Location.extension:ownership"
* extension[section][0].extension[field][7].valueString = "Location.extension:openingYear"
* extension[section][0].extension[field][8].valueString = "Location.extension:closureYear"
* extension[section][1].extension[title].valueString = "Other Facility Information"
* extension[section][1].extension[description].valueString = "Facility Information"
* extension[section][1].extension[name].valueString = "facilityInfo"
* extension[section][1]..extension[resource].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-facility-info)
* extension[section][1]..extension[resource].extension[searchfield].valueString = "location"
* extension[section][1]..extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-location-reference').valueReference"
* extension[section][1]..extension[resource].extension[column][0].extension[header].valueString = "Electricity"
* extension[section][1]..extension[resource].extension[column][0].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='electricity').valueCoding"
* extension[section][1]..extension[resource].extension[column][1].extension[header].valueString = "Internet"
* extension[section][1]..extension[resource].extension[column][1].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='internet').valueCoding"
* extension[section][1]..extension[resource].extension[column][2].extension[header].valueString = "Number of Fokontany"
* extension[section][1]..extension[resource].extension[column][2].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='fokontany').valueInteger"
* extension[section][1]..extension[resource].extension[column][3].extension[header].valueString = "Number of ACs"
* extension[section][1]..extension[resource].extension[column][3].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='ac').valueInteger"
* extension[section][1]..extension[resource].extension[column][4].extension[header].valueString = "Input Tools"
* extension[section][1]..extension[resource].extension[column][4].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='inputtools').valueCoding"
* extension[section][1]..extension[resource].extension[column][5].extension[header].valueString = "Number of Tablets"
* extension[section][1]..extension[resource].extension[column][5].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='tablets').valueInteger"
* extension[section][1]..extension[resource].extension[column][6].extension[header].valueString = "COSAN Order"
* extension[section][1]..extension[resource].extension[column][6].extension[field].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-facility-info').extension.where(url='cosan').valueString"


Instance:       ihris-page-location
InstanceOf:     IhrisPage
Title:          "iHRIS Location Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-jurisdiction)
* extension[display].extension[search][0].valueString = "Name|name"
* extension[display].extension[search][1].valueString = "Type|type.coding.code"
* extension[display].extension[search][2].valueString = "Physical Type|physicalType.text"
* extension[display].extension[search][3].valueString = "Jurisdiction|partOf.reference"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[filter][1].valueString = "Type|type|http://ihris.org/fhir/ValueSet/ihris-jurisdiction-type"
* extension[display].extension[filter][2].valueString = "Jurisdiction|partOf"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/location/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "secondary"
* extension[section][0].extension[title].valueString = "Geographical Location"
* extension[section][0].extension[description].valueString = "Geographical Location details"
* extension[section][0].extension[name].valueString = "Location"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.physicalType"
* extension[section][0].extension[field][3].valueString = "Location.partOf"
* extension[section][0].extension[field][4].valueString = "Location.status"
* extension[section][0].extension[field][5].valueString = "Location.position"
* extension[section][0].extension[field][6].valueString = "Location.extension:boundary"

Instance:       ihris-page-facility-type
InstanceOf:     IhrisPage
Title:          "iHRIS Facility Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-facility-type)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Facility Type"
* extension[section][0].extension[description].valueString = "Facility Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-jurisdiction-type
InstanceOf:     IhrisPage
Title:          "iHRIS Jurisdiction Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-jurisdiction-type)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Jurisdiction Type"
* extension[section][0].extension[description].valueString = "Jurisdiction Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:      ihris-page-facilityownership
InstanceOf:    IhrisPage
Title:         "iHRIS Facility Ownership Page"
Usage:         #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-facility-ownership-type)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Facility Ownership Type"
* extension[section][0].extension[description].valueString = "Facility Ownership Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-facility-identifier
InstanceOf:     IhrisPage
Title:          "iHRIS Facility Identifier Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-facility-identifier)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Facility Identifier Type"
* extension[section][0].extension[description].valueString = "Facility Identifier Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"