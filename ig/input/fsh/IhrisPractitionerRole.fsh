Profile:        IhrisPractitionerRole
Parent:         PractitionerRole
Id:             ihris-practitioner-role
Title:          "Position"
Description:    "iHRIS profile of Practitioner Role."

* identifier 0..0 MS
* active 1..1 MS
* active ^label = "Active/Functional"
* period 1..1 MS
* period ^label = "Period of Employment"
* period ^constraint[0].key = "ihris-period-start-end"
* period ^constraint[0].severity = #error
* period ^constraint[0].human = "The end date must be after the start date"
* period ^constraint[0].expression = "end.empty() or end = '' or end >= start"
* period.start 1..1 MS
* period.start ^label = "Start Date"
* period.start ^minValueDateTime = "1950-01-01"
* period.start ^maxValueDateTime = "2040-01-01"
* period.end 0..1 MS
* period.end ^label = "End Date"
* period.end ^minValueDateTime = "1950-01-01"
* period.end ^maxValueDateTime = "2040-01-01"
* practitioner 0..1 MS
* practitioner ^label = "Health Worker"
* practitioner.reference ^label = "Health Worker"
* practitioner only Reference(IhrisPractitioner)
* code 1..1 MS
* code ^label = "Job/Type Of Community Health Worker"
* code from http://ihris.org/fhir/ValueSet/ihris-job-chwr
* code.coding 1..1 MS
* code.coding ^label = "Job"
* specialty 0..0 MS
* location 1..1 MS 
* location ^label = "Facility/Community Site"
* location only Reference(IhrisFacility)
* extension contains
    IhrisPractitionerRoleWorkPlace named workPlace 0..1 MS and
    IhrisPractitionerRoleCategory named category 0..1 MS
* extension[workPlace].valueCoding MS
* extension[workPlace] ^label = "Place of Work"
* extension[category].valueCoding MS
* extension[category] ^label = "Category"

Profile:        RoleDepartureProfile
Parent:         IhrisPractitionerBasic
Id:             role-departure-profile
Title:          "Role Departure Details"
Description:    "Role Departure Details."
* extension contains
    PractitionerRoleReference named practitioner-role-reference 1..1 MS and
    DepartureDate named departure-date 1..1 MS and
    PositionDepartureReason named position-departure-reason 1..1 MS
* extension[departure-date].valueDate MS
* extension[departure-date] ^label = "Departure Date"
* extension[position-departure-reason].valueCoding MS
* extension[position-departure-reason] ^label = "Reason for Departure"

Extension:      PractitionerRoleReference
Id:             practitioner-role-reference
Title:          "Practitioner Role Reference"
Description:    "Practitioner Role Reference"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(IhrisPractitionerRole)
* valueReference 1..1 MS
* valueReference ^label = "Practitioner Role Reference"

Extension:      DepartureDate
Id:             departure-date
Title:          "Departure Date"
Description:    "Departure Date."
* ^context.type = #element
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Departure Date"

Extension:      IhrisPractitionerRoleCategory
Id:             ihris-practitionerrole-category
Title:          "iHRIS Category"
Description:    "iHRIS extension for Position Category."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Category"
* valueCoding from IhrisCategoryValueset (required)

ValueSet:         IhrisCategoryValueset
Id:               ihris-category-valueset
Title:            "iHRIS Category ValueSet"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.5.0"
* codes from system IhrisCategoryCodeSystem

CodeSystem:      IhrisCategoryCodeSystem
Id:              ihris-category-codesystem
Title:           "Category"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.5.0"
* #base "Base"
* #essentiel "Essentiel"

Extension:      PositionDepartureReason
Id:             position-departure-reason
Title:          "Departure Reason"
Description:    "Departure Reason."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Departure Reason"
* valueCoding from IhrisReasonDepartureValueSet (required)

CodeSystem:      IhrisReasonDepartureCodeSystem
Id:              ihris-reason-departure-codesystem
Title:           "Reason For Change/Departure"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.5.0"
* #Dismissal "Démission"
* #death "Mort"
* #displacement "Déplacement"
* #illness "Maladie"
* #elective "Mandat Electif"
* #employed "Recrutement en tant que Salarié"
* #others "Autre"

ValueSet:         IhrisReasonDepartureValueSet
Id:               ihris-reason-departure-valueset
Title:            "iHRIS Reason Departure ValueSet"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.5.0"
* codes from system IhrisReasonDepartureCodeSystem

/*Extension:      IhrisPractitionerRoleStartYear
Id:             ihris-practitionerrole-start-year
Title:          "iHRIS Start Year"
Description:    "iHRIS extension for Job Description Start Year."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only date
* valueDate 0..1 MS
* valueDate ^label = "Start Year"*/

Extension:      IhrisPractitionerRoleCommune
Id:             ihris-practitionerrole-commune
Title:          "iHRIS Commune"
Description:    "iHRIS extension for Position Commune."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Reference
* valueReference only Reference(IhrisJurisdiction)
* valueReference ^label = "Commune"

CodeSystem:     IhrisJobCodeSystem
Id:             ihris-job-chwr
Title:          "Job Titles/CHW Types"
Description:    "iHRIS Code System for Job Titles/CHW Types."
* ^date = "2024-02-10T08:41:04.362Z"
* ^version = "0.2.0"
* #CR "Relais Communautaire"
* #AC "Agent Communautaire"

ValueSet:         IhrisJobValueset
Id:               ihris-job-chwr
Title:            "Job Titles"
Description:      "iHRIS ValueSet for: iHRISJob"
* ^date = "2024-07-10T08:41:04.362Z"
* ^version = "0.8.0"
* codes from system IhrisJobCodeSystem

Extension: IhrisPractitionerRoleWorkPlace
Id: ihris-practitionerrole-workplace
Title: "iHRIS Work Place"
Description: "iHRIS extension for Work Place."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Place of Work"
* valueCoding from IhrisWorkPlaceValueset

ValueSet:         IhrisWorkPlaceValueset
Id:               ihris-workplace
Title:            "Work Place"
Description:      "iHRIS ValueSet for: iHRISWorkPlace"
* ^date = "2024-03-10T08:41:04.362Z"
* ^version = "0.2.0"
* codes from system IhrisWorkPlaceCodeSystem

CodeSystem:     IhrisWorkPlaceCodeSystem
Id:             ihris-workplace
Title:          "Work Place"
Description:    "iHRIS Code System for Work Place."
* ^date = "2024-03-10T08:41:04.362Z"
* ^version = "0.2.0"
* #csb "CSB"
* #fokontany "Site Communautaire"
* #home "Domicile"

Instance:       ihris-page-practitionerrole
InstanceOf:     IhrisPage
Title:          "iHRIS PractitionerRole Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner-role)
* extension[display].extension[link][0].extension[field].valueString = "PractitionerRole.practitioner.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Practitioner"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Job|PractitionerRole.code[0].coding[0]"
* extension[display].extension[search][1].valueString = "Start Date|PractitionerRole.period.start"
* extension[display].extension[search][2].valueString = "Practitioner|PractitionerRole.practitioner"
* extension[display].extension[search][3].valueString = "Facility|PractitionerRole.location"
* extension[display].extension[search][3].valueString = "Active|PractitionerRole.active"
* extension[display].extension[filter][0].valueString = "Job|role|http://ihris.org/fhir/ValueSet/ihris-job"
* extension[display].extension[field][0].extension[path].valueString = "PractitionerRole.practitioner"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Position"
* extension[section][0].extension[description].valueString = "Position details"
* extension[section][0].extension[name].valueString = "PractitionerRole"
* extension[section][0].extension[field][0].valueString = "PractitionerRole.code"
* extension[section][0].extension[field][1].valueString = "PractitionerRole.practitioner"
// * extension[section][0].extension[field][2].valueString = "PractitionerRole.location"
* extension[section][0].extension[field][2].valueString = "PractitionerRole.period"
* extension[section][0].extension[field][3].valueString = "PractitionerRole.active"
* extension[section][0].extension[field][4].valueString = "PractitionerRole.extension:commune"
* extension[section][0].extension[field][5].valueString = "PractitionerRole.extension:category"
* extension[section][0].extension[field][6].valueString = "PractitionerRole.extension:workPlace"
* extension[section][1].extension[title].valueString = "Departure Reason"
* extension[section][1].extension[description].valueString = "Departure Reason"
* extension[section][1].extension[name].valueString = "departurereason"
* extension[section][1].extension[field][0].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference').valueReference.reference"
* extension[section][1].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/role-departure-profile)
* extension[section][1].extension[resource].extension[searchfield].valueString = "practitionerrole"
* extension[section][1].extension[resource].extension[searchfieldtarget].valueString = "PractitionerRole"
* extension[section][1].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference').valueReference.reference"
* extension[section][1].extension[resource].extension[column][0].extension[header].valueString = "Reason"
* extension[section][1].extension[resource].extension[column][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/position-departure-reason').valueCoding.display"
* extension[section][1].extension[resource].extension[column][1].extension[header].valueString = "Departure Date"
* extension[section][1].extension[resource].extension[column][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/departure-date').valueDate"

Instance:       ihris-page-job
InstanceOf:     IhrisPage
Title:          "iHRIS Job CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-job-chwr)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Job"
* extension[section][0].extension[description].valueString = "Job Titles"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"

Instance:       ihris-page-workplace
InstanceOf:     IhrisPage
Title:          "iHRIS Work Place CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-workplace)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Place Of Work"
* extension[section][0].extension[description].valueString = "Place Of Work"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"

Instance:       ihris-page-category
InstanceOf:     IhrisPage
Title:          "iHRIS Category CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-category-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Category"
* extension[section][0].extension[description].valueString = "Category"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"

Instance:       IhrisPractitionerWorkflowEndRole
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS End Role Workflow"
* description = "iHRIS workflow to end a current role/job"
* id = "ihris-endrole"
* url = "http://ihris.org/fhir/Questionnaire/ihris-endrole"
* name = "ihris-endrole"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for ending a role/job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[0].text = "End Current Appointment"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.period.end"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[0].text = "End Date"
* item[0].item[0].type = #date
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[1].linkId = "Basic[0]"
* item[1].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile"
* item[1].text = "Change Reasons Information"
* item[1].type = #group

* item[1].item[0].linkId = "Basic[0].extension[0]"
* item[1].item[0].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile#Basic.extension:position-departure-reason.value[x]:valueCoding"
* item[1].item[0].text = "Reason for change"
* item[1].item[0].type = #choice
* item[1].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-reason-departure-valueset"
* item[1].item[0].required = true
* item[1].item[0].repeats = false

Instance: basic-practitioner-role
InstanceOf: SearchParameter
Usage: #definition
* url = "http://ihris.org/fhir/SearchParameter/basic-practitioner-role"
* name = "Search Parameter on an practitioner role extension on Basic resources"
* status = #active
* description = "Search by practitioner role for a Basic resource."
* code = #practitionerrole
* base = #Basic
* type = #reference
* expression = "Basic.extension('http://ihris.org/fhir/StructureDefinition/practitioner-role-reference')"
* xpath = "f:Basic/f:extension[@url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference']"
* xpathUsage = #normal
* target = #PractitionerRole