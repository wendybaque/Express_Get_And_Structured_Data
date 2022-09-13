import React, { useEffect, useState } from "react";
import axios from "axios";

export default function Home() {
  const [peoples, setPeoples] = useState([]);

  const getPeople = () => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/peoples`)
      .then((res) => setPeoples(res.data))
      .catch((err) => console.error(err));
  };

  useEffect(() => {
    getPeople();
  }, []);

  const deleteCars = (id) => {
    axios
      .delete(`${import.meta.env.VITE_BACKEND_URL}/cars/${id}`)
      .then(() => getPeople())
      .catch((err) => console.error(err));
  };

  return (
    <div>
      <h1>HELLO WORLD</h1>
      <div className="container">
        <div className="row">
          {peoples.map((people) => (
            <div className="col-3">
              <div className="m-3 text-center border rounded h-100">
                <h3>
                  {people.firstname} - {people.lastname}
                </h3>
                <p>{people.company}</p>
                {people.cars.map((car) => (
                  <div>
                    <h6>{car.car_model}</h6>
                    <button
                      type="button"
                      className="btn btn-warning"
                      onClick={() => deleteCars(car.id)}
                    >
                      Supprimer
                    </button>
                  </div>
                ))}
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
