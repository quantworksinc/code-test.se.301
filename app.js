const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
const logger = require('morgan')

const revenue = require('./src/api/revenue')

const app = express()

app.use(logger('dev'))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true })
)
app.use(express.static(path.join(__dirname, 'dist')))

app
  .get('/revenue', revenue.getRevenue)
  .post('/revenue', revenue.updateRevenue)
  .get('/', function (req, res, next) {
    res.sendFile(path.join(__dirname, 'dist', 'index.html'))
  })

module.exports = app
