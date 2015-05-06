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


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        //Lav en forbindelse til databasen, og lav en ny SqlCommand

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        //Lav en SQL sætning, der vælger rækken fra 'brugere', hvor brugernavn og password stemmer overens med det, der er skrevet ind

        cmd.CommandText = "SELECT Id, brugernavn, password FROM brugere WHERE brugernavn = @username AND password = @password";
        cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text);
        cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text);

        //Åbn forbindelsen, lav en SqlDataReader

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            //Hvis der er data, der opfylder kravene, skal dataet føjes til sessions. Så skal forbindelsen lukkes, og brugeren redirectes til Default.
            Session["user_id"] = reader["Id"];
            Session["username"] = reader["brugernavn"];
            Session["password"] = reader["password"];

            con.Close();
            Response.Redirect("Default.aspx");
        }
        else
        {
            //Hvis der ikke er data, der opfylder kravene, skal fejlbeskeden vises, og forbindelsen lukkes.
            LabelFail.Visible = true;
            con.Close();
        }
    }
}