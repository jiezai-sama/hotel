const express = require('express');
const r = express.Router();
const pool = require('../pool.js');

//请求首页头部图片
r.get('/index/header',(req,res) => {
    let sql = 'SELECT headerImg FROM hImg';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({code:1,result:result});
    });
})

//请求口所有的榜单接口
r.get('/index/billboard',(req,res) => {
    let sql = 'SELECT bid,bName,img FROM billboard';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({code:1,result:result});
    }) 
})

//请求所有地区类型的接口
r.get('/area',(req,res) => {
    let sql = 'SELECT aid,addressName FROM address';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({code:1,result:result});
    });
})



module.exports = r ;