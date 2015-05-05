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

public partial class nytprojekt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        //Lav en forbindelse til databasen, og lav en ny SqlCommand

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        //Lav en SQL sætning, der indsætter informationerne til databasetabellen "projekter"
        
        cmd.CommandText = "INSERT INTO projekter (titel, hovedbillede_sti, bruger_id, indhold) VALUES (@titel, 'yy', 1, @indhold)";

        cmd.Parameters.AddWithValue("@titel", TextBoxTitel.Text);
        cmd.Parameters.AddWithValue("@indhold", TextBoxIndhold.Text);

        //Åbn forbindelsen, udfør kommando, og luk forbindelsen igen
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}