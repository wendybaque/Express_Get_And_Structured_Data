## Concept

This template is meant to serve as a foundation for every P2/P3 following the React-Express-MySQL stack, as learned in Wild Code School.
It's pre-configured with a set of tools which'll help students produce industry-quality and easier-to-maintain code, while staying as simple as possible to use.

## Let'go for some back End
First, go on the backEnd folder ```cd ./backend ```. Then, you should prepare you `.env` with your own personnal data (DB_NAME=workshop_template_first_query ). Open your mysql terminal and create a Databse with the previous name.
Once done, just run `npm run migrate`.

Ok, now we have a database with this model.

## Our first steps : get confident with the structure
Based on the actual example (item), we will create the get and get by id route for all the table.

1/ Go on the *./src/route.js* file and add a line `router.get("/peoples", PeopleController.browse);`. You should add an import of your future *PeopleController* file on top.
2/ Create your *PeopleController.js* file on the controller folder and copy paste the content of the *ItemController.js* file in it. A this step, you should rename the class object and the export. Delete the static methods to edit, add and delete. On the `browse` and `read` method, replace `models.item` by `models.people`.
3/ On the model folder, create a *PeopleManage.js* file. Copy - paste the content of the *ItemManager.js* file in it. Delete the `insert` and `update` methods. We will not use it. Then, rename the table with `people`. That's the name of the table on the *database* and the name that we will use on our *controller*. Don't forget to rename the class Object with *PeopleManager* and all of its occurence.
4/ Now go on the root of the template folder and run `npm run dev-back`. Go on the postman and look for `http://localhost/peoples`. You should have all the people on the database.
5/ GO on the *router.js* file and add a new line `router.get("/people/:id", PeopleController.read);` .The `http://localhost/peoples/:id` should works as well. This is possible via the POO structure of the template. If you have a look on the *AbstractManager*, you will find the generic request that you use finally.

6/ Retry all of this step with the other table (car_model, car_make and cars) in order to get accustom to the template.

Great, we can now fetch data on all our table.

## Now, modelize data 
The goal of this part is to create a specific controller to modelize the data as bellow for the need of our front end (Iamge a card of people with all of its cars)
```
{
  "id": 10,
  "firstname": "Penni",
  "lastname": "Mauchlen",
  "company": "Analog Circuit Design manager",
  "cars" : [ //That's on the cars Table
    {
      "id": 8,
      "car_maker": "Toyota", //That's on the car_make table
      "car_model": "Yaris", //That's on the car_model table
      "car_color": "Blue",
      "And so on with all properties": ""
    }
  ]
}
```

1/ Add a new route on the *router.js* => `router.get("/peoplefull/:id, PeopleController.fullOne);`
2/ In your *PeopleController.js*, add a new static method (arrow function) call `fullOne`. In it, we will reproduce the structure of the data for one people.
3/ First we need to get one people, as on the read method. Simply copy-paste the code of the read method.
The output is the same. In the `then()` statement, we should now query the cars that belongs to this persons
4/ In order to do that, just call a `models.cars.findAllById(id)` promise.
5/ In the *CarsManagers.js*, create a new method called `findAllById(id)` that will query the database to find all the cars related to the person id.
```
SELECT * FROM ${CarsManager.table} WHERE ....
```
6/ Back to the *PeopleController.js* `FullOne()` method. In the `then()` part of your new query, you will add a key `cars` to your people Object and assign the result in it

** WARNING ** : when you launch a query with a promise the result is a double entry array. Watch out to select the `[0]` index of your result each time. You can do it by simply adding a `.then(res => res[0])` statement behind all of your new models query.

7/ Test your new route on Postman. You should see a result that starts to look like the model provided. We lack the detail of the model and the brand
8/ In your *CarsManager.js*, we have to update the `findAllById(id)` method to select jsut the right fields that we want and to add `ÌNNER JOIN car_make` and `INNER JOIN car_model` statement in our query between the `SELECT` and the `WHERE`;

When done, check it on Postman;

** BONUS **
Hard time for our back end developper. Your Front End partner found that you did a great job. Now, he or she would like the same model when fetching all the people and not only One.

>> Link to the second part https://drive.google.com/file/d/16jAp6qDVplV089iaAAk65bZOZ6t8AFui/view?usp=sharing
