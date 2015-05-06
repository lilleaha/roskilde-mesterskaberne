using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

public partial class profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user_id"] == null) {
            Response.Redirect("login.aspx");
        }
        else {
        //Lav en forbindelse til databasen, og lav en ny SqlCommand

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        //Vælg brugerinformationerne til brugeren, der er logget ind.

        cmd.CommandText = "SELECT brugernavn, fuld_navn FROM brugere WHERE Id = @Id";
        cmd.Parameters.AddWithValue("@Id", Session["user_id"]);

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        RepeaterProfile.DataSource = reader;
        RepeaterProfile.DataBind();

        con.Close();
        }
    }
}