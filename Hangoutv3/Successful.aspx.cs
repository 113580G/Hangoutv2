using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Windows.Forms;

public partial class Successful : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Transaction transactions = new Transaction();
        string reference = Session["stid"].ToString();
        referenceID.Text = reference;
        try
        {
            MailMessage loginInfo = new MailMessage();

            loginInfo.To.Add("nurimanariff@gmail.com");//Session["emailAddress"].ToString());

            loginInfo.From = new MailAddress("Hangout30@gmail.com");

            loginInfo.Subject = "Successful Transaction";



            loginInfo.Body = "We have just received your payment <p/> Please keep your reference number wisely. We need to know your reference number if you were to call us! <p/>" +
            "Your Reference number is:" + referenceID.Text + "<p/>" + "Please contact us at enquiry@gmail.com if you need help" +
            "<p/> Please go to your account to check your transaction history. <p/><p/><p/><p/> By Hangout Management Team";

            loginInfo.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;

            smtp.EnableSsl = true;


            smtp.Credentials = new System.Net.NetworkCredential("Hangout30@gmail.com", "hanghang");

            smtp.Send(loginInfo);

        }
        catch (Exception)
        {

        }
    }
    protected void viewOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vieworders.aspx", false);
    }
}