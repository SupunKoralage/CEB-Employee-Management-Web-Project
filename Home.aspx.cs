using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEBEmployeeManagment
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear(); // Clears the session for logout
            Response.Redirect("Login.aspx"); // Redirect to the login page after logout
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditView.aspx");
        }
    }
}