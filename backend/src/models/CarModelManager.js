const AbstractManager = require("./AbstractManager");

class CarModelManager extends AbstractManager {
  static table = "car_model";

  insert(item) {
    return this.connection.query(
      `insert into ${CarModelManager.table} (title) values (?)`,
      [item.title]
    );
  }

  update(item) {
    return this.connection.query(
      `update ${CarModelManager.table} set title = ? where id = ?`,
      [item.title, item.id]
    );
  }
}

module.exports = CarModelManager;
