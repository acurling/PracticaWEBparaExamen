using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoUniversitario.Modelo;
using System.EnterpriseServices.Internal;

namespace ProyectoUniversitario
{
    public partial class Categorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["uhbanco"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM CATEGORIA"))
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

        public static int consultar()
        {

            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ConsultarCategoria", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                //    cmd.Parameters.Add(new SqlParameter("@Descripcion", nombre));

                    retorno = cmd.ExecuteNonQuery();

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;

        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            ClsArticulo.nombre = tcategoria.Text;
            if (ClsArticulo.IngresarCategoria()>0)
            {
                DBConn.RegistrarAlerta(this, "Categoria ha sido ingresado");
                LlenarGrid();
            }
            else
            {
                DBConn.RegistrarAlerta(this, "Categoria No fue ingresado");
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsArticulo.codigo = int.Parse(tcodigo.Text);

            if (ClsArticulo.BorrarCategoria()>0)
            {
                DBConn.RegistrarAlerta(this, "Categoria  ha sido eliminado");
                LlenarGrid();
            }
            else
            {
                DBConn.RegistrarAlerta(this, "Categoria no puede ser eliminado");
            }
        }
    }
}