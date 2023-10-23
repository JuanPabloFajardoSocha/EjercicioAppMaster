using AppMaster.datos;
using AppMaster.entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.logica
{
    public class ClPersonaListL
    {
        ClpersonaListD instancia = ClpersonaListD.obtnerInstancia();
        

        public List<ClPersonaListE> datosPersonas()
        {
            return instancia.listaPersonas();
        }
    }
}