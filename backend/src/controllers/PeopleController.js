/* eslint-disable no-param-reassign */
/* eslint-disable no-restricted-syntax */
const models = require("../models");

class PeopleController {
  // static browse = (req, res) => {
  //   models.people
  //     .findAll()
  //     .then(([rows]) => {
  //       res.send(rows);
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //       res.sendStatus(500);
  //     });
  // };

  static browse = async (req, res) => {
    try {
      const [people] = await models.people.findAll();
      if (people[0]) {
        const cars = await Promise.all([
          people.map((pers) => models.car.findById(pers.id)),
        ]);
        console.log(cars);
        people.forEach((pers, index) => {
          pers.cars = cars[index];
        });
        res.status(200).json(people);
      } else {
        res.status(400).send("No people in the database");
      }
    } catch (err) {
      console.error(err);
      res.status(500).send("Error retrieving people data");
    }
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
          res.sendStatus(404).send("No person with this id");
        } else {
          console.log(pers[0]);
          models.cars
            .findAllById(req.params.id)
            .then((cars) => {
              console.log(cars);
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
