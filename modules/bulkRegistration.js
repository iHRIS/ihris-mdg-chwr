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
          //{Nationality: "nationalityCoding"},
          {JobTitle: "jobCoding"},
          /*{EmploymentTerms: "employmentCoding"},
          {PayGrade: "gradeCoding"},*/
          {Fokotany: "facilityId"},
          {Commune: "communeId"}
        ];

        let dateType = [
          /*  "BirthDate",
            "StartDate",
            "EndDate",
            "LeaveStartDate",
            "LeaveEndDate",
            "LeaveRequestDate",
            "EvaluationStartDate",
            "EvaluationEndDate",
            "PreviousWorkStartDate",
            "PreviousWorkEndDate",
            "Year"*/
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
            "Firstname",
            "Commune"
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
                            text: user["Firstname"] + " " + user["Surname"] + " " + user["Othernames"],
                            given: [user["Surname"], user["Othernames"] ],
                            family: user["Firstname"],
                            prefix: [user["Prefix"]],
                            suffix: [user["Suffix"]]
                        }
                    ],
                    gender: user["genderCoding"].code,
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
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-start-year",
                    valueDate: user["StartYear"]
                  },
                  {
                    url: "http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-commune",
                    valueReference: {
                      reference: `Location/${user["communeId"]}`
                    }
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
            }];
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