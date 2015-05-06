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

        //Lav en SQL sætning, der indsætter informationerne til databasetabellen "projekter"

        cmd.CommandText = "SELECT Id, brugernavn, password FROM brugere WHERE brugernavn = @username AND password = @password";
        cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text);
        cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text);

        //Åbn forbindelsen, udfør kommando, og luk forbindelsen igen

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            Session["user_id"] = Eval("Id");
            Session["username"] = TextBoxUsername.Text;
            Session["password"] = TextBoxPassword.Text;

            con.Close();
            Response.Redirect("Default.aspx");
        }
        else
        {
            LabelFail.Visible = true;
        }
    }
}