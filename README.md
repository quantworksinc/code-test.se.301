## Code Test for General Software Engineers

This is a code test for general Software Engineers at Quantworks. Consider this an assessment rather than a graded exam. This test helps us gauge a candidate's level of familiarity and comfort with technologies and techniques.

### Project Description
Simple data visualization web application.

#### Solution Requirements
- The web app:
  - Is built with ```Node.js``` and ```Vue.js```
  - Dsiplays a bar chart which presents data retrieved server via ```REST API```
  - Has a data entry form which submits data to server via ```REST API```

#### Screenshots
-![Revenue Chart](doc/revenue.png?raw=true "Revenue")
-![Form Valiation](doc/validation.png?raw=true "Form Validation")
-![Update Form](doc/form.png?raw=true "Update Form")

- The UI:
  - Is completely written in ```Vue.js```
  - Uses ```Vuetify``` for Material Design theme
  - Uses ```vue-router``` for UI side routing
  - Uses ```axios``` for sending and receiving AJAX requests over REST API
  - Loads the BarChart with ```vue-chartjs``` library
  - Mounts and re-renders components on every route change to fetch fresh dynamic content
  - Latest ```ES6``` syntax (async/await and pointer functions)
  - Implements ```UI validations``` in the form

- The server:
  - Is written in Node.js
  - Uses JSON format for transactions
  - Stores data with PostgreSQL database
  - Returns JSON data of bar chart to client
  - Receives form data from client
  - Runs default on ```localhost``` on port ```3000```.
  - To run, run the command `npm run start` from inside the project directory 
  - NOTE: Changes in DB Connection Config can be made in the ```./src/api/revenue.js``` file

- The database:
  - Is a PostgreSQL database
  - SQL dump is present in the repository for pre-seeding the database. 
  - Run the SQL dump before running the server. It is assumed that the system already has PostgreSQL installed, up and running.

Optional Requirements:
  - Most of the tasks are automated using NPM RUN commands as follows:
    - Start the UI in development mode: ``` npm run serve ```
    - Start the server in development mode: ``` npm run dev-server ```
    - Build UI and create /dist folder: ``` npm run build ```
    - Run the Node server and deploy application: ``` npm run start ```
    - To ``` make ``` the application in 1 pass, run the shell file ``` deploy.sh ```

Would like to implement the following functionalities in future:
- user accounts with secure password storage
- endpoint authorization with JWT
- machine readable logging for each service
- very basic health endpoints for each service