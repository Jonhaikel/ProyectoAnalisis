using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace Proyecto
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtVolver_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Administrador/menuAdminaspx.aspx");
        }
        //metodos
        public SqlConnection cone()
        {
            const string ConnectionString = "Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog = AnalisisYDisenoPrueba ;Integrated Security=True";
            SqlConnection con = new SqlConnection
            (ConnectionString);
            try
            {

                con.Open();
                //  MessageBox.Show("conexion exitosa");


            }
            catch (Exception ex)
            {
                // MessageBox.Show("conexion fallida");

            }

            return con;
        }

        protected void BtLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Administrador/Admin.aspx");


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                System.Data.SqlClient.SqlConnection sqlConnection1 =
                               new System.Data.SqlClient.SqlConnection("Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog= AnalisisYDisenoPrueba;Integrated Security=True");

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into tbl_Usuario (IdUsuario,Cedula,Nombre,Apellidos,Teléfono,Dirección,CorreoElectrónico,IdRol,Clave,IdJefe,Estado)values(" +
                      tbId.Text + ",'"
                    + tbCedula.Text + "','"
                    + TbNombre.Text + "','"
                    + TbApellido.Text + "','"
                    + TbTelefono.Text + "','"
                    + TbDireccion.Text + "','"
                    + TbCorreo.Text + "',"
                    + 1 + ",'"
                    + Tbclave.Text + "',"
                    + TbJefe.Text + ","
                    + 1 + ")";
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();
                MessageBox.Show("Usuario insertado satisfactoriamente.", "Configuration", MessageBoxButton.OK, MessageBoxImage.Warning);


            }
            catch (Exception)
            {
                 MessageBox.Show("Falla ingresar datos ", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
            Response.Redirect("/Administrador/Admin.aspx");

        }
    }
}