
const controller={
  visualizar:(req,res)=>{
        res.render('index');
      },

  listar:(req,res)=>{
     req.getConnection((error,conexion)=>{
       conexion.query('select * from futbol',(error, datos)=>{
         if(error){
         res.json(error); 
       }
       console.log('Datos de futbol');
        res.render('datosservidor',{
          data:datos
        });
      });
    }); 
  },

  pagfutbol:(req,res)=>{
      req.getConnection((error,conexion)=>{
      conexion.query('select * from futbol',(error, datos)=>{
        if(error){
        res.json(error); 
      }
      console.log('Pag futbol mapa');
        res.render('paginafutbol',{
          data:datos
        });
      });
    });
  },

  pagbasket:(req,res)=>{
    req.getConnection((error,conexion)=>{
      conexion.query('select * from basket',(error, datos)=>{
        if(error){
        res.json(error); 
      }
      console.log('paginabasketpaginabasket');
        res.render('paginabasket',{
          data:datos
        });
      });
    });


  },

  pagparques:(req,res)=>{
    req.getConnection((error,conexion)=>{
      conexion.query('select * from parque',(error, datos)=>{
        if(error){
        res.json(error); 
      }
      console.log('Pag pagparques');
        res.render('paginaparques',{
          data:datos
        });
      });
    });


  },


  // listarfutbol:(req,res)=>{
  //   req.getConnection((error,conexion)=>{
  //     conexion.query('select * from futbol',(error, datos)=>{
  //       if(error){
  //       res.json(error); 
  //     }
  //     console.log('Tabla de basket');
  //       res.render('tablafutbol',{
  //         data:datos
  //       });
  //     });
  //   });
  // },

  // listarbasket:(req,res)=>{
  //   req.getConnection((error,conexion)=>{
  //     conexion.query('select * from basket',(error, datos)=>{
  //       if(error){
  //       res.json(error); 
  //     }
  //     console.log('Tabla de basket');
  //       res.render('tablabasket',{
  //         data:datos
  //       });
  //     });
  //   });
  // },


  listardatospob:(req,res)=>{
    req.getConnection((error,conexion)=>{
      conexion.query('select * from datos_poblacion',(error, datos)=>{
        if(error){
        res.json(error); 
      }
      console.log('Tabla de basket');
        res.render('datos_poblacion',{
          data:datos
        });
      });
    });
  },



//-----------------------------------------------
 insertar:(req, res)=>{
    req.getConnection((error, conectar)=>{
      const datos=req.body;
      conectar.query('Insert into datos_poblacion set ?',[datos],(error, data)=>{
        if(error) throw error;
        res.redirect('/datos_poblacion')
      })
    });

  },
  borrar:(req,res)=>{
    req.getConnection((error, conexion)=>{
      const id=req.params.id;
      conexion.query('delete from datos_poblacion where id=?',[id],(error, rows)=>{
        res.redirect('/datos_poblacion');
      })
    })

  },
  editar:(req,res)=>{
    const clave=req.params.id;
    req.getConnection((error, con)=>{
      con.query('select * from datos_poblacion where id=?',[clave],(error, datos)=>{
        console.log(datos);
        res.render('editar',{
          data: datos[0]

        })
      })
    })

  },
  actualizar:(req,res)=>{
    const id=req.params.id;
    console.log(id);
    const nuevo=req.body;
    console.log(nuevo);
    req.getConnection((error, db)=>{
      db.query('UPDATE datos_poblacion set ? where id=?', [nuevo, id], (error, rows)=>{
        console.log(rows);
        res.redirect('/datos_poblacion')
      })
    })
  }
}


module.exports=controller;




