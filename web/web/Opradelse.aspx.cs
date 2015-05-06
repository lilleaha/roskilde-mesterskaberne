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

public partial class opradelse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelFail.Visible = false;
        if(Session["user_id"] != null) {
            Response.Redirect("profil.aspx");
        }
    }
    protected void ButtonReg_Click(object sender, EventArgs e)
    {
        if(TextBoxPassword.Text != TextBoxRepeatPassword.Text) {
            TextBoxRepeatPassword.Text = "";
            LabelFail.Visible = true;
        }
        else
        {
            //Lav en forbindelse til databasen, og lav en ny SqlCommand

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            //Upload profilbillede; her bruges FluentImage. Billedet får et tilfældigt string som navn, og bliver gemt som PNG.
            String newID = Guid.NewGuid().ToString();
            ImageNet.FluentImage img = ImageNet.FluentImage.FromStream(FileUploadProfilePic.FileContent);
            img.Save(Server.MapPath("image/profilepics" + newID + ".png"), ImageNet.OutputFormat.Png);

            //Lav en SQL sætning, der indsætter informationerne til databasetabellen "brugere"

            cmd.CommandText = "INSERT INTO brugere (brugernavn, password, email, fuld_navn, billede_sti) VALUES (@username, @password, @email, @full_name, @img_path)";
            cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text);
            cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            cmd.Parameters.AddWithValue("@full_name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@img_path", "image/profilepics" + newID + ".png");

            //Åbn forbindelsen, udfør kommando, og luk forbindelsen igen

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            //Redirect til logind.aspx
            Response.Redirect("logind.aspx");
        }
    }
}