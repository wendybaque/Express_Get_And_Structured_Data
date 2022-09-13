const AbstractManager = require("./AbstractManager");

class PeopleManager extends AbstractManager {
  static table = "people";

  insert(people) {
    return this.connection.query(
      `insert into ${PeopleManager.table} (firstname, lastname, company) values (?, ?, ?)`,
      [people.firstname, people.lastname, people.company]
    );
  }

  // update(item) {
  //   return this.connection.query(
  //     `update ${PeopleManager.table} set title = ? where id = ?`,
  //     [item.title, item.id]
  //   );
  // }
}

module.exports = PeopleManager;
