using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{

    public partial class condicionales : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() != "admin")
            {
                Response.Redirect("error.aspx");
            }

        }

        protected string nuevoColor()
        {
            string[] colores = { "amarillo", "azul", "morado", "negro", "rojo", "verde" };
            Random rand = new Random();
            int numeroColor = rand.Next(0, 5);
            return colores[numeroColor];

        }

        protected void calcularPuntaje(string colorBoton)
        {
            string colorLabel = lblNuevoColor.Text;

            if (colorLabel == colorBoton)
            {
                lblPuntaje.Text = "CORRECTO";
            }
            else
            {
                lblPuntaje.Text = "INCORRECTO";
            }

        }

        protected void esPrimario(string color)
        {
            switch (color)
            {
                case "amarillo":
                    lblResultado.Text = "Es un color primario";
                    break;
                case "azul":
                    lblResultado.Text = "Es un color primario";
                    break;
                case "morado":
                    lblResultado.Text = "No es un color primario";
                    break;
                case "negro":
                    lblResultado.Text = "No es un color primario";
                    break;

                case "rojo":
                    lblResultado.Text = "Es un color primario";
                    break;
                case "verde":
                    lblResultado.Text = "No es un color primario";
                    break;

            }
        }



        protected void btnAmarillo_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "amarillo";
            calcularPuntaje(colorBoton);
        }

        protected void btnAzul_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "azul";
            calcularPuntaje(colorBoton);
        }

        protected void btnMorado_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "morado";
            calcularPuntaje(colorBoton);
        }

        protected void btnNegro_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "negro";
            calcularPuntaje(colorBoton);
        }

        protected void btnRojo_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "rojo";
            calcularPuntaje(colorBoton);
        }

        protected void btnVerde_Click(object sender, ImageClickEventArgs e)
        {
            string colorBoton = "verde";
            calcularPuntaje(colorBoton);
        }

        protected void btnNuevoColor_Click(object sender, EventArgs e)
        {
            lblNuevoColor.Text = nuevoColor();
            lblPuntaje.Text = "";
        }

        protected void azul_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("azul");
        }

        protected void amarillo_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("amarillo");
        }

        protected void morado_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("morado");
        }
      

        protected void negro_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("negro");
        }

        protected void rojo_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("rojo");
        }

        protected void verde_Click(object sender, ImageClickEventArgs e)
        {
            esPrimario("verde");
        }
    }
}