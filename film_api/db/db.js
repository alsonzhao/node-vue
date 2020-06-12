const mysql = require('mysql');

const conn = mysql.createConnection({
   host:'139.196.45.169',    //数据库地址
   user:'root', //用户名
   password:'123456', //密码
   database:'film_db' //数据库名
});
conn.connect();
module.exports = conn;
