const express = require('express');
const bodyParser= require('body-parser');
const massive = require('massive');
require('dotenv').config();

const app = express();
app.use(bodyParser.json());

massive(process.env.CONNECTION_STRING).then(database => {
    app.set('db', database);
}).catch(error => {
    console.log('-------- error', error);
})

app.get('/api/heroes', (req,res)=>{
    req.app.get('db').get_heroes().then(heroes => {
        res.json(heroes)
    }).catch(error => {
        console.log('error', error)
        res.status(500).send('there was an error on the server')
    })
})

const port = 3001;
app.listen(port, ()=>{console.log(`server is listening on port ${port}`)});