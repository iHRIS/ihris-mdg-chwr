Instance: ihris-config
InstanceOf: Parameters
Usage: #example
* meta.profile = "http://ihris.org/fhir/StructureDefinition/ihris-parameters-remote-config"
* parameter[0].name = "signature"
* parameter[=].valueSignature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.14
* parameter[=].valueSignature.when = "2022-06-21T09:31:16.469Z"
* parameter[=].valueSignature.who = Reference(http://ihris.org/fhir/Organization/ihris)
* parameter[=].valueSignature.data = "V870cwmayGw0tOXXdiUn7/MNEaPt/KzRCk7H2t6IvqxmhshwxLxAYve8yNEdkhj/WhybFokLXR5rhtqU4VKE9EiN/dL1fHVbdu0rk/WrcFy2vPqYPUxepFAAAWQXIQV7gsVSMFEbUOTiYaQ42dt7gddrmJYq8p+6RFLAMDkxpzU="
* parameter[+].name = "config"
* parameter[=].part[0].name = "site:title"
* parameter[=].part[=].valueString = "Madagascar"
* parameter[=].part[+].name = "site:site"
* parameter[=].part[=].valueString = "Community Health Master List - Registry"
* parameter[=].part[+].name = "site:logo"
* parameter[=].part[=].valueString = "iHRIS5Logo.png"
* parameter[=].part[+].name = "site:auth:local:method"
* parameter[=].part[=].valueString = "post"
* parameter[=].part[+].name = "site:auth:local:link"
* parameter[=].part[=].valueString = "/auth/login"
* parameter[=].part[+].name = "site:auth:local:btn:image"
* parameter[=].part[=].valueString = "btn_ihris_signin.png"
* parameter[=].part[+].name = "site:auth:local:btn:image2x"
* parameter[=].part[=].valueString = "btn_ihris_signin_dark.png"
* parameter[=].part[+].name = "site:auth:local:btn:text"
* parameter[=].part[=].valueString = "Sign in with iHRIS"
* parameter[=].part[+].name = "site:footer:links:about:text"
* parameter[=].part[=].valueString = "About iHRIS"
* parameter[=].part[+].name = "site:footer:links:about:to"
* parameter[=].part[=].valueString = "/static/page-about"
* parameter[=].part[+].name = "site:footer:links:feedback:text"
* parameter[=].part[=].valueString = "Feedback"
* parameter[=].part[+].name = "site:footer:links:feedback:href"
* parameter[=].part[=].valueString = "https://forms.gle/jQJ7N3nDBSxSNne58"
* parameter[=].part[+].name = "site:footer:links:ihris:text"
* parameter[=].part[=].valueString = "iHRIS Website"
* parameter[=].part[+].name = "site:footer:links:ihris:href"
* parameter[=].part[=].valueString = "http://ihris.org/"
* parameter[=].part[+].name = "site:nav:menu:profile:text"
* parameter[=].part[=].valueString = "My Profile"
* parameter[=].part[+].name = "site:nav:menu:profile:order"
* parameter[=].part[=].valueString = "0"
* parameter[=].part[+].name = "site:nav:menu:profile:icon"
* parameter[=].part[=].valueString = "mdi-account-multiple"
* parameter[=].part[+].name = "site:nav:menu:profile:url"
* parameter[=].part[=].valueString = "/resource/view"
* parameter[=].part[+].name = "site:nav:menu:profile:selfService"
* parameter[=].part[=].valueString = "true"
* parameter[=].part[+].name = "site:nav:menu:profile:exclusive"
* parameter[=].part[=].valueString = "true"
* parameter[=].part[+].name = "site:nav:menu:dashboard:text"
* parameter[=].part[=].valueString = "Dashboard"
* parameter[=].part[+].name = "site:nav:menu:dashboard:order"
* parameter[=].part[=].valueString = "3"
* parameter[=].part[+].name = "site:nav:menu:dashboard:icon"
* parameter[=].part[=].valueString = "mdi-chart-arc"
* parameter[=].part[+].name = "site:nav:menu:dashboard:url"
//* parameter[=].part[=].valueString = "/dashboard/b0a0b8e0-1ab4-11ea-88d8-a3fd9096faa3"
* parameter[=].part[=].valueString = "/ihrisapp/ihris-dashboard/index.html#/dashBuilder"
* parameter[=].part[+].name = "site:nav:menu:dashboard:external"
* parameter[=].part[=].valueString = "true"
* parameter[=].part[+].name = "site:nav:active"
* parameter[=].part[=].valueString = "person"
* parameter[=].part[+].name = "site:nav:menu:person:text"
* parameter[=].part[=].valueString = "People"
* parameter[=].part[+].name = "site:nav:menu:person:order"
* parameter[=].part[=].valueString = "4"
* parameter[=].part[+].name = "site:nav:menu:person:icon"
* parameter[=].part[=].valueString = "mdi-account-multiple"
* parameter[=].part[+].name = "site:nav:menu:person:menu:person_search:text"
* parameter[=].part[=].valueString = "Search People"
* parameter[=].part[+].name = "site:nav:menu:person:menu:person_search:url"
* parameter[=].part[=].valueString = "/resource/search/practitioner"
* parameter[=].part[+].name = "site:nav:menu:person:menu:person_add:text"
* parameter[=].part[=].valueString = "Add Person"
* parameter[=].part[+].name = "site:nav:menu:person:menu:person_add:url"
* parameter[=].part[=].valueString = "/questionnaire/ihris-practitioner/practitioner"
* parameter[=].part[+].name = "site:nav:menu:position:text"
* parameter[=].part[=].valueString = "Positions"
* parameter[=].part[+].name = "site:nav:menu:position:order"
* parameter[=].part[=].valueString = "5"
* parameter[=].part[+].name = "site:nav:menu:position:icon"
* parameter[=].part[=].valueString = "mdi-account-multiple"
* parameter[=].part[+].name = "site:nav:menu:position:menu:position_search:text"
* parameter[=].part[=].valueString = "Search Positions"
* parameter[=].part[+].name = "site:nav:menu:position:menu:position_search:url"
* parameter[=].part[=].valueString = "/resource/search/practitionerrole"
* parameter[=].part[+].name = "site:nav:menu:position:menu:position_add:text"
* parameter[=].part[=].valueString = "Add Position"
* parameter[=].part[+].name = "site:nav:menu:position:menu:position_add:url"
* parameter[=].part[=].valueString = "/resource/add/practitionerrole"
* parameter[=].part[+].name = "site:nav:menu:location:text"
* parameter[=].part[=].valueString = "Locations and Facilities/Community Sites"
* parameter[=].part[+].name = "site:nav:menu:location:order"
* parameter[=].part[=].valueString = "6"
* parameter[=].part[+].name = "site:nav:menu:location:icon"
* parameter[=].part[=].valueString = "mdi-map-marker-multiple"
* parameter[=].part[+].name = "site:nav:menu:location:menu:location_search:text"
* parameter[=].part[=].valueString = "Locations"
* parameter[=].part[+].name = "site:nav:menu:location:menu:location_search:url"
* parameter[=].part[=].valueString = "/resource/search/location"
* parameter[=].part[+].name = "site:nav:menu:location:menu:facility_search:text"
* parameter[=].part[=].valueString = "Facilities/Community Sites"
* parameter[=].part[+].name = "site:nav:menu:location:menu:facility_search:url"
* parameter[=].part[=].valueString = "/resource/search/facility"
// * parameter[=].part[+].name = "site:nav:menu:mhero:order"
// * parameter[=].part[=].valueString = "7"
// * parameter[=].part[+].name = "site:nav:menu:mhero:text"
// * parameter[=].part[=].valueString = "mHero"
// * parameter[=].part[+].name = "site:nav:menu:mhero:icon"
// * parameter[=].part[=].valueString = "mdi-cellphone-basic"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:message:text"
// * parameter[=].part[=].valueString = "Send Messages"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:message:url"
// * parameter[=].part[=].valueString = "/page/mhero"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:scheduledcommunications:text"
// * parameter[=].part[=].valueString = "Scheduled Messages"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:scheduledcommunications:url"
// * parameter[=].part[=].valueString = "/page/mhero-scheduled-message"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:groups:text"
// * parameter[=].part[=].valueString = "Contact Groups"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:groups:url"
// * parameter[=].part[=].valueString = "/page/contact-groups"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:reports:text"
// * parameter[=].part[=].valueString = "Reports"
// * parameter[=].part[+].name = "site:nav:menu:mhero:menu:reports:url"
// * parameter[=].part[=].valueString = "/page/mhero-reports"
* parameter[=].part[+].name = "site:nav:menu:database:text"
* parameter[=].part[=].valueString = "Database"
* parameter[=].part[+].name = "site:nav:menu:database:order"
* parameter[=].part[=].valueString = "7"
* parameter[=].part[+].name = "site:nav:menu:database:icon"
* parameter[=].part[=].valueString = "mdi-database"
* parameter[=].part[+].name = "site:nav:menu:database:showInGrid"
* parameter[=].part[=].valueString = "true"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:text"
* parameter[=].part[=].valueString = "Job Lists"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:color"
* parameter[=].part[=].valueString = "#78496A"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:order"
* parameter[=].part[=].valueString = "0"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:icon"
* parameter[=].part[=].valueString = "mdi-database"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:menu:job:text"
* parameter[=].part[=].valueString = "Job/Health Worker Types"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:menu:job:url"
* parameter[=].part[=].valueString = "/resource/search/job"
* parameter[=].part[+].name = "site:nav:menu:database:menu:jobLists:menu:job:order"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:text"
* parameter[=].part[=].valueString = "Education Lists"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:color"
* parameter[=].part[=].valueString = "#8A8D35"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:order"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:icon"
* parameter[=].part[=].valueString = "mdi-database"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:education-level:text"
* parameter[=].part[=].valueString = "Education Level"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:education-level:url"
* parameter[=].part[=].valueString = "/resource/search/education-level"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:education-level:order"
* parameter[=].part[=].valueString = "0"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:training:text"
* parameter[=].part[=].valueString = "Trainings"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:training:url"
* parameter[=].part[=].valueString = "/resource/search/training"
* parameter[=].part[+].name = "site:nav:menu:database:menu:eduLists:menu:training:order"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:text"
* parameter[=].part[=].valueString = "Other Lists"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:color"
* parameter[=].part[=].valueString = "#B32317"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:order"
* parameter[=].part[=].valueString = "2"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:icon"
* parameter[=].part[=].valueString = "mdi-database"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:identifier:text"
* parameter[=].part[=].valueString = "Identifier Types"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:identifier:url"
* parameter[=].part[=].valueString = "/resource/search/identifier"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:identifier:order"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:incentive:text"
* parameter[=].part[=].valueString = "Activity Packs"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:incentive:url"
* parameter[=].part[=].valueString = "/resource/search/incentive"
* parameter[=].part[+].name = "site:nav:menu:database:menu:otherLists:menu:incentive:order"
* parameter[=].part[=].valueString = "2"
* parameter[=].part[+].name = "site:nav:menu:reports:text"
* parameter[=].part[=].valueString = "Reports"
* parameter[=].part[+].name = "site:nav:menu:reports:order"
* parameter[=].part[=].valueString = "9"
* parameter[=].part[+].name = "site:nav:menu:reports:icon"
* parameter[=].part[=].valueString = "mdi-chart-bar"
* parameter[=].part[+].name = "site:nav:menu:reports:showInGrid"
* parameter[=].part[=].valueString = "true"
* parameter[=].part[+].name = "site:nav:menu:reports:menu:staff:text"
* parameter[=].part[=].valueString = "Staff Report"
* parameter[=].part[+].name = "site:nav:menu:reports:menu:staff:url"
* parameter[=].part[=].valueString = "/report/ihris-es-report-staff"
* parameter[=].part[+].name = "site:nav:menu:reports:menu:staff:order"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "site:nav:menu:reports:menu:staff:description"
* parameter[=].part[=].valueString = "Basic default report showing all staff"
* parameter[=].part[+].name = "site:nav:menu:users:text"
* parameter[=].part[=].valueString = "System Users"
* parameter[=].part[+].name = "site:nav:menu:users:order"
* parameter[=].part[=].valueString = "10"
* parameter[=].part[+].name = "site:nav:menu:users:icon"
* parameter[=].part[=].valueString = "mdi-account-box-outline"
* parameter[=].part[+].name = "site:nav:menu:users:menu:users_search:text"
* parameter[=].part[=].valueString = "Search Users"
* parameter[=].part[+].name = "site:nav:menu:users:menu:users_search:url"
* parameter[=].part[=].valueString = "/resource/search/user"
* parameter[=].part[+].name = "site:nav:menu:audit:text"
* parameter[=].part[=].valueString = "Audit Logs"
* parameter[=].part[+].name = "site:nav:menu:audit:order"
* parameter[=].part[=].valueString = "11"
* parameter[=].part[+].name = "site:nav:menu:audit:icon"
* parameter[=].part[=].valueString = "mdi-lock-reset"
* parameter[=].part[+].name = "site:nav:menu:audit:url"
* parameter[=].part[=].valueString = "/resource/search/auditevent"
* parameter[=].part[+].name = "site:nav:menu:password:text"
* parameter[=].part[=].valueString = "Change Password"
* parameter[=].part[+].name = "site:nav:menu:password:order"
* parameter[=].part[=].valueString = "12"
* parameter[=].part[+].name = "site:nav:menu:password:icon"
* parameter[=].part[=].valueString = "mdi-lock-reset"
* parameter[=].part[+].name = "site:nav:menu:password:url"
* parameter[=].part[=].valueString = "/questionnaire/ihris-change-password/user"
* parameter[=].part[+].name = "site:nav:menu:ihris-apps-list:text"
* parameter[=].part[=].valueString = "Apps"
* parameter[=].part[+].name = "site:nav:menu:ihris-apps-list:order"
* parameter[=].part[=].valueString = "13"
* parameter[=].part[+].name = "site:nav:menu:ihris-apps-list:icon"
* parameter[=].part[=].valueString = "mdi-apps"
* parameter[=].part[+].name = "site:nav:menu:ihris-apps-list:url"
* parameter[=].part[=].valueString = "/ihris-apps-list"
* parameter[=].part[+].name = "shortname:Practitioner:format"
* parameter[=].part[=].valueString = "%s, %s"
* parameter[=].part[+].name = "shortname:Practitioner:order"
* parameter[=].part[=].valueString = "family,given"
* parameter[=].part[+].name = "shortname:Practitioner:paths:family:fhirpath"
* parameter[=].part[=].valueString = "name.where(use='official').first().family"
* parameter[=].part[+].name = "shortname:Practitioner:paths:given:fhirpath"
* parameter[=].part[=].valueString = "name.where(use='official').first().given"
* parameter[=].part[+].name = "shortname:Location:format"
* parameter[=].part[=].valueString = "%s"
* parameter[=].part[+].name = "shortname:Location:order"
* parameter[=].part[=].valueString = "name"
* parameter[=].part[+].name = "shortname:Location:paths:name:fhirpath"
* parameter[=].part[=].valueString = "name"
* parameter[=].part[+].name = "shortname:Basic:format"
* parameter[=].part[=].valueString = "%s"
* parameter[=].part[+].name = "shortname:Basic:order"
* parameter[=].part[=].valueString = "name"
* parameter[=].part[+].name = "shortname:Basic:paths:name:fhirpath"
* parameter[=].part[=].valueString = "extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* parameter[=].part[+].name = "shortname:CodeSystem:format"
* parameter[=].part[=].valueString = "%s"
* parameter[=].part[+].name = "shortname:CodeSystem:order"
* parameter[=].part[=].valueString = "name"
* parameter[=].part[+].name = "shortname:CodeSystem:paths:name:fhirpath"
* parameter[=].part[=].valueString = "CodeSystem.where(id='ihris-job').display"
* parameter[=].part[+].name = "defaults:fields:PractitionerRole.location:type"
* parameter[=].part[=].valueString = "tree"
* parameter[=].part[+].name = "defaults:fields:PractitionerRole.location:user_filter:regex"
* parameter[=].part[=].valueString = "related-location=(.+)"
* parameter[=].part[+].name = "defaults:fields:PractitionerRole.location:user_filter:replace"
* parameter[=].part[=].valueString = "$1"
* parameter[=].part[+].name = "defaults:fields:Practitioner.extension:residence.value[x]:valueReference:type"
* parameter[=].part[=].valueString = "tree"
* parameter[=].part[+].name = "defaults:fields:Location.partOf:type"
* parameter[=].part[=].valueString = "tree"
* parameter[=].part[+].name = "defaults:fields:Location.partOf:user_filter:regex"
* parameter[=].part[=].valueString = "related-location=(.+)"
* parameter[=].part[+].name = "defaults:fields:Location.partOf:user_filter:replace"
* parameter[=].part[=].valueString = "$1"
* parameter[=].part[+].name = "workflow:processor:endrole:file"
* parameter[=].part[=].valueString = "workflowMdgEndRole"
* parameter[=].part[+].name = "workflow:questionnaire:endrole:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-endrole"
* parameter[=].part[+].name = "workflow:processor:education:file"
* parameter[=].part[=].valueString = "workflowMdgEducation"
* parameter[=].part[+].name = "workflow:questionnaire:education:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-education-history"
* parameter[=].part[+].name = "workflow:processor:training:file"
* parameter[=].part[=].valueString = "workflowMdgTraining"
* parameter[=].part[+].name = "workflow:questionnaire:training:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-training"
* parameter[=].part[+].name = "workflow:processor:incentive:file"
* parameter[=].part[=].valueString = "workflowIncentive"
* parameter[=].part[+].name = "workflow:questionnaire:incentive:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-incentive"
* parameter[=].part[+].name = "workflow:processor:distance:file"
* parameter[=].part[=].valueString = "workflowDistance"
* parameter[=].part[+].name = "workflow:questionnaire:distance:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-distance"
* parameter[=].part[+].name = "workflow:processor:facilityinfo:file"
* parameter[=].part[=].valueString = "workflowMdgFacilityInfo"
* parameter[=].part[+].name = "workflow:questionnaire:facilityinfo:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-facilityinfo"
* parameter[=].part[+].name = "workflow:processor:user:file"
* parameter[=].part[=].valueString = "workflowUser"
* parameter[=].part[+].name = "workflow:questionnaire:user:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-user"
* parameter[=].part[+].name = "defaults:components:date-time:minValueDateTime"
* parameter[=].part[=].valueString = "1920-01-01"
* parameter[=].part[+].name = "defaults:components:date-time:maxValueDateTime"
* parameter[=].part[=].valueString = "2030-01-01"
* parameter[=].part[+].name = "defaults:components:date:minValueDate"
* parameter[=].part[=].valueString = "1920-01-01"
* parameter[=].part[+].name = "defaults:components:date:maxValueDate"
* parameter[=].part[=].valueString = "2030-01-01"
* parameter[=].part[+].name = "workflow:processor:password:file"
* parameter[=].part[=].valueString = "workflowChangePassword"
* parameter[=].part[+].name = "workflow:questionnaire:password:url"
* parameter[=].part[=].valueString = "http://ihris.org/fhir/Questionnaire/ihris-change-password"
* parameter[=].part[+].name = "app:site:routes:upload:mount"
* parameter[=].part[=].valueString = "upload"
* parameter[=].part[+].name = "app:site:routes:upload:path"
* parameter[=].part[=].valueString = "upload.js"
* parameter[=].part[+].name = "app:site:routes:upload:authenticate"
* parameter[=].part[=].valueString = "true"