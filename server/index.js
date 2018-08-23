const express = require('express');
const bodyParser = require('body-parser');
const massive = require('massive')
require('dotenv').config();
const app = express();
const C = require('./controller');


app.use(bodyParser.json());

massive(process.env.CONNECTION_STRING)
.then(database => {app.set('db', database)})


app.get('/api/heroes', C.getHeroes);

const port = 4000;
app.listen(port, ()=>console.log(`server listening on port ${port}`))