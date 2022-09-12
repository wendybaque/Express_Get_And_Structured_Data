import React, { useEffect, useState } from "react";
import axios from "axios";

export default function Home() {
  const [peoples, setPeoples] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/peoples`)
      .then((res) => setPeoples(res.data))
      .catch((err) => console.error(err));
  }, []);
  return (
    <div>
      <h1>LOL ! </h1>
      {peoples.map((people) => (
        <div>
          <h3>
            {people.firstname} - {people.lastname}
          </h3>
          <p>{people.company}</p>
          {people.cars.map((car) => (
            <div>
              <h6>{car.car_vin}</h6>
            </div>
          ))}
        </div>
      ))}
    </div>
  );
}
