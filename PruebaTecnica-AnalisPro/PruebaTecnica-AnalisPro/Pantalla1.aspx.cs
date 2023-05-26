using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTecnica_AnalisPro
{
    public partial class Pantalla1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        //Conexion a la BD
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-10AMPHK;Initial Catalog=PruebaTecnica-AnalisPro;User ID=sa;Password=1234");
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO personaprueba VALUES('"+int.Parse(txt_dpi.Text)+"', '"+txt_nombres.Text+"', '"+txt_apellidos.Text+"', '"+txt_email.Text+"', '"+int.Parse(txt_hijos.Text)+"', '"+float.Parse(txt_salario.Text)+"')", con);
                comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script", "alert('Insertado con exito');", true);
            LoadRecord();

            //limpiar textbox
            txt_dpi.Text = "";
            txt_nombres.Text = "";
            txt_apellidos.Text = "";
            txt_email.Text = "";
            txt_hijos.Text = "";
            txt_salario.Text = "";
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM personaprueba", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_Actualizar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE personaprueba SET nombres = '"+txt_nombres.Text+"', apellidos = '"+txt_apellidos.Text+"', email = '"+txt_email.Text+"', cantidad_hijos = '"+int.Parse(txt_hijos.Text)+"', salario_base = '"+int.Parse(txt_salario.Text)+"' WHERE dpi = '"+txt_dpi.Text+"'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Actualizaddo con exito');", true);
            LoadRecord();

            //limpiar textbox
            txt_dpi.Text = "";
            txt_nombres.Text = "";
            txt_apellidos.Text = "";
            txt_email.Text = "";
            txt_hijos.Text = "";
            txt_salario.Text = "";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("DELETE personaprueba WHERE dpi = '" + int.Parse(txt_dpi.Text) + "' ", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Eliminado con exito');", true);
            LoadRecord();

            //limpiar textbox
            txt_dpi.Text = "";
            txt_nombres.Text = "";
            txt_apellidos.Text = "";
            txt_email.Text = "";
            txt_hijos.Text = "";
            txt_salario.Text = "";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            LoadRecord();
            SqlCommand comm = new SqlCommand("SELECT * FROM personaprueba WHERE dpi = '"+int.Parse(txt_dpi.Text)+"' ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            //limpiar textbox
            txt_dpi.Text = "";
            txt_nombres.Text = "";
            txt_apellidos.Text = "";
            txt_email.Text = "";
            txt_hijos.Text = "";
            txt_salario.Text = "";
        }

        protected void btnAutocompletar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM personaprueba WHERE dpi = '"+int.Parse(txt_dpi.Text)+"' ", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            { 
                txt_nombres.Text = r.GetValue(1).ToString();
                txt_apellidos.Text = r.GetValue(2).ToString();
                txt_email.Text = r.GetValue(3).ToString();
                txt_hijos.Text = r.GetValue(4).ToString();
                txt_salario.Text = r.GetValue(5).ToString();
            }
        }

        protected void btnRegresarInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}