using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMaster.vista
{
    public partial class manejoArchivos : System.Web.UI.Page
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
            leerArchivo();
        }

        public void leerArchivo()
        {
            StreamReader sr = new StreamReader("C:\\Users\\lenovo\\Documents\\C#Projects\\AppMaster\\AppMaster\\vista\\archivos\\archivoPrueba.txt");
            
            try
            {
                String line;
                line = sr.ReadLine();

                while (line != null)
                {
                    textAreaMensaje.InnerText += line;

                    line = sr.ReadLine();
                }             

            }
            catch (Exception e)
            {
               textAreaMensaje.InnerText += e.Message;
            }
            finally
            {
                sr.Close();
            }
           
        }


        public void escribirArchivo()
        {
            StreamWriter sw = new StreamWriter("C:\\Users\\lenovo\\Documents\\C#Projects\\AppMaster\\AppMaster\\vista\\archivos\\archivoPrueba.txt",true);
            try
            {              
                sw.WriteLine(textAreaMensaje.Value);               
            }
            catch (Exception e)
            {
              textAreaMensaje.InnerText+= e.Message;
            }
            finally
            {
                sw.Close();
            }
            
        }

        protected void btnEnviar_Click1(object sender, EventArgs e)
        {
            leerArchivo();
        }

        protected void btnLeer_Click(object sender, EventArgs e)
        {
            escribirArchivo();            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            textAreaMensaje.InnerText = "";
        }
    }
}