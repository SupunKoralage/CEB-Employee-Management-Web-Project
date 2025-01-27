using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEBEmployeeManagment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TxtUsername.Text) || string.IsNullOrWhiteSpace(TxtPassword.Text))
            {
                LblMessage.Text = "Missing Information";
            }
            else if (TxtUsername.Text == "CEB" && TxtPassword.Text == "CEB123")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                LblMessage.Text = "Please Enter Correct Username and Password";
            }
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TxtUsername.Text = string.Empty;
            TxtPassword.Text = string.Empty;
            LblMessage.Text = string.Empty;
        }
    }
}