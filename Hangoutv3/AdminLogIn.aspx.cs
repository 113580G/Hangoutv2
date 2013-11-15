using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class AdminLogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Username"] = UserName.Text;
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string admin = this.UserName.Text;
        string adminpw = this.Password.Text;

        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\myDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        connection.Open();
        SqlCommand ab = new SqlCommand();
        ab = new SqlCommand("select * from AdministratorRegis where aUsername =@aUsername and aPassword =@aPassword", connection);
        ab.Parameters.AddWithValue("aUsername", this.UserName.Text);
        ab.Parameters.AddWithValue("aPassword", this.Password.Text);
        SqlDataReader login = ab.ExecuteReader();
        if (login.HasRows)
     {


         Response.Redirect("AdminReg.aspx");
     }
     else
     {

         Response.Redirect("AdminLogInInvalid.aspx");
     }
    }
}