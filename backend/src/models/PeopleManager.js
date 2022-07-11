const AbstractManager = require("./AbstractManager");

class PeopleManager extends AbstractManager {
  static table = "people";

  insert(item) {
    return this.connection.query(
      `insert into ${PeopleManager.table} (title) values (?)`,
      [item.title]
    );
  }

  update(item) {
    return this.connection.query(
      `update ${PeopleManager.table} set title = ? where id = ?`,
      [item.title, item.id]
    );
  }
}

module.exports = PeopleManager;
