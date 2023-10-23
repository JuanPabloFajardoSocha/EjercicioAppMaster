using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{
    public partial class cicloFor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString()!="cliente") {
                Response.Redirect("error.aspx");
            }
            
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            textArea.InnerText = "";
            textArea.InnerText+= "Numeros primos:\n";
            int numero=int.Parse(txtNumero.Value);
            for (int i = 2; i<numero; i++)
            {
                int contador = 0;
                for (int j = 1; j < numero; j++)
                {
                    if (i % j == 0)
                    {
                        contador++;  
                    }
                }
                if (contador == 2)
                {                  
                    textArea.InnerText += i.ToString() + "\n";
                }
            }

        }
    }
}