const isEmpty = require("is-empty");
const {v4: uuidv4} = require("uuid");
const ihrissmartrequire = require('ihrissmartrequire');
const { use } = require("passport");

const validateDate = (input) => {
  if (new Date(input).toString() === 'Invalid Date'){
    console.log("DATE: ", input)
    console.log("CHECK IF VALID: ", new Date(input).toString())
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
            {Marital_Status: "maritalCoding"},
            {Own_Phone: "ownPhoneCoding"},
            {Phone_Reporting: "phoneReportingCoding"},
            {English: "englishCoding"},
            {Other: "languageCoding"},
            {Location: "locationId"},
            {Job: "jobCoding"},
            {Health_Worker_Type: "jobTypeCoding"},
            {Facility: "facilityId"},
            //{Parish: "parishId"},
            // {Village_Served1: "villageId1"},
            // {Village_Served2: "villageId2"},
            {Recruitment_Mechanism: "recruitmentCoding"},
            {Operational_Level: "operationalCoding"},
            {Highest_Education: "educationCoding"},
            {Last_Training: "trainingCoding"},
            {Last_Training_Ip: "trainingIpCoding"},
            {Frequency: "frequencyCoding"},
            {Financial: "financialCoding"},
            {Last_Mentorship: "mentorshipCoding"},
            {Last_Mentorship_IP: "mentorshipIPCoding"},
            {Incentive1: "incentive1Coding"},
            {Incentive2: "incentive2Coding"},
            {Incentive3: "incentive3Coding"},
            {Service1: "service1Coding"},
            {Service1: "service2Coding"}
        ];

        let dateType = [
            "Birth_Date",
            // "Date_of_First_Appointment",
            "Date_of_Current_Appointment",
            "Last_Training_Date"
        ]

        dateType.forEach((key, index) => {
          if(user[`${key}`] != null ){
            if (validateDate(user[`${key}`]) == false) {
              validation.isValid = false;
              errors.push(`${key} is not a valid date please enter in YYYY-MM-DD format`);
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
            // "PMIS",
            // "FileNumber",
            "Surname",
            "Firstname",
            "Location",
            "Gender",
            "Job",
            "Facility",
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
                            "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-chw",
                        ],
                    },
                    extension: [
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-ownphone",
                          valueCoding: user["ownPhoneCoding"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phonereporting",
                          valueCoding: user["phoneReportingCoding"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phone",
                          valueString: user["Mobile"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-age",
                          valueInteger: user["Age"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-marital-status",
                          valueCoding: user["maritalCoding"]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-language",
                          extension: [
                            {
                              url: "englishProficiency",
                              valueCoding: user["englishCoding"]
                            },
                            {
                              url: "other",
                              valueCoding: user["languageCoding"]
                            }
                          ]
                        },
                        {
                          url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-location",
                          valueReference: {
                            reference: `Location/${user["locationId"]}`
                          }
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
                                        system:
                                            "http://ihris.org/fhir/CodeSystem/ihris-uganda-identifier",
                                        code: "nationalIN",
                                    },
                                ],
                            },
                            value: user["NationalID"],
                        }
                    ],
                    active: true,
                    name: [
                        {
                            use: "official",
                            text: user["Surname"] + " " + user["Firstname"] + " " + user["Othername"],
                            given: [user["Firstname"], user["Othername"]],
                            family: user["Surname"]
                        },
                    ],
                    gender:  user["Gender"].toLowerCase(),
                    birthDate: user["Birth_Date"],
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
                    "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role-chw",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-parish",
                    valueString: user["Parish"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-village",
                    valueString: user["Village_Served1"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-village",
                    valueString: user["Village_Served2"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-recruitment-mechanism",
                    valueCoding: user["recruitmentCoding"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-operationlevel",
                    valueCoding: user["operationalCoding"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-job-type",
                    valueCoding: user["jobTypeCoding"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-households",
                    valueInteger: user["Number_of_Households"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-salary",
                    valueMoney: { value : user["Salary"] , currency : "UGX" }
                  }
                ],
                period: {
                  start: user["Date_of_Current_Appointment"],
                  end: ""
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
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
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

            if (user['Last Training'] != null) {
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
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-training",
                      extension: [
                        {
                          url: "training",
                          valueCoding: user["trainingCoding"]
                        },
                        {
                          url: "organization",
                          valueCoding: user["trainingIpCoding"]
                        },
                        {
                          url: "date",
                          valueDate: user["Last_Training_Date"]
                        },
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

            if (user['Financial'] != null) {
              bundleData.push({
                resource: {
                  resourceType: "Basic",
                  meta: {
                    profile: [
                      "http://ihris.org/fhir/StructureDefinition/ihris-basic-payment",
                    ],
                  },
                  extension: [
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-payment",
                      extension: [
                        {
                          url: "payment",
                          valueString: user["Amount"]
                        },
                        {
                          url: "recieve",
                          valueCoding: user["financialCoding"]
                        },
                        {
                          url: "frequency",
                          valueCoding: user["frequencyCoding"]
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
            if (user['Incentive1'] != null) {
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
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-incentive",
                      extension: [
                        {
                          url: "incentive",
                          valueCoding: user["incentive1Coding"]
                        },
                        {
                          url: "organization",
                          valueCoding: ""
                        },
                        {
                          url: "functional",
                          valueCoding: ""
                        },
                        {
                          url: "date",
                          valueDate: ""
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
            if (user['Incentive2'] != null) {
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
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-incentive",
                      extension: [
                        {
                          url: "incentive",
                          valueCoding: user["incentive2Coding"]
                        },
                        {
                          url: "organization",
                          valueCoding: ""
                        },
                        {
                          url: "functional",
                          valueCoding: ""
                        },
                        {
                          url: "date",
                          valueDate: ""
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
            if (user['Incentive3'] != null) {
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
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-incentive",
                      extension: [
                        {
                          url: "incentive",
                          valueCoding: user["incentive3Coding"]
                        },
                        {
                          url: "organization",
                          valueCoding: ""
                        },
                        {
                          url: "functional",
                          valueCoding: ""
                        },
                        {
                          url: "date",
                          valueDate: ""
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
            if (user['Service1'] != null) {
              bundleData.push({
                resource: {
                  resourceType: "Basic",
                  meta: {
                    profile: [
                      "http://ihris.org/fhir/StructureDefinition/ihris-basic-function",
                    ],
                  },
                  extension: [
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                      valueReference: {
                        reference: `Practitioner/${userId}`,
                      },
                    },
                    {
                      url: "http://ihris.org/fhir/StructureDefinition/ihris-function",
                      extension: [
                        {
                          url: "function",
                          valueCoding: user["service1Coding"]
                        },
                        {
                          url: "organization",
                          valueCoding: ""
                        },
                        {
                          url: "comment",
                          valueString: ""
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
            if (user['Service2'] != null) {
             bundleData.push({
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-function",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-function",
                    extension: [
                      {
                        url: "function",
                        valueCoding: user["service2Coding"]
                      },
                      {
                        url: "organization",
                        valueCoding: ""
                      },
                      {
                        url: "comment",
                        valueString: ""
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
            if (user['Mentorship'] != null) {
             bundleData.push({
              resource: {
                resourceType: "Basic",
                meta: {
                  profile: [
                    "http://ihris.org/fhir/StructureDefinition/ihris-basic-mentorship",
                  ],
                },
                extension: [
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference-chw",
                    valueReference: {
                      reference: `Practitioner/${userId}`,
                    },
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-mentorship",
                    extension: [
                      {
                        url: "mentorship",
                        valueCoding: user["mentorshipCoding"]
                      },
                      {
                        url: "organization",
                        valueCoding: user["mentorshipIPCoding"]
                      },
                      {
                        url: "date",
                        valueDate: user["Last_Mentorship_Date"]
                      }
                    ]
                  }
                ]
             },
             request: {
               method: "POST",
               url: "Basic",
             }
            });
          }
       // ];
    });
    return bundleData;
};

function processJobs(usersData) {
    return new Promise((resolve, reject) => {
        const validation = userDataValidation(usersData);
        if (!validation.isValid) {
          console.log("NOT VALID")
          console.log(JSON.stringify(validation.message,null,2))
            resolve(validation);
        } else {
            template(usersData)
                .then((practitionerDetails) => {
                    console.log("I AM DONE WITH TEMPLATE")
                    bundle.entry = practitionerDetails
                    console.log(JSON.stringify(bundle,null,2))
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