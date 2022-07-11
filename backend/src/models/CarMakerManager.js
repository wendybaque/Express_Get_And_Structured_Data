const AbstractManager = require("./AbstractManager");

class CarMakerManager extends AbstractManager {
  static table = "car_make";

  insert(item) {
    return this.connection.query(
      `insert into ${CarMakerManager.table} (title) values (?)`,
      [item.title]
    );
  }

  update(item) {
    return this.connection.query(
      `update ${CarMakerManager.table} set title = ? where id = ?`,
      [item.title, item.id]
    );
  }
}

module.exports = CarMakerManager;
