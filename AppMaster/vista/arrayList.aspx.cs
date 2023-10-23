using AppMaster.entidades;
using AppMaster.logica;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{
    public partial class arrayList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() != "admin")
            {
                Response.Redirect("error.aspx");
            }          
           
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ClPersonaArrayListE persona=new ClPersonaArrayListE();
            persona.nombre=textNombre.Text;
            persona.apellido=textApellido.Text;
            persona.edad = int.Parse(textEdad.Text);
            persona.direccion=textDireccion.Text;
            ClPersonaArrayListL obj= new ClPersonaArrayListL();           
            lblGenero1.Text=obj.agregarPersona(persona).ToString();
            ArrayList datosPersonas = obj.datosPersonas();
            if (datosPersonas != null)
            {
                mostrarDatos(datosPersonas);
            }
            textNombre.Text = "";
            textApellido.Text = "";
            textEdad.Text = "";
            textDireccion.Text = "";
        }

        public void mostrarDatos(ArrayList datosPersonas)
        {            
            foreach (ClPersonaArrayListE persona in datosPersonas)
            {
                TableRow row = new TableRow();
                TableCell nombre = new TableCell();
                nombre.Text = persona.nombre;               
                row.Cells.Add(nombre);

                TableCell apellido = new TableCell();
                apellido.Text = persona.apellido;
                row.Cells.Add(apellido);                

                TableCell edad = new TableCell();
                edad.Text = persona.edad.ToString();
                row.Cells.Add(edad);

                TableCell direccion= new TableCell();
                direccion.Text = persona.direccion;
                row.Cells.Add(direccion);

                Table1.Rows.Add(row);
            }
        }

    }
}