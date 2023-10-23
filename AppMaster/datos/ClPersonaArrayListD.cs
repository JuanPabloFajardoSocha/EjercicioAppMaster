
using AppMaster.entidades;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppMaster.datos
{
    public class ClPersonaArrayListD
    {
        private ArrayList personas = new ArrayList();

        private static ClPersonaArrayListD instancia;

        public static ClPersonaArrayListD obtnerInstancia()
        {
            if (instancia == null)
            {
                instancia=new ClPersonaArrayListD();
            }

            return instancia;
            
        }



        public string agregarPersona( ClPersonaArrayListE persona)
        {
            try
            {
                personas.Add(persona);
                return "Persona registrada correctamente";
            }catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return "Error al ingresar los datos";
            }

        }

        public ArrayList mostrarPersonas()
        {
            return personas;
        }
    }
}