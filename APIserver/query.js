const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'password',
  port: 5432,
})

const getUsers = (request, response) => {
    pool.query('SELECT season_died, COUNT(*) FROM char_death_details GROUP BY season_died ORDER BY season_died', (error, results) => {
        if (error) {
        response.status(400).send('Unsucessful DB operation')
        }
        response.status(200).json(results.rows)
    })
}

const addDeaths = (request, response) => {
    //read from JSON (req) 
    //mapping
    var season_died = request.body.seasonDied;
    var name = request.body.name;  
    var episode_died = request.body.episodeDied; 
    var killed_by = request.body.killedBy; 
    
    pool.query('INSERT INTO char_death_details(season_died, name, episode_died, killed_by) VALUES ($1, $2, $3, $4)', [season_died, name, episode_died, killed_by], (error, results) => {
        if (error) {
        response.status(400).send('Unsucessful DB operation')
        }
        response.status(200).json(results.rows)
    })
}
module.exports = {
    getUsers,
    addDeaths
}

