const models = require("../models");

const printPeopleID = (req, res, next) => {
  models.people.find(req.params.id).then((pers) => {
    if (pers[0][0]) {
      next();
    } else {
      res.status(400).send("Pers doesn t exist");
    }
  });
};

module.exports = { printPeopleID };
