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
    public partial class list : System.Web.UI.Page
    {
        ClPersonaListL personas = new ClPersonaListL();
        List<ClPersonaListE> datos; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() != "cliente")
            {
                Response.Redirect("error.aspx");
            }
           
            
            
           
        }

        public void mostrarDatos()      
        {
                    
            foreach (var persona in datos)
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

                TableCell direccion = new TableCell();
                direccion.Text = persona.direccion;
                row.Cells.Add(direccion);    
                
                Table1.Rows.Add(row);   

               
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            datos = personas.datosPersonas();
            mostrarDatos();
        }
    }
}