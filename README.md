## Class distribution

The web app provides a simple bar chart to represent the class distribution in a classification dataset containing four classes - Apples, Bananas, Oranges, Pineapples. The tool can, with a few changes, be used for similar categorical data. But for now, lets compare some apples to oranges (and bananas and pineapples).

### Project Description
#### Solution Requirements
Core Requirements:
- The web app is:
  - built using React + Django
  - has a bar chart to show the class distribution
  - has a data entry form which allows you to add more data points and view the changes in real time
- The API server:
  - is written in Python + Django
  - has an endpoint to receive requests with data submitted as JSON and record it in the database
  - has an endpoint to receive requests to retrieve data from the database and return it as JSON
- The database is:
  - a PostgreSQL database
  - pre-seeded with data

The solution has been dockerized. I have used an image of postgres along. The frontend and the api are two separate apps within the same django project. 

The test coverage for the views (controller) is 96%. Overall the coverage is 82% but that is because of certain lines present in the model description don't get added in coverage even after the model is created. 

To run the project, go to django_server and then type in the following command. 

`docker-compose up`



Given more time(or less university assignments :( ) I would have ideally liked to add more features like:

1. Authorization
2. Different kinds of data and charts
3. Logging

P.S: Please excuse my design skills. I am much better at frontend if I have a design in front of me which I need to turn into code.

P.P.S: You can check my Google Summer of Code project over at https://github.com/Cloud-CV/Origami. I was the lead developer for the project from May 2017 - Aug 2018. It was written in Django and React too. It has docker settings for a production environment as well. 


