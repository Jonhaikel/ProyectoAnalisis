using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Configuration;

namespace Proyecto.Admin_financiero
{
    public partial class SolicitudesAF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*protected void btnEmail_click(object sender, EventArgs e)
        {
            MailMessage correo = new MailMessage();
            correo.From = new MailAddress("dxhjxm@outlook.com", "bienvenido", System.Text.Encoding.UTF8);//Correo de salida
            correo.To.Add("dxhjxm@outlook.com"); //Correo destino?
            correo.Subject = "Correo de prueba"; //Asunto
            correo.Body = "Este es un correo de prueba desde c#"; //Mensaje del correo
            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient();
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.office365.com"; //Host del servidor de correo
            smtp.Port = 587; //Puerto de salida
            smtp.Credentials = new System.Net.NetworkCredential("dxhjxm@outlook.com", "*********");//Cuenta de correo
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;
            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors tlslPolicyErrors) { return true; };
            smtp.EnableSsl = false;//True si el servidor de correo permite ssl
                                     smtp.Send(correo);

            
        }*/
    }
}