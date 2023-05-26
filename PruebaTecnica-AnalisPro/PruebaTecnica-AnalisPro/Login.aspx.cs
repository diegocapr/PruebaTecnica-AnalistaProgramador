using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace PruebaTecnica_AnalisPro
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Validara que la palabra almacenada en patron sea correcta
        string patron = "PruebaTecnica";

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            //cmd = llama al procedimiento almacenado de la BD y tambien a SqlConnection
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@contrasena", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregar una sesion de usuario
                Session["usuariologueado"] = tbUsuario.Text;
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                lblError.Text = "Error! Contraseña o Usuario incorrectos";
            }
            //cerrando conexion
            cmd.Connection.Close();
        }
    }
}