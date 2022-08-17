using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using Negocio;

namespace Proyecto.Comprador
{
    public partial class Soli : System.Web.UI.Page
    {
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
        }

        protected void btnGuardar_Click1(object sender, EventArgs e)
        {
            try
            {
                string Rpta = "";

                Rpta = NRequisicion.CrearRequisicion(txtCedulaUsu.Text, txtDescripcion.Text, Convert.ToDouble(txtPrecio.Text), Convert.ToInt32(txtCantidad.Text), txtNombreArt.Text);

                if (Rpta.Equals("OK"))
                {
                    string Rpta1 = "";
                    Rpta1 = NRequisicion.CrearRequisicionHist(txtCedulaUsu.Text, "");
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme()", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme3()", true);

                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme2()", true);
            }
        }
    }
}