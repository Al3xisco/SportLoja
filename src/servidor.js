const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const path = require('path');
const app=express();
const mysql = require('mysql');
var myConnection = require('express-myconnection');
app.use(myConnection(mysql,{
/*       'host':'db4free.net',
      'port':'3306',
      'user':'al3xisco',
      'password':'al3xisco10',
      'database':'prueba111'*/
     'host':'localhost',
      'port':'3306',
      'user':'root',
      'password':'12345',
      'database':'deportes'
    },'request')
);

app.set('view engine', 'ejs');
app.set('json spaces', 4);
app.use(morgan('dev'));
app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'views'));

// app.get('/datosservidor', function (req, res)
// {
//     res.render('datosservidor.ejs'); 
// });

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

const rutas= require('./routes/rutas');

app.use('/',rutas)

app.listen('3000',()=>{
  console.log('Aplicacion iniciada en el puerto 3000');
})
