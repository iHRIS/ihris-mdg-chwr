Instance:       ihris-role-hrmanager
InstanceOf:     IhrisRole
Title:          "iHRIS HR Manager Role"
Usage:         #example
* extension[name].valueString = "HR Manager Role"
* extension[primary].valueBoolean = true
* extension[role][0].valueReference = Reference(Basic/ihris-role-open)
* extension[task][0].valueReference = Reference(Basic/ihris-task-navigation-profile)
* extension[task][1].valueReference = Reference(Basic/ihris-task-read-questionnaire-resource)
* extension[task][2].valueReference = Reference(Basic/ihris-task-navigation-profile)
* extension[task][3].valueReference = Reference(Basic/ihris-task-navigation-password)
* extension[task][4].valueReference = Reference(Basic/ihris-task-read-ihris-page-practitioner)
* extension[task][5].valueReference = Reference(Basic/ihris-task-read-ihris-page-practitioner-role)
* extension[task][6].valueReference = Reference(Basic/ihris-task-read-code-system)
* extension[task][7].valueReference = Reference(Basic/ihris-task-read-value-set)
* extension[task][8].valueReference = Reference(Basic/ihris-task-read-location-resource)
* extension[task][9].valueReference = Reference(Basic/ihris-task-write-practitioner-resource)
* extension[task][10].valueReference = Reference(Basic/ihris-task-write-practitioner-role-resource)
* extension[task][11].valueReference = Reference(Basic/ihris-task-write-questionnaire-response-resource)
* extension[task][12].valueReference = Reference(Basic/ihris-task-write-questionnaire-resource)
* extension[task][13].valueReference = Reference(Basic/ihris-task-write-basic-resource)
* extension[task][14].valueReference = Reference(Basic/ihris-task-write-questionnaire-change-password)
* extension[task][15].valueReference = Reference(Basic/ihris-task-write-person-resource)
* extension[task][16].valueReference = Reference(Basic/ihris-task-section-contact)
* extension[task][17].valueReference = Reference(Basic/ihris-task-write-document-reference)
* extension[task][18].valueReference = Reference(Basic/ihris-task-navigation-profile)
* extension[task][19].valueReference = Reference(Basic/ihris-task-navigation-dashboard)
* extension[task][20].valueReference = Reference(Basic/ihris-task-navigation-person)
* extension[task][21].valueReference = Reference(Basic/ihris-task-navigation-person-personSearch)
* extension[task][22].valueReference = Reference(Basic/ihris-task-navigation-person-personAdd)
* extension[task][23].valueReference = Reference(Basic/ihris-task-navigation-position)
* extension[task][24].valueReference = Reference(Basic/ihris-task-navigation-position-positionSearch)
* extension[task][25].valueReference = Reference(Basic/ihris-task-navigation-position-positionAdd)
* extension[task][26].valueReference = Reference(Basic/ihris-task-navigation-location)
* extension[task][27].valueReference = Reference(Basic/ihris-task-navigation-location-locationSearch)
* extension[task][28].valueReference = Reference(Basic/ihris-task-navigation-location-facilitySearch)
* extension[task][29].valueReference = Reference(Basic/ihris-task-navigation-database)
* extension[task][30].valueReference = Reference(Basic/ihris-task-navigation-database-facilityLists)
* extension[task][31].valueReference = Reference(Basic/ihris-task-navigation-facilityLists-type)
* extension[task][32].valueReference = Reference(Basic/ihris-task-navigation-facilityLists-juriType)
* extension[task][33].valueReference = Reference(Basic/ihris-task-navigation-facilityLists-ownership)
* extension[task][34].valueReference = Reference(Basic/ihris-task-navigation-facilityLists-identifier)
* extension[task][35].valueReference = Reference(Basic/ihris-task-navigation-facilityLists-workplace)
* extension[task][36].valueReference = Reference(Basic/ihris-task-navigation-database-jobLists)
* extension[task][37].valueReference = Reference(Basic/ihris-task-navigation-jobLists-job)
* extension[task][38].valueReference = Reference(Basic/ihris-task-navigation-jobLists-category)
* extension[task][39].valueReference = Reference(Basic/ihris-task-navigation-database-eduLists)
* extension[task][40].valueReference = Reference(Basic/ihris-task-navigation-eduLists-education-level)
* extension[task][41].valueReference = Reference(Basic/ihris-task-navigation-eduLists-training)
* extension[task][42].valueReference = Reference(Basic/ihris-task-navigation-database-otherLists)
* extension[task][43].valueReference = Reference(Basic/ihris-task-navigation-otherLists-identifier)
* extension[task][44].valueReference = Reference(Basic/ihris-task-navigation-otherLists-incentive)
* extension[task][45].valueReference = Reference(Basic/ihris-task-navigation-otherLists-maritalStatus)
* extension[task][46].valueReference = Reference(Basic/ihris-task-navigation-otherLists-relation)
* extension[task][47].valueReference = Reference(Basic/ihris-task-navigation-otherLists-motivationTypes)
* extension[task][48].valueReference = Reference(Basic/ihris-task-navigation-otherLists-equipmenttype)
* extension[task][49].valueReference = Reference(Basic/ihris-task-navigation-otherLists-gender)
* extension[task][50].valueReference = Reference(Basic/ihris-task-navigation-reports)
* extension[task][51].valueReference = Reference(Basic/ihris-task-navigation-reports-directorate)
* extension[task][52].valueReference = Reference(Basic/ihris-task-navigation-reports-staff)
* extension[task][53].valueReference = Reference(Basic/ihris-task-navigation-reports-training)
* extension[task][54].valueReference = Reference(Basic/ihris-task-navigation-reports-incentive)
* extension[task][55].valueReference = Reference(Basic/ihris-task-navigation-reports-distance)
* extension[task][56].valueReference = Reference(Basic/ihris-task-navigation-reports-equipment)
* extension[task][57].valueReference = Reference(Basic/ihris-task-navigation-reports-supervision)
* extension[task][58].valueReference = Reference(Basic/ihris-task-navigation-password)
* extension[task][59].valueReference = Reference(Basic/ihris-task-navigation-ihris-apps-list)
* extension[task][60].valueReference = Reference(Basic/ihris-task-section-distance)
* extension[task][61].valueReference = Reference(Basic/ihris-task-section-education-history)
* extension[task][62].valueReference = Reference(Basic/ihris-task-section-incentive)
* extension[task][63].valueReference = Reference(Basic/ihris-task-section-training)
* extension[task][64].valueReference = Reference(Basic/ihris-task-section-careports)
* extension[task][65].valueReference = Reference(Basic/ihris-task-section-equipment)
* extension[task][66].valueReference = Reference(Basic/ihris-task-section-supervision)
* extension[task][67].valueReference = Reference(Basic/ihris-task-section-emergency)
* extension[task][68].valueReference = Reference(Basic/ihris-task-section-practitioner)
* extension[task][69].valueReference = Reference(Basic/ihris-task-section-identifiers)
* extension[task][70].valueReference = Reference(Basic/ihris-task-section-position)

Instance:   ihris-task-read-navigation-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Read navigation resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "read-navigation-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation


Instance:       ihris-task-write-navigation-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Write navigation resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "write-navigation-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource]..valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-read-navigation-resource)

Instance:   ihris-task-read-section-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Read section resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "read-section-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section


Instance:       ihris-task-write-section-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Write section resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "write-section-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource]..valueCode = IhrisTaskResourceCodeSystem#section
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-read-section-resource)

Instance:   ihris-task-read-special-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Read special resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "read-special-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special


Instance:       ihris-task-write-special-resource
InstanceOf:     IhrisTask
Title:          "iHRIS Task To Write special resource"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "write-special-resource"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource]..valueCode = IhrisTaskResourceCodeSystem#special
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-read-special-resource)


Instance:       ihris-task-read-ihris-page-auditevent
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Auditevent Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Auditevent Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-auditevent"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-auditevent)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitionerrole)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-location)

Instance:       ihris-task-read-ihris-page-basic-careports
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Careports Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Careports Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-careports"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-distance
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Distance Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Distance Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-distance"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-education-history
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Education History Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Education History Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-education-history"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-equipment
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Equipment Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Equipment Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-equipment"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-incentive
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Incentive Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Incentive Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-incentive"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-supervision
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Supervision Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Supervision Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-supervision"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-basic-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Basic Training Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Basic Training Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-basic-training"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-category
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Category Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Category Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-category"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-education-level
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Education Level Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Education Level Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-education-level"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-emergency
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Emergency Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Emergency Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-emergency"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-equipment-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Equipment Type Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Equipment Type Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-equipment-type"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-facility-identifier
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Facility Identifier Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Facility Identifier Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-facility-identifier"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-facility-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Facility Type Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Facility Type Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-facility-type"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-section-location
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view Location Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Location Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "Location"

Instance:       ihris-task-section-facilityinfo
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view facilityInfo Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View facilityInfo Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "facilityInfo"

Instance:       ihris-task-read-ihris-page-facility
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Facility Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Facility Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-facility"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-organization)

Instance:       ihris-task-read-ihris-page-facilityinfo
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Facilityinfo Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Facilityinfo Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-facilityinfo"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-facilityownership
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Facilityownership Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Facilityownership Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-facilityownership"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-gender
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Gender Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Gender Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-gender"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-identifier
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Identifier Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Identifier Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-identifier"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-incentive
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Incentive Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Incentive Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-incentive"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-job
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Job Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Job Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-job"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-jurisdiction-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Jurisdiction Type Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Jurisdiction Type Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-jurisdiction-type"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-location
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Location Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Location Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-location"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-organization)

Instance:       ihris-task-read-ihris-page-marital-status
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Marital Status Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Marital Status Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-marital-status"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-motivation-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Motivation Type Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Motivation Type Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-motivation-type"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)
              

Instance:       ihris-task-section-contact
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view contact Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View contact Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "contact"

Instance:       ihris-task-section-distance
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view distance Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View distance Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "distance"

Instance:       ihris-task-section-education-history
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view education-history Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View education-history Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "education-history"

Instance:       ihris-task-section-incentive
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view incentive Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View incentive Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "incentive"

Instance:       ihris-task-section-training
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view training Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View training Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "training"

Instance:       ihris-task-section-careports
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view careports Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View careports Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "careports"

Instance:       ihris-task-section-equipment
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view equipment Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View equipment Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "equipment"

Instance:       ihris-task-section-supervision
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view supervision Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View supervision Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "supervision"

Instance:       ihris-task-section-emergency
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view emergency Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View emergency Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "emergency"

Instance:       ihris-task-read-ihris-page-practitionerrole
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Practitionerrole Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Practitionerrole Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-practitionerrole"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-practitionerrole)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][3].valueReference = Reference(Basic/ihris-task-write-valueset)
* extension[compositeTask][4].valueReference = Reference(Basic/ihris-task-write-organization)

Instance:       ihris-task-read-ihris-page-relation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Relation Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Relation Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-relation"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-role
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Role Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Role Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-role"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-task
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Task Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Task Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-task"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-practitioner)

Instance:       ihris-task-read-ihris-page-test-codesystem
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Test Codesystem Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Test Codesystem Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-test-codesystem"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-section-practitioner
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view Practitioner Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Practitioner Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "Practitioner"

Instance:       ihris-task-section-identifiers
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view identifiers Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View identifiers Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "identifiers"

Instance:       ihris-task-section-position
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view position Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View position Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "position"
              

Instance:       ihris-task-read-ihris-page-test-practitioner
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Test Practitioner Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Test Practitioner Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-test-practitioner"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-practitioner)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-organization)

Instance:       ihris-task-read-ihris-page-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Training Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Training Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-training"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)

Instance:       ihris-task-read-ihris-page-user
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read User Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View User Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-user"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-person)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-basic)
* extension[compositeTask][2].valueReference = Reference(Basic/ihris-task-write-location)
* extension[compositeTask][3].valueReference = Reference(Basic/ihris-task-write-practitioner)
* extension[compositeTask][4].valueReference = Reference(Basic/ihris-task-write-organization)

Instance:       ihris-task-read-ihris-page-workplace
InstanceOf:     IhrisTask
Usage:          #example
Title:          "iHRIS Task To Read Workplace Page"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Workplace Page"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#read
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[instance].valueId = "ihris-page-workplace"
* extension[compositeTask][0].valueReference = Reference(Basic/ihris-task-write-codesystem)
* extension[compositeTask][1].valueReference = Reference(Basic/ihris-task-write-valueset)
            

Instance:       ihris-task-navigation-dashboard
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Dashboard Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Dashboard Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "dashboard"
            

Instance:       ihris-task-navigation-person
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See People Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See People Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person"
            

Instance:       ihris-task-navigation-person-personSearch
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Search People Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Search People Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person.personSearch"
            

Instance:       ihris-task-navigation-person-personAdd
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Add Person Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Add Person Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person.personAdd"
            

Instance:       ihris-task-navigation-position
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Positions Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Positions Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "position"
            

Instance:       ihris-task-navigation-position-positionSearch
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Search Positions Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Search Positions Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "position.positionSearch"
            

Instance:       ihris-task-navigation-position-positionAdd
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Add Position Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Add Position Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "position.positionAdd"
            

Instance:       ihris-task-navigation-location
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Locations and Facilities/Community Sites Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Locations and Facilities/Community Sites Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "location"
            

Instance:       ihris-task-navigation-location-locationSearch
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Locations Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Locations Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "location.locationSearch"
            

Instance:       ihris-task-navigation-location-facilitySearch
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facilities/Community Sites Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facilities/Community Sites Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "location.facilitySearch"
            

Instance:       ihris-task-navigation-database
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Database Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Database Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database"
            

Instance:       ihris-task-navigation-database-facilityLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility/Location Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility/Location Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists"
            

Instance:       ihris-task-navigation-facilityLists-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists.type"
            

Instance:       ihris-task-navigation-facilityLists-juriType
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Jurisdiction Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Jurisdiction Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists.juriType"
            

Instance:       ihris-task-navigation-facilityLists-ownership
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Ownership Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Ownership Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists.ownership"
            

Instance:       ihris-task-navigation-facilityLists-identifier
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility Identifier Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility Identifier Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists.identifier"
            

Instance:       ihris-task-navigation-facilityLists-workplace
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Work Place Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Work Place Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facilityLists.workplace"
            

Instance:       ihris-task-navigation-database-jobLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Job Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Job Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists"
            

Instance:       ihris-task-navigation-jobLists-job
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Job/Health Worker Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Job/Health Worker Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists.job"
            

Instance:       ihris-task-navigation-jobLists-category
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Category Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Category Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists.category"
            

Instance:       ihris-task-navigation-database-eduLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists"
            

Instance:       ihris-task-navigation-eduLists-education-level
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Level Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Level Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.education-level"
            

Instance:       ihris-task-navigation-eduLists-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Trainings Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Trainings Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.training"
            

Instance:       ihris-task-navigation-database-otherLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Other Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Other Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists"
            

Instance:       ihris-task-navigation-otherLists-identifier
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Identifier Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Identifier Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.identifier"
            

Instance:       ihris-task-navigation-otherLists-incentive
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Activity Packs Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Activity Packs Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.incentive"
            

Instance:       ihris-task-navigation-otherLists-maritalStatus
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Marital Status Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Marital Status Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.maritalStatus"
            

Instance:       ihris-task-navigation-otherLists-relation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Relationship Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Relationship Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.relation"
            

Instance:       ihris-task-navigation-otherLists-motivationTypes
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Motivation Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Motivation Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.motivationTypes"
            

Instance:       ihris-task-navigation-otherLists-equipmenttype
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Equipment Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Equipment Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.equipmenttype"
            

Instance:       ihris-task-navigation-otherLists-gender
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Gender Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Gender Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.gender"
            

Instance:       ihris-task-navigation-reports
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Reports Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Reports Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports"
            

Instance:       ihris-task-navigation-reports-directorate
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See AC directorate Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See AC directorate Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.directorate"
            

Instance:       ihris-task-navigation-reports-staff
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See AC Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See AC Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff"
            

Instance:       ihris-task-navigation-reports-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Training Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Training Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.training"
            

Instance:       ihris-task-navigation-reports-incentive
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Motivation Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Motivation Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.incentive"
            

Instance:       ihris-task-navigation-reports-distance
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Distance from location Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Distance from location Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.distance"
            

Instance:       ihris-task-navigation-reports-equipment
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Equipment Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Equipment Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.equipment"
            

Instance:       ihris-task-navigation-reports-supervision
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Supervision Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Supervision Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.supervision"
            

Instance:       ihris-task-navigation-manage-report
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Manage Report Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Manage Report Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "manage-report"
            

Instance:       ihris-task-navigation-users
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See System Users Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See System Users Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users"
            

Instance:       ihris-task-navigation-users-usersSearch
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Search Users Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Search Users Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users.usersSearch"
            

Instance:       ihris-task-navigation-users-roleRoles
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See User Roles Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See User Roles Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users.roleRoles"
            

Instance:       ihris-task-navigation-users-roleTasks
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See User Role Tasks Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See User Role Tasks Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users.roleTasks"
            

Instance:       ihris-task-navigation-audit
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Audit Logs Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Audit Logs Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "audit"
            

Instance:       ihris-task-navigation-ihris-apps-list
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Apps Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Apps Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "ihris-apps-list"