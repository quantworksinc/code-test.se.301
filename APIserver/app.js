var express = require('express');
var app = express();
var cors = require('cors');
const bodyParser = require('body-parser')
var dbconn = require('./query');

app.use(cors())
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/get-death', dbconn.getUsers);
app.post('/add-death',dbconn.addDeaths);

app.listen(3000, function () {
  console.log('API Server is up and running!');
});