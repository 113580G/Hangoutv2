using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

public partial class Login : System.Web.UI.Page
{
    ArrayList randomNumber = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitBtn_Click(object sender, EventArgs e)
    {
        if (otpInsert.Text == otpGenerator.Text)
        {
            string email = emailUser.Text;
            string password = passwordUser.Text;
            insert validation = new insert();

            if (validation.Login(email, password) == true)
            {
                Session["emailAddress"] = email;
                Session["UserID"] = validation.RetrieveID(email).ToString();
                Session.Remove("Justlogin");
                Session.Remove("JustLogin2");
                Session.Remove("JustLogin3");
                Session["Justlogin"] = true;
                Session["JustLogin2"] = true;
                Session["JustLogin3"] = true;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "closebox();", true);
                //Response.Redirect("Payment.aspx");
            }
            else
            {
                errorLbl.Text = "Wrong email/password";
            }
        }
        else
        {
            errorLbl.Text = "Wrong OTP";
        }

    }
    protected void resetBtn_Click(object sender, EventArgs e)
    {
    }
    protected void Generate_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        randomNumber.Add(Convert.ToInt32(random.Next(100000, 999999)));
        otpGenerator.Text = randomNumber[0].ToString();
    }
}