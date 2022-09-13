const AbstractManager = require("./AbstractManager");

class CarsManager extends AbstractManager {
  static table = "cars";

  insert(car) {
    return this.connection.query(
      `insert into ${CarsManager.table} (car_vin, car_color, car_city, car_country, car_year, people_id, car_maker_id, car_model_id,) values (?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        car.car_vin,
        car.car_color,
        car.car_city,
        car.car_country,
        car.car_year,
        car.people_id,
        car.car_maker_id,
        car.car_model_id,
      ]
    );
  }

  update(car) {
    return this.connection.query(
      `update ${CarsManager.table} set title = ? where id = ?`,
      [car.title, car.id]
    );
  }

  // find(id) {
  //   return this.connection.query(
  //     `select id from  ${this.table} AS c INNER JOIN car_make AS cmk ON cmk.id = c.car_maker.id where c.id = ?`,
  //     [id]
  //   );
  // }

  findAllById(id) {
    return this.connection
      .query(
        `SELECT c.id, c.car_city, c.car_vin, c.car_color, c.car_country, c.car_year, cmd.car_model, cmk.car_maker 
        FROM ${CarsManager.table} AS c 
        INNER JOIN car_make AS cmk ON cmk.id = c.car_maker_id 
        INNER JOIN car_model AS cmd ON cmd.id = c.car_model_id 
        WHERE people_id = ?`,
        [id]
      )
      .then((res) => res[0]);
  }
}

module.exports = CarsManager;
