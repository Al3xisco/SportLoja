const express = require('express');
const router=express.Router();
const controles= require('../controllers/controles');

 

router.get('/', controles.visualizar);
//router.get('/datosservidor', controles.listar);
router.get('/paginafutbol', controles.pagfutbol);
router.get('/paginabasket', controles.pagbasket);
router.get('/paginaparques', controles.pagparques);
//router.get('/tablafutbol', controles.listarfutbol);
//router.get('/tablabasket', controles.listarbasket);
router.get('/datos_poblacion', controles.listardatospob);


router.post('/datos_poblacion/Insertar', controles.insertar);
router.get('/datos_poblacion/borrar/:id', controles.borrar);
router.get('/datos_poblacion/actualizar/:id', controles.editar);
router.post('/datos_poblacion/actualizar/:id', controles.actualizar);
 

module.exports=router;
