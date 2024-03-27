Profile:        IhrisLocationBasic
Parent:         Basic
Id:             ihris-location-basic
Title:          "iHRIS Location Basic"
Description:    "iHRIS Profile of the Basic resource to refer to a Location."
* code = IhrisResourceCodeSystem#location-link
* extension contains
      IhrisLocationReference named location 1..1 MS

Extension:      IhrisLocationReference
Id:             ihris-location-reference
Title:          "iHRIS Location Reference"
Description:    "iHRIS Location Reference to link Basic resource to a Location."
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference 
* valueReference only Reference(IhrisFacility)
* valueReference ^label = "Location"

Instance: basic-location
InstanceOf: SearchParameter
Usage: #definition
* url = "http://ihris.org/fhir/SearchParameter/basic-location"
* name = "Search Parameter on an location extension on Basic resources"
* status = #active
* description = "Search by location for a Basic resource."
* code = #location
* base = #Basic
* type = #reference
* expression = "Basic.extension('http://ihris.org/fhir/StructureDefinition/ihris-location-reference')"
* xpath = "f:Basic/f:extension[@url='http://ihris.org/fhir/StructureDefinition/ihris-location-reference']"
* xpathUsage = #normal
* target = #Location
