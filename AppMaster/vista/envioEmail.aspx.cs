using System;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

namespace AppMaster.vista
{
    public partial class envioEmail : System.Web.UI.Page
    {
        MailMessage correo = new MailMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString() != "admin")
            {
                Response.Redirect("error.aspx");
            }
            
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            crearCorreo();
            enviarCorreo();
        }

        public void crearCorreo()
        {            
            correo.From = new MailAddress(textEmisor.Value, textEmisor.Value, System.Text.Encoding.UTF8);
            correo.To.Add(textReceptor.Value); 
            correo.Subject = textAsunto.Value; 
            correo.Body = textAreaMensaje.Value; 
            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
        }
        public void enviarCorreo()
        {
            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com"; 
                smtp.Port = 587; 
                smtp.Credentials = new System.Net.NetworkCredential("fajardop662@gmail.com", "bqxfzaliokxcztgo");
                ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
                smtp.EnableSsl = true;
                smtp.Send(correo);
                Informacion.Text = "Email enviado con exito";
                limpiarFormularioCorreo();
            }
            catch(Exception e)
            {
                Informacion.Text = "Error al enviar Email: " + e.Message;
            }
        }

        public void limpiarFormularioCorreo()
        {
            textEmisor.Value = "";
            textReceptor.Value = "";
            textAsunto.Value = "";
            textAreaMensaje.Value = "";
        }
    }
}