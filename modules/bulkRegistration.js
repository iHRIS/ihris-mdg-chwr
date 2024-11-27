const isEmpty = require("is-empty");
const {v4: uuidv4} = require("uuid");

const validateDate = (input) => {
  if (new Date(input).toString() === 'Invalid Date'){
    return false;
  } else {
    // Parse the date parts to integers
      const parts = input.split("-");
      const year = parseInt(parts[0], 10);
      const month = parseInt(parts[1], 10) - 1; // Month is 0-based
      const day = parseInt(parts[2], 10);

      // Check the ranges of month and year
      if (year < 1000 || year > 3000 || month < 0 || month > 11) return false;

      // Create a new date object to check the validity of the date
      const date = new Date(year, month, day);

      // Check if the date is indeed the same date as the input
      // This step is crucial to avoid invalid dates like 2022-02-30
      return date.getFullYear() === year && date.getMonth() === month && date.getDate() === day;
  }
}
const userDataValidation = (userData) => {
    const validation = {
        isValid: true,
        data: "",
        message: [],
    };

    userData.map((user, index) => {
        let errors = [];
        let oldKeys = Object.keys(user);
        let newKeys = Object.keys(user).map((ol) => ol.split(" ").join("_"));
        /*if (user.practitionerIsExist === true) {
            validation.isValid = false;
            errors.push(`User at row ${index + 2}  is already exist in the system`);
        }*/
        for (let i = 0; i < oldKeys.length; i++) {
            user[newKeys[i]] = user[oldKeys[i]];
            if (newKeys[i] === oldKeys[i]) {
              continue;
            } else {
                delete user[oldKeys[i]];
            }
        }

        let reference = [
          {Gender: "genderCoding"},
          {Workplace: "workplaceCoding"},
          {Categorie: "categorieCoding"},
          {MaritalStatus: "maritalStatusCoding"},
          {Education: "Education"},
          {Apacks: "apacksCoding"},
          {Motivation_Type: "motivationTypeCoding"},
          {Motivation: "motivationCoding"},
          {Training_Received_1: "trainingReceived1Coding"},
          {Training_Received_2: "trainingReceived2Coding"},
          {Training_Received_3: "trainingReceived3Coding"},
          {Type_EMOIS_1: "emois1Coding" },
          {Type_EMOIS_2: "emois2Coding" },
          {Type_EMOIS_3: "emois3Coding" },
          {Type_EMOIS_4: "emois4Coding" },
          {Type_EMOIS_5: "emois5Coding" },
          {Type_EMOIS_6: "emois6Coding" },
          {Statut_1: "statut1Coding"},
          {Statut_2: "statut2Coding"},
          {Statut_3: "statut3Coding"},
          {Statut_4: "statut4Coding"},
          {Statut_5: "statut5Coding"},
          {Statut_6: "statut6Coding"},
          {RC_Tablet: "rcTabletCoding"},
          {AC_Tablet: "acTabletCoding"},
          //{Nationality: "nationalityCoding"},
          {JobTitle: "jobCoding"},
          /*{EmploymentTerms: "employmentCoding"},
          {PayGrade: "gradeCoding"},*/
          {Fokotany: "facilityId"},
          {Commune: "communeId"}
        ];

        let dateType = [
          "BirthDate",
          "StartDate"
        ]

        dateType.forEach((key, index) => {
          if(user[`${key}`] != null ){
            if (!validateDate(user[`${key}`])) {
              console.log(user[`${key}`])
              validation.isValid = false;
              errors.push(`${key} is not a valid date please enter in YYYY-MM-DD format`);
            } else {
                user[`${key}`] = new Date(user[`${key}`])
                user[`${key}`].setDate(user[`${key}`].getDate())
            }
          }
        })

        reference.forEach((data, index) => {
            if (
                !isEmpty(user[`${Object.keys(data)[0]}`]) &&
                user[`${Object.values(data)[0]}`] === undefined
            ) {
                validation.isValid = false;
                user.index = index + 1;
                validation.data = user;
                errors.push(
                    `Please check if ${Object.values(data)[0]} ${
                        user[`${Object.keys(data)[0]}`]
                    } exists in a system or check the spelling.`
                );
            }
        });

        let requiredFieldKeys = [
            "Fokotany",
            "lastname",
            "JobTitle",
        ];

        requiredFieldKeys.forEach((key, index) => {
            if (isEmpty(user[`${key}`])) {
                validation.isValid = false;
                user.index = index + 1;
                validation.data = user;
                errors.push(`user ${key} is missing`);
            }
        });

        if (errors.length > 0) {
            validation.message.push({
                index: index + 2,
                errors: errors,
            });
        }
    });
    return validation;
};

let bundle = {
    resourceType: "Bundle",
    type: "transaction",
    entry: [],
};

const template = async (users) => {
    let bundleData = [];

    users.map(async (user) => {
        let userId = uuidv4();
        let oldKeys = Object.keys(user);
        let newKeys = Object.keys(user).map((ol) => ol.split(" ").join("_"));

        for (let i = 0; i < oldKeys.length; i++) {
            user[newKeys[i]] = user[oldKeys[i]];
            if (newKeys[i] === oldKeys[i]) {
              continue;
            } else {
                delete user[oldKeys[i]];
            }
        }

        bundleData = [
            ...bundleData,
            {
                resource: {
                    resourceType: "Practitioner",
                    meta: {
                        profile: [
                            "http://ihris.org/fhir/StructureDefinition/ihris-practitioner",
                        ],
                    },
                    extension: [
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phone",
                          valueString: user["Phone"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-marital-status",
                          valueString: user["MaritalStatus"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-nationality",
                          valueCoding: user["nationalityCoding"]
                        },
                        {
                            url: "http://ihris.org/fhir/StructureDefinition/ihris-related-group",
                            extension: [
                                {
                                    url: "practitioner",
                                    valueString: `Practitioner/${userId}`,
                                },
                                ...user["relatedGroup"],
                            ],
                        },
                    ],
                    identifier: [
                        {
                            type: {
                                coding: [
                                    {
                                        system: "http://ihris.org/fhir/CodeSystem/ihris-mdg-identifier-codesystem",
                                        code: "CIN",
                                        display: "National Identintification Number"
                                    },
                                ],
                            },
                            value: user["CIN"],
                        }
                    ],
                    active: true,
                    name: [
                        {
                            use: "official",
                            text: user["lastname"] + " " + user["othernames"],
                            given: [user["othernames"] ],
                            family: user["lastname"]
                        }
                    ],
                    gender: user["genderCoding"].code,
                    //gender: "",
                    birthDate: user["BirthDate"],
                },
                request: {
                    method: "PUT",
                    url: `Practitioner/${userId}`,
                },
            },
            {
              resource: {
                resourceType: "PractitionerRole",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-category",
                    valueCoding: user["categorieCoding"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-workplace",
                    valueCoding: user["workplaceCoding"]
                  }
                ],
                period: {
                  start: user["StartDate"]
                },
                practitioner: {
                  reference: `Practitioner/${userId}`
                },
                location: [
                  {
                    reference: `Location/${user["facilityId"]}`
                  }
                ],
                active: true,
                code: [
                  {
                    coding: [
                      user["jobCoding"]
                    ],
                  },
                ],
              },
              request: {
                method: "POST",
                url: "PractitionerRole",
              }
            },
            {
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-education-history",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-education-history",
                    extension: [
                      {
                        url: "level",
                        valueCoding: user["educationCoding"]
                      }
                    ],
                  },
                ],
              },
              request: {
                method: "POST",
                url: "Basic",
              }
          }];
          if (user['Distance_Hamlet'] != null || user['Distance_CSB'] != null || user['Distance_Workplace'] != null || user['Distance_RC'] != null ) {
            bundleData.push({
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-distance",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-distance",
                    extension: [
                      {
                        url: "village",
                        valueDecimal: user["Distance_Hamlet"]
                      },
                      {
                        url: "csb",
                        valueDecimal: user["Distance_CSB"]
                      },
                      {
                        url: "workplace",
                        valueDecimal: user["Distance_Workplace"]
                      },
                      {
                        url: "csbrc",
                        valueDecimal: user["Distance_RC"]
                      }
                    ],
                  },
                ],
              },
              request: {
                method: "POST",
                url: "Basic",
              }
            });
          }
          if (user["Apacks"] != null || user["Motivation"] != null || user["Motivation_Type"] != null) {
            bundleData.push({
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-incentive",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-incentive",
                    extension: [
                      {
                        url: "incentive",
                        valueCoding: user["apacksCoding"]
                      },
                      {
                        url: "motivation",
                        valueCoding: user["motivationCoding"]
                      },
                      {
                        url: "motivationType",
                        valueCoding: user["motivationTypeCoding"]
                      }
                    ],
                  },
                ],
              },
              request: {
                method: "POST",
                url: "Basic",
              }
            });
          }
          const trainingKeys = [
            { received: "Training_Received_1", coding: "trainingReceived1Coding" },
            { received: "Training_Received_2", coding: "trainingReceived2Coding" },
            { received: "Training_Received_3", coding: "trainingReceived3Coding" }
          ];

          trainingKeys.forEach(({ received, coding }) => {
            if (user[received] != null) {
              bundleData.push({
                resource: {
                  resourceType: "Basic",
                  meta: {
                    profile: [
                      "http://ihris.org/fhir/StructureDefinition/ihris-basic-training",
                    ],
                  },
                  extension: [
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-training",
                      extension: [
                        {
                          url: "training",
                          valueCoding: user[coding]
                        }
                      ],
                    },
                  ],
                },
                request: {
                  method: "POST",
                  url: "Basic",
                }
              });
            }
          });
         
            const createResource = (type, coding, statusCoding, rcTabletCoding, acTabletCoding) => ({
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-equipment",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-equipment",
                    extension: [
                      {
                        url: "recieved",
                        valueCoding: {
                          system: "http://ihris.org/fhir/CodeSystem/ihris-yesno",
                          code: "yes",
                          display: "Oui",
                        },
                      },
                      {
                        url: "equipmenttype",
                        valueCoding: coding,
                      },
                      {
                        url: "availability",
                        valueCoding: statusCoding,
                      },
                      {
                        url: "rctablet",
                        valueCoding: rcTabletCoding
                      },
                      {
                        url: "actablet",
                        valueCoding: acTabletCoding
                      }
                    ],
                  },
                ],
              },
              request: {
                method: "POST",
                url: "Basic",
              },
            });

            if (user["Type_EMOIS_1"] != null) {
              bundleData.push(createResource("Type_EMOIS_1", user["emois1Coding"], user["statut1Coding"], user["RC_Tablet"],  user["AC_Tablet"]));
            }
            if (user["Type_EMOIS_2"] != null) {
              bundleData.push(createResource("Type_EMOIS_2", user["emois2Coding"], user["statut2Coding"]));
            }
            if (user["Type_EMOIS_3"] != null) {
              bundleData.push(createResource("Type_EMOIS_3", user["emois3Coding"], user["statut3Coding"]));
            }
            if (user["Type_EMOIS_4"] != null) {
              bundleData.push(createResource("Type_EMOIS_4", user["emois4Coding"], user["statut4Coding"]));
            }
            if (user["Type_EMOIS_5"] != null) {
              bundleData.push(createResource("Type_EMOIS_5", user["emois5Coding"], user["statut5Coding"]));
            }
            if (user["Type_EMOIS_6"] != null) {
              bundleData.push(createResource("Type_EMOIS_6", user["emois6Coding"], user["statut6Coding"]));
            } 
        });
    return bundleData;
};

function processJobs(usersData) {
    return new Promise((resolve, reject) => {
        const validation = userDataValidation(usersData);
        if (!validation.isValid) {
            resolve(validation);
        } else {
            template(usersData)
                .then((practitionerDetails) => {
                    bundle.entry = practitionerDetails
                })
                .then(() => {
                    validation.isValid = true;
                    validation.data = {bundle};
                })
                .then(() => {
                    resolve(validation);
                });
        }
    });
}

module.exports = processJobs; 
