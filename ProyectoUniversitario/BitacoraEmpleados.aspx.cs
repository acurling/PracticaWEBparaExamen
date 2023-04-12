using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoUniversitario
{
    public partial class BitacoraEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LlenarGrid();
            }
            else
            {
                filtroLlenarGrid();
            }

        }


        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["UHCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select e.cedula, e. nombre, e.edad, d.Departamento " +
                    "from empleado e " +
                    "inner join Departamento d on e.id = d.id_empleado"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void filtroLlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["UHCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM Bitacora_Empleado where tipo_transaccion Like '" + '%' + tipo.SelectedValue + '%' + "'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
        protected void Bconsulta_Click(object sender, EventArgs e)
        {
            filtroLlenarGrid();
        }

        protected void Brefrescar_Click(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void tnombre_TextChanged(object sender, EventArgs e)
        {
            if (tnombre.Text.Equals(""))
            {
                LlenarGrid();
            }
        }
    }
}