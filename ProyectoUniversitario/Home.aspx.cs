using ProyectoUniversitario.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoUniversitario
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            if (ClsUSuario.ValidarUsuario(tusuario.Text, tclave.Text ) > 0)
            {
                Response.Redirect("inicio.aspx");
            } else
            {
                lmensaje.Text = "usuario no existe";
            }


           
        }
    }
}