using AppMaster.datos;
using AppMaster.entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.logica
{
    public class ClPersonaL
    {
        public List<ClPersonaE> nuevaBusqueda(int edad, string genero)
        {
            ClpersonaD objPersona= new ClpersonaD();
            List<ClPersonaE> datos = objPersona.buscarPersonas(genero, edad);
            return datos;
        }
    }
}