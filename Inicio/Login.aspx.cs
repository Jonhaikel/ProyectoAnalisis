using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
//using Negocio;
namespace Proyecto.Inicio
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("Data Source =.\\SQLexpress; Initial Catalog = AnalisisYDisenoPrueba ; Integrated Security = True");
        public static int operador1 = 1;
        public static int calculo1;
        bool clickbutton1 = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            login(this.txtUsuario.Text, this.txtClave.Text);
            Label1.Text = calculo1.ToString();

        }

        private void MensajeOK(string Mensaje)
        {
            MessageBox.Show(Mensaje, "Sistema de Estudiantes");
        }

        private void login(string Usuario, string Clave)
        {

            
                cn.Open();
                SqlCommand cmd = new SqlCommand("select Cedula,IdRol from tbl_Usuario where Cedula = @usuario and (select convert(varchar,DECRYPTBYPASSPHRASE('SHA2_256',Clave)) from tbl_Usuario where Cedula = @usuario) = @pass and Estado = 1", cn);
                string usu = cmd.Parameters.AddWithValue("usuario", Usuario).ToString();
                cmd.Parameters.AddWithValue("pass", Clave);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);



                SqlCommand cmdi = new SqlCommand("select Cedula from tbl_Usuario where Cedula = @usuarioi and Estado = 0", cn);
                cmdi.Parameters.AddWithValue("usuarioi", Usuario).ToString();
                SqlDataAdapter sdai = new SqlDataAdapter(cmdi);
                DataTable dti = new DataTable();
                sdai.Fill(dti);


                if (dti.Rows.Count == 1)
                {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme3()", true);
                cn.Close();
                }
                else
                {

                    if (dt.Rows.Count == 1 && calculo1 <= 2)
                    {
                        
                        if (dt.Rows[0][1].ToString() == "1")
                        {

                            Response.Redirect("/Admin_Jefe/AdministradorJefe.aspx");
                            
                    }
                        if (dt.Rows[0][1].ToString() == "2")
                        {
                            

                        }
                        if (dt.Rows[0][1].ToString() == "3")
                        {
                            
                        }
                        if (dt.Rows[0][1].ToString() == "4")
                        {
                            
                        }
                    }
                    else
                    {
                     ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme()", true);
                        cn.Close();
                    clickbutton1 = true;
                    if (clickbutton1 == true)
                    {
                        calculo1 = operador1++;
                    }


                }
                if (calculo1 >= 3)
                    {
                        try
                        {
                            string Rpta = "";
                            //Rpta = NUsuario.ActualizarEstadoU(txtUsuario.Text);
                            if (Rpta.Equals("OK"))
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme2()", true);

                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message + ex.StackTrace);
                        }
                    }
                }
        }
    }
}