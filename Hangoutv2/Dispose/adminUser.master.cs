using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_adminUser : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Label1.Text = Convert.ToString(Session["Username"]);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogIn.aspx");
    }
}
