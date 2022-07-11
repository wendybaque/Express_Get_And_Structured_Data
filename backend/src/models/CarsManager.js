const AbstractManager = require("./AbstractManager");

class CarsManager extends AbstractManager {
  static table = "cars";

  insert(item) {
    return this.connection.query(
      `insert into ${CarsManager.table} (title) values (?)`,
      [item.title]
    );
  }

  update(item) {
    return this.connection.query(
      `update ${CarsManager.table} set title = ? where id = ?`,
      [item.title, item.id]
    );
  }

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
