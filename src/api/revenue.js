const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  password: 'postgres',
  host: 'localhost',
  database: 'revenuedb',
  port: 5432
})

const getRevenue = (request, response) => {
  pool.query('SELECT * FROM revenuetable', (error, results) => {
    if (error) {
      response.status(500)
      throw error
    }
    console.log(results)
    response.status(200).json(results.rows)
  })
}

const updateRevenue = (request, response) => {
  const { month, revenue } = request.body

  pool.query(
    'UPDATE revenuetable SET revenue = $1 WHERE month = $2',
    [revenue, month],
    (error, results) => {
      if (error) {
        response.status(500)
        throw error
      }
      response.status(200).send(`Successfully updated revenue for month: ${month}`)
    }
  )
}

module.exports = {
  getRevenue,
  updateRevenue
}
