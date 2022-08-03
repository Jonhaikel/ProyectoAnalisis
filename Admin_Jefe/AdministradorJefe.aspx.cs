using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.Admin_Jefe
{
    public partial class AdministradorJefe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertme4()", true);
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}