using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data.SqlClient;

namespace Proyecto.Administrador
{

    public partial class menuAdminaspx : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (cone().StatisticsEnabled) {
                MessageBox.Show("base de datos");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
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
                    MessageBox.Show("hola");

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
                var msj = MessageBox.Show("Desea agregar a " + UsuarioTipo() + "", "", MessageBoxButton.YesNo,
                      MessageBoxImage.Question) == MessageBoxResult.Yes;

                if (msj == true)
                {
                    MessageBox.Show("hola");

                }
            }
            else
            {
                MessageBox.Show("Falta Informacion ", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
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
                tipo_U = "3";
            }
            else
            {
                tipo_U = "";
            }
            return tipo_U;
        }
        public SqlConnection cone()
        {
            const string ConnectionString = "Data Source=DESKTOP-3HTE7QQ\\SQLEXPRESS;Initial Catalog = AnalisisYDisenoPrueba ;Integrated Security=True";
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
    }
}