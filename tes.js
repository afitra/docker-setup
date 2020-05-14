'use strict';
require('dotenv').config(); //package dotenv
console.log("tessss JAlan", process.env.port) //env dari docker-compose
console.log(">>>>", process.env.yes); //env dari package dotenv



const express = require('express');

// Constants
const PORT = process.env.port;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    res.send('Hello World lah lah');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);