using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Proyecto.Administrador
{
    public partial class Solicitudes : System.Web.UI.Page
    {
        private void ListarRequisicionesGeneral()
        {

            try
            {

                GridView1.DataSource = NRequisicion.ListarRequisicionesGeneral(txtNombreApro.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void ListarRequisicionesGeneralClie()
        {

            try
            {

                GridView1.DataSource = NRequisicion.ListarRequisicionesGeneralClie(txtCedulaCli.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void ListarRequisicionesGeneralFina()
        {

            try
            {

                GridView1.DataSource = NRequisicion.ListarRequisicionesGeneralFina(txtNombreAproFina.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ListarRequisicionesGeneral();
            }
        }

        protected void txtCedulaApro_TextChanged(object sender, EventArgs e)
        {
            this.ListarRequisicionesGeneralFina();
        }

        protected void txtNombreApro_TextChanged(object sender, EventArgs e)
        {
            this.ListarRequisicionesGeneral();
        }

        protected void txtCedulaCli_TextChanged(object sender, EventArgs e)
        {
            this.ListarRequisicionesGeneralClie();
        }
    }
}