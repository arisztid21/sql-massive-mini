const express = require('express');
const bodyParser = require('body-parser');
const massive = require('massive');
const dotenv = require('dotenv');
dotenv.config();
const heroesController = require('./heroes_controller');

const app = express();
app.use(bodyParser.json());

massive(process.env.CONNECTION_STRING).then(database => {
  app.set('db', database)
});

app.get('/api/heroes', heroesController.getHeroes);

const PORT = 2000;
app.listen(PORT, () => {
  console.log(`Server is listening on ${PORT} 🚀`);
});