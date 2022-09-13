/* eslint-disable react/prop-types */
import React from "react";

function CarsForms({ updateCars, car, makers, models, index }) {
  return (
    <div className="row border m-5 p-4">
      <h4 className="car_maker_id">Ajout d'une Voiture</h4>
      <select
        onChange={(event) => updateCars(event, index)}
        name="car_maker_id"
      >
        Selectionner son constructeur
        {makers.map((maker) => (
          <option value={maker.id}>{maker.car_maker}</option>
        ))}
      </select>
      <select
        onChange={(event) => updateCars(event, index)}
        name="car_model_id"
      >
        Selectionner son modèle
        {models.map((model) => (
          <option value={model.id}>{model.car_model}</option>
        ))}
      </select>
      <label htmlFor="year">
        Année
        <input
          type="number"
          id="year"
          name="year"
          onChange={(event) => updateCars(event, index)}
          value={car.year}
        />
      </label>
    </div>
  );
}

export default CarsForms;
