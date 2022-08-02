using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data.SqlClient;
using System.Linq;
using System.Data;

namespace Proyecto.Administrador
{

    public partial class menuAdminaspx : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void intUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Administrador/Admin.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (UsuarioTipo().Length > 2)
            {
                var msj = MessageBox.Show("Desea agregar a " + UsuarioTipo() + "", "", MessageBoxButton.YesNo,
                   MessageBoxImage.Question) == MessageBoxResult.Yes;


                if (msj == true)
                {
                    var IdUsuario = Convert.ToInt32(Session["idUsuario"]);
                   // MessageBox.Show(Convert.ToString( IdUsuario));
                    insertTipoUser(IdUsuario);
                }
            }
            else
            {
                MessageBox.Show("Falta Informacion ", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (UsuarioTipo().Length > 2)
            {
                var msj = MessageBox.Show("Desea inavilitar al usuario " + UsuarioTipo() + "", "", MessageBoxButton.YesNo,
                      MessageBoxImage.Question) == MessageBoxResult.Yes;

                if (msj == true)
                {
                    var IdUsuario = Convert.ToInt32(Session["idUsuario"]);
                    // MessageBox.Show(Convert.ToString( IdUsuario));
                    blockTipoUser(IdUsuario);

                }
            }
            else
            {
                MessageBox.Show("Falta Informacion ", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }
        protected void Btbuscar_Click(object sender, EventArgs e)
        {

            LbUsuario.Text = searchUser(TextBox1.Text);

        }

        //metodos usados 

        public String UsuarioTipo()
        {
            var tipo_U = "";
            if (RBaprovadorFinanciero.Checked)
            {
                tipo_U = "Aprovador financiero";
            }
            else if (RBaprovadorJefe.Checked)
            {
                tipo_U = "Aprovador jefe";
            }
            else if (RBcomprador.Checked)
            {
                tipo_U = "Comprador";
            }
            else
            {
                tipo_U = "";
            }

            return tipo_U;
        }
        public String Inst_user()
        {
            var tipo_U = "";
            if (RBaprovadorFinanciero.Checked)
            {
                tipo_U = "4";
            }
            else if (RBaprovadorJefe.Checked)
            {
                tipo_U = "3";
            }
            else if (RBcomprador.Checked)
            {
                tipo_U = "2";
            }
            else
            {
                tipo_U = "";
            }
            return tipo_U;
        }
        public string searchUser(String User)
        {
            string user = "";
            string userA = "";
            string sql = "";
            string sql2 = "";
            string sql3 = "";
            bool id = false;

            if (User.All(char.IsDigit))
            {
                sql = "select Nombre from tbl_Usuario where idUsuario =" + User;
                sql2 = "select Apellidos from tbl_Usuario where idUsuario =" + User;
                Session["idUsuario"] = User;
            }
            else
            {
                sql = "select Nombre from tbl_Usuario where Nombre ='" + User + "'";
                sql2 = "select Apellidos from tbl_Usuario where Nombre ='" + User + "'";
                sql3 = "select idUsuario from tbl_Usuario where Nombre ='" + User + "'";
                id = true;
            }
            SqlCommand command = new SqlCommand(sql, cone());
            user = Convert.ToString(command.ExecuteScalar());

            command = new SqlCommand(sql2, cone());
            userA = Convert.ToString(command.ExecuteScalar());



            if (user.Length == 0)
            {
                user = "No existe nadie";
                Button1.Enabled = false;
                Button2.Enabled = false;
            }
            else {
                Button1.Enabled = true;
                Button2.Enabled= true;
            }
            if (id == true)
            {
                command = new SqlCommand(sql3, cone());
                Session["idUsuario"] = Convert.ToString(command.ExecuteScalar());
            }
            user = user + " " + userA;

            return user;


        }
        private SqlConnection cone()
        {
            const string ConnectionString = "Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog= AnalisisYDisenoPrueba;Integrated Security=True";
            SqlConnection con = new SqlConnection
            (ConnectionString);
            try
            {

                con.Open();
                Console.WriteLine("conexion exitosa");

            }
            catch (Exception ex)
            {
                Console.WriteLine("no conecto");
            }

            return con;
        }
        public void insertTipoUser(int id)
        {
            System.Data.SqlClient.SqlConnection sqlConnection1 =
              new System.Data.SqlClient.SqlConnection("Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog=AnalisisYDisenoPrueba;Integrated Security=True");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "update tbl_Usuario set idRol = " + Inst_user() + "where idUsuario =" + id;
            cmd.Connection = sqlConnection1;
            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            ActiveTipoUser(id);
            Button1.Enabled=false;
        }

        public void blockTipoUser(int id)
        {
            System.Data.SqlClient.SqlConnection sqlConnection1 =
              new System.Data.SqlClient.SqlConnection("Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog=AnalisisYDisenoPrueba;Integrated Security=True");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "update tbl_Usuario set Estado = 0 where idUsuario =" + id;
            cmd.Connection = sqlConnection1;
            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            Button1.Enabled = false;
        }
        public void ActiveTipoUser(int id)
        {
            System.Data.SqlClient.SqlConnection sqlConnection1 =
              new System.Data.SqlClient.SqlConnection("Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog=AnalisisYDisenoPrueba;Integrated Security=True");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "update tbl_Usuario set Estado = 1 where idUsuario =" + id;
            cmd.Connection = sqlConnection1;
            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            Button1.Enabled = false;
        }

    }
}