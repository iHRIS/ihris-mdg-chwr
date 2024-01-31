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
* period.start ^maxValueDateTime = "2030-01-01"
* period.end 0..1 MS
* period.end ^label = "End Date"
* period.end ^minValueDateTime = "1950-01-01"
* period.end ^maxValueDateTime = "2030-01-01"
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
    IhrisPractitionerRoleStartYear named startYear 0..1 MS 
* extension[startYear].valueInteger MS
* extension[startYear] ^label = "Year of commissioning as AC"

Extension:      IhrisPractitionerRoleStartYear
Id:             ihris-practitionerrole-start-year
Title:          "iHRIS Start Year"
Description:    "iHRIS extension for Job Description Start Year."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only integer
* valueInteger 0..1 MS
* valueInteger ^label = "Start Year"

CodeSystem:     IhrisJobCodeSystem
Id:             ihris-job-chwr
Title:          "Job Titles/CHW Types"
Description:    "iHRIS Code System for Job Titles/CHW Types."
* ^date = "2024-01-10T08:41:04.362Z"
* ^version = "0.1.0"
* #CR "Community Relay"
* #ACC "AC Commcare"

ValueSet:         IhrisJobValueset
Id:               ihris-job-chwr
Title:            "Job Titles"
Description:      "iHRIS ValueSet for: iHRISJob"
* ^date = "2023-07-15T08:41:04.362Z"
* ^version = "0.6.0"
* codes from system IhrisJobCodeSystem

Instance:       ihris-page-practitionerrole
InstanceOf:     IhrisPage
Title:          "iHRIS PractitionerRole Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner-role)
* extension[display].extension[link].extension[field].valueString = "PractitionerRole.practitioner.reference"
* extension[display].extension[link].extension[text].valueString = "View Practitioner"
* extension[display].extension[link].extension[button].valueBoolean = true
* extension[display].extension[link].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Job|PractitionerRole.code[0].coding[0]"
* extension[display].extension[search][1].valueString = "Start Date|PractitionerRole.period.start"
* extension[display].extension[search][2].valueString = "Practitioner|PractitionerRole.practitioner"
* extension[display].extension[search][3].valueString = "Facility|PractitionerRole.location"
* extension[display].extension[search][3].valueString = "Active|PractitionerRole.active"
* extension[display].extension[filter][0].valueString = "Job|role|http://ihris.org/fhir/ValueSet/ihris-job"
* extension[section][0].extension[title].valueString = "Position"
* extension[section][0].extension[description].valueString = "Position details"
* extension[section][0].extension[name].valueString = "PractitionerRole"
* extension[section][0].extension[field][0].valueString = "PractitionerRole.code"
* extension[section][0].extension[field][1].valueString = "PractitionerRole.practitioner"
* extension[section][0].extension[field][2].valueString = "PractitionerRole.location"
* extension[section][0].extension[field][3].valueString = "PractitionerRole.period"
* extension[section][0].extension[field][4].valueString = "PractitionerRole.active"
* extension[section][0].extension[field][5].valueString = "PractitionerRole.extension:startYear.value[x]:valueInteger"

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
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.id"
* item[0].text = "End Appointment"
* item[0].type = #group

* item[0].item[0].linkId = "PracitionerRole.period.end"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PracitionerRole.period.end"
* item[0].item[0].text = "End Date"
* item[0].item[0].type = #date
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "PracitionerRole.active"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PracitionerRole.active"
* item[0].item[1].text = "Status"
* item[0].item[1].type = #boolean
* item[0].item[1].required = true