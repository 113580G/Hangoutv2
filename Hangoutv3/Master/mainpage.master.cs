using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Master_mainpage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null){
            unlog.Visible = true;
            log.Visible = false;
        }
        else {
            unlog.Visible = false;
            log.Visible = true;
        }
    }
    protected void validateLogin(object sender, EventArgs e)
    {
        insert validation = new insert();
        Order getorderid = new Order();
        if (validation.Login(emailLogin.Text, passwordLogin.Text) == true)
        {
            unlog.Visible = false;
            log.Visible = true;
            Session["UserID"] = validation.RetrieveID(emailLogin.Text).ToString();
            fName.Text = validation.RetrievefName(emailLogin.Text).ToString();
        };
        Session["emailAddress"] = emailLogin.Text.ToString();
        //retrieve orderID
        Session["orderid"] = getorderid.retrieveLastOrder(Convert.ToInt32(Session["UserID"]));
    }


    
    protected void LogOutlink(object sender, EventArgs e)
    {
        Session.Remove("emailAddress");
        Session.Remove("UserID");
        Session.Remove("Justlogin");
        Session.Remove("JustLogin2");
        Session.Remove("JustLogin3");
        Session.Remove("orderid");
        Response.Redirect("Default.aspx");
    }
}