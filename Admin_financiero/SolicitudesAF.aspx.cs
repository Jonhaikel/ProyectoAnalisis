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
using Negocio;

namespace Proyecto.Admin_financiero
{
    public partial class SolicitudesAF : System.Web.UI.Page
    {
        private void ListarRequisicionesAproFina()
        {
            try
            {
                GridView1.DataSource = NRequisicion.ListarRequisicionesAproFina(txtCedulaUsu.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void BuscarRequisicionesAproFinaNombre()
        {
            try
            {
                GridView1.DataSource = NRequisicion.BuscarRequisicionesAproFinaNombre(txtCedulaUsu.Text, txtNombreBuscar.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void BusquedaRequisicionesAproFinaId()
        {
            try
            {
                GridView1.DataSource = NRequisicion.BusquedaRequisicionesAproFinaId(txtCedulaUsu.Text, txtIdBuscar.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookieUsuario;
            cookieUsuario = Request.Cookies["cookieUsuario"];

            if (cookieUsuario == null)
                lblMensaje.Text = "No hay datos que procesar!!!";
            else
            {
                txtCedulaUsu.Text = cookieUsuario["CedulaUsu"];
            }
            if (!IsPostBack)
            {
                this.ListarRequisicionesAproFina();

            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string Rpta = "";
                Rpta = NRequisicion.ActualizarRequisicionAproFina(txtCedulaUsu.Text, int.Parse(txtIdRequi.Text), txtDescripcion.Text, ddlEstado.Text);
                if (Rpta.Equals("OK"))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "SolicitudAct()", true);
                    this.ListarRequisicionesAproFina();

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "Error()", true);
                }


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        protected void chkSelect_CheckedChanged(object sender, EventArgs e)
        {
            int fila = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox chk = (CheckBox)GridView1.Rows[fila].FindControl("chkSelect");

            if (chk.Checked)
            {

                txtIdRequi.Text = GridView1.Rows[fila].Cells[1].Text;
                txtArticulo.Text = GridView1.Rows[fila].Cells[4].Text;
                txtPrecioA.Text = GridView1.Rows[fila].Cells[6].Text;
            }
            else
            {
                txtIdRequi.Text = "";
                txtArticulo.Text = "";
                txtPrecioA.Text = "";
            }
        }

        protected void txtNombreBuscar_TextChanged(object sender, EventArgs e)
        {
            this.BuscarRequisicionesAproFinaNombre();
        }

        protected void txtIdBuscar_TextChanged(object sender, EventArgs e)
        {
            this.BusquedaRequisicionesAproFinaId();
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