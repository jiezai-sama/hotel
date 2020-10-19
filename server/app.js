const express = require('express');
const cors = require('cors');
const list = require('./router/list.js');
const get = require('./router/get.js');
const bodyParser = require('body-parser');
const app = express();
app.set('host','192.168.1.106');
app.listen(3000);
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use(cors({origin:['http://127.0.0.1:8080','http://localhost:8080','http://192.168.1.106:8080']}));
app.use('/list',list);
app.use('/get',get);
