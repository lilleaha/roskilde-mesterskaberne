using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

    public partial class masterpace : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                Javascript_code.Text = "<script type='text/javascript'>document.querySelector('#loginLink').style.display = 'none';<\\/script>";
            }
            else
            {
                Javascript_code.Text = "<script type='text/javascript'>document.querySelector('#logoutLink').style.display = 'none';<\\/script>";
            }
        }
    }