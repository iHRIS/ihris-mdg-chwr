const moment = require("moment")

const index = {
  age: (fields) => {
    return new Promise((resolve, reject) => {
      let age = moment().diff(fields.dob, 'years');
      resolve(age)
    })
  },
  startyear: (fields) => {
    return new Promise((resolve, reject) => {
      let year = moment(fields.startDate).year();
      resolve(year)
    })
}
}

module.exports = index
