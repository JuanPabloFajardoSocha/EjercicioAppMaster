using AppMaster.datos;
using AppMaster.entidades;
using AppMaster.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{
    public partial class vectores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() !="admin")
            {
                Response.Redirect("error.aspx");
              
            }
           
        }
            

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            int edad = int.Parse(textEdad.Text);
            string genero = "";
            if (rbtnMasculino.Checked)
            {               
                genero = "masculino";               
            }
            else if (rbtnFemenino.Checked)
            {
                genero = "femenino";              
            }
            ClPersonaL objPersonaL = new ClPersonaL();
            List<ClPersonaE> datos = objPersonaL.nuevaBusqueda(edad,genero);
            if (datos==null)
            {
                lblGenero1.Text = "no hay datos";
            }
            else
            {
                mostrarDatos(datos);
            }

        }

        public void mostrarDatos(List<ClPersonaE> datosPersonas)
        {
            foreach (var persona in datosPersonas)
            {
                TableRow row = new TableRow();
                TableCell nombre= new TableCell();
                nombre.Text = persona.nombre;
                row.Cells.Add(nombre);

                TableCell apellido = new TableCell();
                apellido.Text= persona.apellido;
                row.Cells.Add(apellido);

                TableCell genero = new TableCell();
                genero.Text= persona.genero;
                row.Cells.Add(genero);

                TableCell edad = new TableCell();
                edad.Text= persona.edad.ToString();
                row.Cells.Add(edad);

                Table1.Rows.Add(row);               
            }
        }


        protected void rbtnFemenino_CheckedChanged(object sender, EventArgs e)
        {
            rbtnMasculino.Checked=false;            
        }

        protected void rbtnMasculino_CheckedChanged(object sender, EventArgs e)
        {
            rbtnFemenino.Checked = false;            
        }
    }
}