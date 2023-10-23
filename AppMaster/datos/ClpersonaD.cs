using AppMaster.entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.datos
{
    public class ClpersonaD
    {
        public ClPersonaE[] crearArrayPersonas()
        {
            ClPersonaE[] personas = new ClPersonaE[6];

            ClPersonaE persona1 = new ClPersonaE
            {
                nombre = "juan",
                apellido = "fajardo",
                genero = "masculino",
                edad = 25
            };
            personas[0] = persona1;

            ClPersonaE persona2 = new ClPersonaE
            {
                nombre = "camilo",
                apellido = "viancha",
                genero = "masculino",
                edad = 28
            };
            personas[1] = persona2;

            ClPersonaE persona3 = new ClPersonaE
            {
                nombre = "maria",
                apellido = "hernandez",
                genero = "femenino",
                edad = 20
            };
            personas[2] = persona3;

            ClPersonaE persona4 = new ClPersonaE
            {
                nombre = "fernanda",
                apellido = "rojas",
                genero = "femenino",
                edad = 29
            };
            personas[3] = persona4;

            ClPersonaE persona5 = new ClPersonaE
            {
                nombre = "pedro",
                apellido = "martinez",
                genero = "masculino",
                edad = 30
            };
            personas[4] = persona5;

            ClPersonaE persona6 = new ClPersonaE
            {
                nombre = "carmenza",
                apellido = "sanchez",
                genero = "femenino",
                edad = 25
            };
            personas[5] = persona6;
            return personas;
        }

        public List<ClPersonaE> buscarPersonas(string genero, int edad)
        {
            List<ClPersonaE> datosPersonas = null;

            foreach (var item in crearArrayPersonas())
            {
                if (item.edad==edad && item.genero==genero)
                {
                    datosPersonas=new List<ClPersonaE>();
                    datosPersonas.Add(item);
                }               
            }
            return datosPersonas;
        }
    }
}
