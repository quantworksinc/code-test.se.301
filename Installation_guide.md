# Web Application 

Web application to display deceased character statistics using Game of Thrones data built on the following tech stack.

  - Node.js
  - AngularJs
  - PostgreSQL

### Tech

* [AngularJS] - HTML enhanced for web apps!
* [Visual Studio Code](https://code.visualstudio.com/) - Text editor
* [node.js] - Evented I/O for the backend
* [Express] - Fast node.js network app framework
* [Chart.Js](https://www.chartjs.org/docs/latest/charts/bar.html?q=) - Bar chart 
* [PostgreSQL](https://www.postgresql.org/download/windows/) - Database

### Installation

Navigate to ```APIserver``` folder and install the node dependencies by executing the following command 

```sh
$ npm install
```
Navigate to ```WebApp``` folder and install the AngularJs dependencies by executing the following command 

```sh
$ npm install
```
Install PostgreSQL (version 10.7)

Reference link for postgreSQL installation: [PostgreSQL](https://www.postgresql.org/download/windows/)

### Setting up the Database 
Ensure ````<path_to_postgreSQL>\PostgreSQL\10\bin```` is added to the path
In the command prompt execute the following from the directory containing the ```DBData.sql``` file:
```sh
$ psql -U postgres -h localhost -p 5432 < DBData.sql
```
Connect to postgres using the following command:
```sh
$ psql -d postgres postgres
```
Connect to the Database
```sh
$ \c postgres
```
### Running the application

Ensure the password is same as the one in postgreSQL in ```APIserver/query.js``` 
```sh
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: '<INSERT PASSWORD>',
  port: 5432,
})
```


Navigate to ```APIserver``` folder and start the node server [Starts at ```http://localhost:3000``` ]
```sh
$ node app.js
```
Navigate to ```WebApp``` folder and start the AngularJs application
```sh
$ npm start
```
Request to ``` http://localhost:8000 ``` should render the application 

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
