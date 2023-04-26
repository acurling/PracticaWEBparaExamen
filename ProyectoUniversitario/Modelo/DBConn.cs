using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace ProyectoUniversitario.Modelo
{
    public class DBConn
    {

        public static void RegistrarAlerta(Page page, string mensaje)
        {
            // Obtener el objeto ClientScriptManager
            ClientScriptManager cs = page.ClientScript;
            // Definir el bloque de script que mostrará la alerta
            string script = "<script>alert(" +"'" + mensaje +"'" + ");</script>";
            // Registrar el script para que se ejecute al cargar la página
            cs.RegisterStartupScript(typeof(Page), "AlertScript", script);
        }

        public static SqlConnection obtenerConexion()
        {
            try
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["uhbanco"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
               
                return conexion;

            }
            catch (Exception)
            {

                throw;
            }
           
        }
    }
}