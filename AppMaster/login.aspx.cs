using AppMaster.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            var email=txtEmail.Text;    
            var password=txtPassword.Text;
            ClValidacion validacion = new ClValidacion();
            bool estado=validacion.MtdValidarIngreso(email,password);
            if (estado)
            {
                
                Response.Redirect("vista/home.aspx");
            }
            else
            {
                txtEmail.Text = "";
                txtPassword.Text = "";
            }
        }
    }
}