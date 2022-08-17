using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Proyecto.Admin_Jefe
{
    public partial class Solicitudes : System.Web.UI.Page
    {
        private void ListarRequisicionesAproJefe()
        {
            try
            {
                GridView1.DataSource = NUsuario.ListarRequisicionesAproJefe(txtCedulaUsu.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void BuscarRequisicionesAproJefe()
        {
            try
            {
                GridView1.DataSource = NUsuario.BuscarRequisicionesAproJefe(txtCedulaUsu.Text, txtNombreBuscar.Text);
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        private void BusquedaRequisicionesAproJefeId()
        {
            try
            {
                GridView1.DataSource = NUsuario.BusquedaRequisicionesAproJefeId(txtCedulaUsu.Text, txtIdBuscar.Text);
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
                this.ListarRequisicionesAproJefe();

            }

            
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            this.BuscarRequisicionesAproJefe();
            //this.ListarRequisicionesAproJefe();
        }

        protected void txtNombreBuscar_TextChanged(object sender, EventArgs e)
        {
            BuscarRequisicionesAproJefe();
        }

        protected void chkSelect_CheckedChanged(object sender, EventArgs e)
        {
            int fila = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox chk = (CheckBox)GridView1.Rows[fila].FindControl("chkSelect");

            if(chk.Checked) { 

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

        protected void txtIdBuscar_TextChanged(object sender, EventArgs e)
        {
            this.BusquedaRequisicionesAproJefeId();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string Rpta = "";
                Rpta = NRequisicion.ActualizarRequisicionAproJefe(txtCedulaUsu.Text, int.Parse( txtIdRequi.Text), txtDescripcion.Text, ddlEstado.Text);
                if (Rpta.Equals("OK"))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "SolicitudAct()", true);
                    this.ListarRequisicionesAproJefe();

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
    }
}