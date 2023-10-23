using AppMaster.entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.datos
{
    public class ClpersonaListD
    {
        private List<ClPersonaListE> personas = new List<ClPersonaListE>();

        private static ClpersonaListD instancia;

        public static ClpersonaListD obtnerInstancia()
        {
            if (instancia == null)
            {
                instancia = new ClpersonaListD();
            }

            return instancia;

        }     

        public List<ClPersonaListE> listaPersonas()
        {
            ClPersonaListE persona1 = new ClPersonaListE
            {
                nombre="pedro",
                apellido="cardenas",
                edad=23,
                direccion="chameza"
            };
            personas.Add(persona1);

            ClPersonaListE persona2 = new ClPersonaListE
            {
                nombre = "sebastian ",
                apellido = "martinez",
                edad = 33,
                direccion = "chameza"
            };
            personas.Add(persona2);

            ClPersonaListE persona3 = new ClPersonaListE
            {
                nombre = "maria",
                apellido = "fernandez",
                edad = 45,
                direccion = "calle 10 carrera 20"
            };
            personas.Add(persona3);

            ClPersonaListE persona4 = new ClPersonaListE
            {
                nombre = "miguel",
                apellido = "martinez",
                edad = 54,
                direccion = "calle 45 carrera 20"
            };
            personas.Add(persona3);

            ClPersonaListE persona5 = new ClPersonaListE
            {
                nombre = "ferney ",
                apellido = "rojas",
                edad = 31,
                direccion = "calle 5 carrera 5"
            };
            personas.Add(persona5);

            ClPersonaListE persona6 = new ClPersonaListE
            {
                nombre = "fernanda astrid",
                apellido = "zorro",
                edad = 76,
                direccion = "calle 89 carrera 10"
            };
            personas.Add(persona6);

            ClPersonaListE persona7 = new ClPersonaListE
            {
                nombre = "daniel alfredo",
                apellido = "montañez corredor",
                edad = 27,
                direccion = "calle 2 carrera 1"
            };
            personas.Add(persona6);



            return personas;
        }
    }
}