import React, { useState, useEffect } from "react";
import axios from "axios";
import CarsForms from "../components/CarForms";

const newCar = {
  car_maker_id: "",
  car_model_id: "",
  year: "",
};

function Forms() {
  const [pers, setPers] = useState({
    firstname: "",
    lastname: "",
    company: "",
  });
  const [cars, setCars] = useState([newCar]);
  const [msg, setMsg] = useState("");
  const [makers, setMaker] = useState([]);
  const [models, setModels] = useState([]);

  const updatePers = (event) => {
    const provisoirePers = { ...pers };
    provisoirePers[event.target.name] = event.target.value;
    setPers(provisoirePers);
  };

  const updateCars = (event, index) => {
    const provisoireCars = [...cars];
    provisoireCars[index][event.target.name] = event.target.value;
    setCars(provisoireCars);
  };

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/makers`)
      .then((res) => {
        setMaker(res.data);
      })
      .catch((err) => console.error(err));

    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/models`)
      .then((res) => {
        setModels(res.data);
      })
      .catch((err) => console.error(err));
  }, []);

  const createPers = () => {
    if (pers.firstname !== "" && pers.lastname !== "" && pers.company !== "") {
      if (cars[0].car_maker_id !== "") {
        pers.cars = cars;
      }
      axios
        .post(`${import.meta.env.VITE_BACKEND_URL}/peoples`, pers)
        .catch((err) => console.error(err));
    } else {
      setMsg("Veuillez remplir tous les champs");
    }
  };

  const addCars = () => {
    setCars([...cars, newCar]);
  };

  return (
    <div>
      <h1 className="text-center">Ajouter une personnes avec ses voitures</h1>
      <form className="form-panel">
        <div className="container">
          <div className="row">
            <h3>Ajout de la personne</h3>
            <label htmlFor="firstname">
              Prénom
              <input
                type="text"
                id="firstname"
                value={pers.firstname}
                name="firstname"
                onChange={(event) => updatePers(event)}
              />
            </label>
            <label htmlFor="lastname">
              Nom
              <input
                type="text"
                id="lastname"
                value={pers.lastname}
                name="lastname"
                onChange={(event) => updatePers(event)}
              />
            </label>
            <label htmlFor="company">
              Entreprise
              <input
                type="text"
                id="company"
                value={pers.company}
                name="company"
                onChange={(event) => updatePers(event)}
              />
            </label>
          </div>
        </div>
        <p>{msg}</p>
        <div className="container">
          {cars.map((car, index) => (
            <CarsForms
              models={models}
              makers={makers}
              car={car}
              index={index}
              updateCars={updateCars}
            />
          ))}
          <button type="button" onClick={addCars} className="btn btn-success">
            Ajouter une voiture
          </button>
        </div>
        <button type="button" onClick={createPers} className="btn btn-success">
          Enregistrer
        </button>
      </form>
    </div>
  );
}

export default Forms;
