## Code Test for General Software Engineers

This is a code test for general Software Engineers at Quantworks. Consider this an assessment rather than a graded exam. This test helps us gauge a candidate's level of familiarity and comfort with technologies and techniques.

### Project Description
Create a very simple data visualization web application.

#### Solution Requirements
Core Requirements:
- The web app must:
  - be built with any popular web application framework
  - have a bar chart which presents data retrieved from the API
  - have a data entry form which submits data to the API

- The server:
  - Is written in Node.js
  - Uses RESTful APIs to send and receive data
  - Uses JSON format for transactions
  - Stores data with PostgreSQL database
  - Returns JSON data of bar chart to client
  - Receives form data from client
 
- The database must:
  - be a SQL database (we prefer PostgreSQL)
  - be pre-seeded with data

Optional Requirements:
- the web app, API, and database should each be containerized
- at least the API server should have unit tests with >= 90% code coverage
- testing, building, and running should be automated via makefile, shell script, etc.

Nice-to-have Requirements:
- user accounts with secure password storage
- endpoint authorization with JWT
- machine readable logging for each service
- very basic health endpoints for each service