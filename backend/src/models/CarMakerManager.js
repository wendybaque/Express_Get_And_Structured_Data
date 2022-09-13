const AbstractManager = require("./AbstractManager");

class CarMakerManager extends AbstractManager {
  static table = "car_make";

  // Tri par ordre alphabétique des constructeurs :
  findAll() {
    return this.connection.query(
      `select * from  ${this.table} ORDER BY car_maker`
    );
  }
}

module.exports = CarMakerManager;
