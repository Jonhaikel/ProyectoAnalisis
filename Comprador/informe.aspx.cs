using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Proyecto.Comprador
{
    public partial class informe : System.Web.UI.Page
    {

        private void ListarRequisiciones()
        {
            string valor = ddlEstado.Text;

            try
            {
                if (valor == "Todos")
                {
                    valor = "";
                }

                GridView1.DataSource = NRequisicion.ListarRequisicones(txtCedulaUsu.Text,valor);
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
                this.ListarRequisiciones();

            }
            
        }

        protected void ddlEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ListarRequisiciones();
        }
    }
}