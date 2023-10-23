using AppMaster.datos;
using AppMaster.entidades;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.logica
{
    public class ClPersonaArrayListL
    {
        ClPersonaArrayListD instancia=ClPersonaArrayListD.obtnerInstancia();
        public string agregarPersona(ClPersonaArrayListE persona)
        {            
           return instancia.agregarPersona(persona);
        }

        public ArrayList datosPersonas()
        {           
            return  instancia.mostrarPersonas();           
        }
    }
}