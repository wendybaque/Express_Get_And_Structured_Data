const models = require("../models");

class PeopleController {
  static browse = (req, res) => {
    models.people
      .findAll()
      .then(([rows]) => {
        res.send(rows);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  static read = (req, res) => {
    models.people
      .find(req.params.id)
      .then(([rows]) => {
        if (rows[0] == null) {
          res.sendStatus(404);
        } else {
          res.send(rows[0]);
        }
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  static fullPeople = async (req, res) => {
    const people = await models.people.findAll();
    const cars = await Promise.all(
      people[0].map((pers) => models.cars.findAllById(pers.id))
    );

    people[0].forEach((pers, index) => {
      // eslint-disable-next-line no-param-reassign
      pers.cars = cars[index];
    });

    res.send(people[0]);
  };

  static fullPeopleOne = (req, res) => {
    // Recupérer la personne
    models.people
      .find(req.params.id)
      .then(([pers]) => {
        if (pers[0] == null) {
          res.sendStatus(404);
        } else {
          models.cars
            .findAllById(req.params.id)
            .then((cars) => {
              const data = {
                ...pers[0],
                cars,
              };
              res.send(data);
            })
            .catch((err) => res.status(500).send(err));
        }
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };
}

module.exports = PeopleController;
