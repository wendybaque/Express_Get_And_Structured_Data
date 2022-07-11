const express = require("express");

const {
  ItemController,
  PeopleController,
  CarMakerController,
  CarModelController,
  CarsController,
} = require("./controllers");
const { printPeopleID } = require("./middleware/PeopleMiddleware");

const router = express.Router();

router.get("/items", ItemController.browse);
router.get("/items/:id", ItemController.read);
router.put("/items/:id", ItemController.edit);
router.post("/items", ItemController.add);
router.delete("/items/:id", ItemController.delete);

router.get("/people", PeopleController.browse);
router.get("/people/:id", PeopleController.read);

router.get("/maker", CarMakerController.browse);
router.get("/maker/:id", CarMakerController.read);

router.get("/model", CarModelController.browse);
router.get("/model/:id", CarModelController.read);

router.get("/cars", CarsController.browse);
router.get("/cars/:id", CarsController.read);

router.get("/fullPeople", PeopleController.fullPeople);
router.get("/fullPeople/:id", printPeopleID, PeopleController.fullPeopleOne);

module.exports = router;
