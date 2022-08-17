using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Proyecto.Administrador
{
    public partial class Registrar : System.Web.UI.Page
    {

        public void ComboLlenarRol()
        {
            try
            {
                ddlRol.DataSource = NUsuario.Listar();
                ddlRol.DataTextField = "Nombre";
                ddlRol.DataValueField = "IdRol";
                ddlRol.DataBind();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), ex.Message, "Error()", true);
            }
        }

        public void ComboLlenarJefe()
        {
            try
            {
                ddlJefe.DataSource = NUsuario.ListarJefe();
                ddlJefe.DataTextField = "Nombre";
                ddlJefe.DataValueField = "Cedula";
                ddlJefe.DataBind();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), ex.Message, "Error()", true);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ComboLlenarJefe();
            this.ComboLlenarRol();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                string Rpta = "";
                string Rpta2 = "";
                Rpta = NUsuario.InsertarUsuario(txtCedula.Text,txtNombre.Text,txtTelefono.Text, txtDireccion.Text,txtCorreo.Text,Convert.ToInt32(ddlRol.SelectedValue.ToString()),txtpassword.Text, ddlJefe.SelectedValue,Convert.ToInt32(ddlEstado.SelectedIndex.ToString()));

                if (chkAutoJefe.Checked)
                {
                    Rpta2 = NUsuario.AutoJefe(txtCedula.Text);
                }

                if (Rpta.Equals("OK") || Rpta2.Equals("OK"))
                {

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "InsertadoCo()", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), Rpta, "Error()", true);
                }

                txtCedula.Text = "";
                txtNombre.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtCorreo.Text = "";
                txtpassword.Text = "";


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }
    }
}