const express = require('express');
const r = express.Router();
const pool = require('../pool.js');

//请求商品列表接口
r.get('/productlist',(req,res) => {
    let area = decodeURI(req.query.area);
    let startTime = req.query.startTime;
    let endTime = req.query.endTime;
    
    let sql = '';
    if (area == '全部') {
        sql = 'SELECT pname,price,pimg,location FROM product';
    } else {
        sql = 'SELECT pname,price,pimg,location FROM product WHERE areaName=?';
    }
    pool.query(sql,[area],(err,result) => {
        if (err) throw err;
        res.send({code:1,result:result});
    })
})

module.exports = r ;