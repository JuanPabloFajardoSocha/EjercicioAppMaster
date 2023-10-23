using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{
    public partial class cicloWhile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() != "cliente")
            {
                Response.Redirect("error.aspx");
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            textArea.InnerText = "";

            string frase = txtPalabra.Value.ToString();
            int i = frase.Length-1;
            while (i >= 0)
            {
                char caracter = frase[i];
                textArea.InnerText += caracter;
                i--;
            }


        }
    }
}