Invariant:      ihris-age-18
Description:    "birthDate must be more than 18 years ago."
Expression:     "birthDate < today() - 18 years"
Severity:       #error


Profile:        IhrisPractitioner
Parent:         Practitioner
Id:             ihris-practitioner
Title:          "Health Worker"
Description:    "iHRIS profile of Practitioner."
* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier ^constraint[0].key = "ihris-search-identifier"
* identifier ^constraint[0].severity = #error
* identifier ^constraint[0].expression = "'Practitioner' | 'identifier' | iif(system.exists(), system & '|' & value, value)"
* identifier ^constraint[0].human = "The identifier must be unique and another record has this identifier"
* identifier.use 0..0 MS
* identifier.use ^label = "Use"
* identifier.type MS
* identifier.type ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.type.coding ^label = "Type"
* identifier.type.coding from IhrisMdgIdentifierType
* identifier.system 0..0 MS
* identifier.system ^label = "System"
* identifier.value MS
* identifier.value ^label = "Value"
* name 1..* MS
* name ^label = "Name"
* name.use 0..0
* name.family 1..1 MS
* name.family ^label = "Last Name"
* name.family ^constraint[0].key = "ihris-name-check"
* name.family ^constraint[0].severity = #error
* name.family ^constraint[0].expression = "matches('^[A-Za-z ]*$')"
* name.family ^constraint[0].human = "Name must be only text."
* name.given 1..1 MS
* name.given ^label = "First Name"
* name.prefix 0..0
* name.suffix 0..0
//* name.suffix ^label = "Suffix"
* telecom 0..0 MS
// * telecom ^label = "Telecom"
// * telecom.system MS
// * telecom.system ^label = "Contact Type"
// * telecom.use MS
// * telecom.use ^label = "Use"
// * telecom.value MS
// * telecom.value ^label = "Value"
// * telecom ^constraint[0].key = "ihris-search-phone"
// * telecom ^constraint[0].severity = #error
// * telecom ^constraint[0].expression = "'Practitioner' | 'phonenumber' | iif(value.exists(), system & '|' & value, value)"
// * telecom ^constraint[0].human = "The identifier must be unique and another record has this identifier"
* address 0..0
// * address ^label = "Address"
// * address.use MS
// * address.use ^label = "Use"
// * address.type MS
// * address.type ^label = "Type"
// * address.line 1..1 MS
// * address.line ^label = "Line"
// * address.city MS
// * address.city ^label = "City"
// * address.district MS
// * address.district ^label = "District"
// * address.state MS
// * address.state ^label = "State"
// * address.postalCode MS
// * address.postalCode ^label = "Postal Code"
// * address.country MS
// * address.country ^label = "Country"*
* gender 1..1 MS
* gender ^label = "Gender"
* gender from IhrisMDGGenderValueSet (required)
* birthDate 1..1 MS
* birthDate ^label = "Date Of Birth"
* birthDate obeys ihris-age-18
* birthDate ^minValueQuantity.system = "http://unitsofmeasure.org/"
* birthDate ^minValueQuantity.code = #a
* birthDate ^minValueQuantity.value = 100
* birthDate ^maxValueQuantity.system = "http://unitsofmeasure.org/"
* birthDate ^maxValueQuantity.code = #a
* birthDate ^maxValueQuantity.value = -18
* photo 0..1 MS
* photo ^label = "Photo"
* communication 0..0
* extension contains
    IhrisPractitionerMaritalStatus named maritalStatus 0..1 and
    IhrisPractitionerPhone named phone 0..1 MS
* extension[maritalStatus]  ^label = "Marital Status"
* extension[maritalStatus].valueCoding MS
* extension[phone].valueString MS
* extension[phone] ^label = "Phone Number"
* active 1..1 MS
* active ^label = "Active"

Extension:      IhrisPractitionerPhone
Id:             ihris-practitioner-phone
Title:          "iHRIS Personal Information phone"
Description:    "iHRIS extension for Phone."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only string
* valueString ^label = "Phone Number"
* valueString 0..1 MS

Extension:      IhrisPractitionerLanguageProficiency
Id:             ihris-practitioner-language-proficiency
Title:          "iHRIS Practitioner Language Proficiency"
Description:    "iHRIS extension for Practitioner Language Proficiency."
* ^context.type = #element
* ^context.expression = "Practitioner"
* extension contains
    level 0..1 MS and
    type 0..* MS
* extension[level].value[x] only Coding
* extension[level].valueCoding 0..1 MS
* extension[level].valueCoding from http://terminology.hl7.org/ValueSet/v3-LanguageAbilityProficiency
* extension[level].valueCoding ^label = "Proficiency Level"
* extension[type] ^label = "Proficiency Type"
* extension[type].value[x] only Coding
* extension[type].valueCoding 0..1 MS
* extension[type].valueCoding ^label = "Proficiency Type"
* extension[type].valueCoding from http://terminology.hl7.org/ValueSet/v3-LanguageAbilityMode

Extension:      IhrisPractitionerResidence
Id:             ihris-practitioner-residence
Title:          "iHRIS Practitioner Residence"
Description:    "iHRIS extension for Practitioner residence."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Reference
* valueReference 1..1 MS
* valueReference ^label = "Residence"
* valueReference ^constraint[0].key = "ihris-location-residence"
* valueReference ^constraint[0].severity = #warning
* valueReference ^constraint[0].expression = "reference.matches('^Location/')"
* valueReference ^constraint[0].human = "Must be a location"
* valueReference only Reference(IhrisJurisdiction)
* valueReference.reference 1..1 MS
* valueReference.reference ^label = "Location"
* valueReference.type 0..0
* valueReference.identifier 0..0
* valueReference.display 0..0

// Extension:      IhrisPractitionerDependentDetail
// Id:             ihris-practitioner-dependent-detail
// Title:          "iHRIS Practitioner Dependent Detail"
// Description:    "iHRIS extension for Practitioner Dependent Detail."
// * ^context.type = #element
// * ^context.expression = "Practitioner"
// * extension contains name 1..1 MS and
//     birthDate 1..1 MS
// * extension[name].value[x] only string
// * extension[name].valueString 1..1 MS
// * extension[name].valueString ^label = "Dependent's Name"
// * extension[birthDate].value[x] only date
// * extension[birthDate].valueDate 1..1 MS
// * extension[birthDate].valueDate ^label = "Dependent's Date of Birth"

Extension:      IhrisPractitionerMaritalStatus
Id:             ihris-practitioner-marital-status
Title:          "iHRIS Practitioner Marital Status"
Description:    "iHRIS extension for Practitioner marital status."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Marital Status"
* valueCoding from IhrisMaritalStatusValueSet (required)

ValueSet:       IhrisMaritalStatusValueSet
Id:             ihris-marital-status-valueset
Title:          "iHRIS Marital Status ValueSet"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.4.0"
* codes from system IhrisMaritalStatusCodeSystem

CodeSystem:      IhrisMaritalStatusCodeSystem
Id:             ihris-marital-status-codesystem
Title:          "Marital Status"
* ^date = "2023-12-29T08:41:04.362Z"
* ^version = "0.4.0"
* #single "Célibataire" "Célibataire"
* #married "Marié(e)" "Marié(e)"
* #divorced "Divorcé(e)" "Divorcé(e)"
* #widowed "Veuf(ve)" "Veuf(ve)"
* #other "Autre" "Autre"

// Extension:      IhrisPractitionerDependents
// Id:             ihris-practitioner-dependents
// Title:          "iHRIS Practitioner Dependents"
// Description:    "iHRIS extension for Practitioner number of dependents."
// * ^context.type = #element
// * ^context.expression = "Practitioner"
// * value[x] only positiveInt
// * valuePositiveInt 1..1 MS
// * valuePositiveInt ^label = "Number of Dependents"

CodeSystem:      IhrisRelationCodesystem
Id:              ihris-relation-codesystem
Title:           "Relationship"
* ^date = "2023-10-29T08:41:04.362Z"
* ^version = "0.3.0"
* #spouse "Époux/Epouse"
* #mother "Mère"
* #father "Père"
* #adoptedchild "Enfant adoptif"
* #bilogicalChild "Enfant biologique"
* #other "Autres"

ValueSet:         IhrisRelationValueSet
Id:               ihris-relation-valueset
Title:            "iHRIS Relationship ValueSet"
* ^date = "2023-10-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisRelationCodesystem

ValueSet:         IhrisMdgIdentifierType
Id:               ihris-mdg-identifier-type
Title: "iHRIS Identifier Type ValueSet"
* ^date = "2023-11-29T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisMdgIdentifierCodesystem

CodeSystem:      IhrisMdgIdentifierCodesystem
Id:              ihris-mdg-identifier-codesystem
Title:           "Identifier Types"
* ^date = "2023-11-29T08:41:04.362Z"
* ^version = "0.3.0"
* #CIN "Carte d'Identité Nationale" "Carte d'Identité Nationale"

Extension:      IhrisPractitionerPrefix
Id:             ihris-practitioner-prefix
Title:          "iHRIS Personal Information Prefix"
Description:    "iHRIS extension for Personal Prefix."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Prefix"
* valueCoding from IhrisMDGPrefixValueSet (required)

ValueSet:         IhrisMDGPrefixValueSet
Id:               ihris-mdg-prefix-valueset
Title:            "iHRIS Ethiopia Prefix ValueSet"
* ^date = "2020-11-11T09:25:04.362Z"
* ^version = "0.4.0"
* codes from system IhrisMDGPrefixCodeSystem

CodeSystem:         IhrisMDGPrefixCodeSystem
Id:               ihris-mdg-prefix-codesystem
Title:            "iHRIS Ethiopia Prefix Codesystem"
* ^date = "2020-11-11T09:25:04.362Z"
* ^version = "0.4.0"
* #mr "Mr."
* #mme "Mme."
* #mlle "Mlle."

Instance:       ihris-page-relation
InstanceOf:     IhrisPage
Title:          "iHRIS relationship type CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-relation-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Relationship Type"
* extension[section][0].extension[description].valueString = "Relationship Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:      ihris-page-identifier
InstanceOf:    IhrisPage
Title:         "iHRIS identifier type CodeSystem Page"
Usage:         #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-mdg-identifier-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Identifier Type"
* extension[section][0].extension[description].valueString = "Identifier Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:     ihris-page-marital-status
InstanceOf:   IhrisPage
Title:        "iHRIS marital status CodeSystem Page"
Usage:        #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-marital-status-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Marital Status"
* extension[section][0].extension[description].valueString = "Marital Status"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

CodeSystem:      IhrisMDGGenderCodesystem
Id:              ihris-gender-codesystem
Title:           "Gender"
* ^date = "2025-03-02T08:41:04.362Z"
* ^version = "0.8.0"
* #male "Masculin" "Masculin"
* #female "Féminin" "Féminin"

ValueSet:         IhrisMDGGenderValueSet
Id:               ihris-gender-valueset
Title:            "iHRIS Gender ValueSet"
* ^date = "2025-03-02T08:41:04.362Z"
* ^version = "0.8.0"
* codes from system IhrisMDGGenderCodesystem

Instance:       ihris-page-gender
InstanceOf:     IhrisPage
Title:          "iHRIS Gender type CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-gender-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Gender"
* extension[section][0].extension[description].valueString = "Gender"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"
