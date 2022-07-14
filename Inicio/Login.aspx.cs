using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Proyecto.Inicio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            login(this.txtUsuario.Text, this.txtClave.Text);

        }

        SqlConnection cn = new SqlConnection("Data Source =.\\SQLexpress; Initial Catalog = AnalisisYDisenoPrueba ; Integrated Security = True");
        private void login(string Usuario, string Clave)
        {

                cn.Open();
                SqlCommand cmd = new SqlCommand("select Cedula,IdRol from tbl_Usuario where Cedula = @usuario and (select convert(varchar,DECRYPTBYPASSPHRASE('SHA2_256',Clave)) from tbl_Usuario where Cedula = @usuario) = @pass", cn);
                string usu = cmd.Parameters.AddWithValue("usuario", Usuario).ToString();
                cmd.Parameters.AddWithValue("pass", Clave).ToString();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);


                    if (dt.Rows.Count == 1)
                    {
                        //this.Hide();
                        if (dt.Rows[0][1].ToString() == "1")
                        {
                            Response.Redirect("Admi.aspx");
                            //string Rpta = "";
                            //Rpta = NEmpleado.IngresarBitacora(txtUsuario.Text, cont, "Inicio Sesion");
                        }
                        if (dt.Rows[0][1].ToString() == "2")
                        {
                            // caja.Show();
                            //string Rpta = "";
                            // Rpta = NEmpleado.IngresarBitacora(txtUsuario.Text, cont, "Inicio Sesion");

                        }
                        if (dt.Rows[0][1].ToString() == "3")
                        {
                            //mesero.Show();
                            //string Rpta = "";
                            //Rpta = NEmpleado.IngresarBitacora(txtUsuario.Text, cont, "Inicio Sesion");
                        }
                        if (dt.Rows[0][1].ToString() == "4")
                        {
                            //string Rpta = "";
                            //Rpta = NEmpleado.IngresarBitacora(txtUsuario.Text, cont, "Inicio Sesion");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Usuario y/o contraseña incorrecta");
                        cn.Close();
                        // cont++;

                    }
                
      
        }
    }
}