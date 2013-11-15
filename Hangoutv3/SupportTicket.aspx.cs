using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class Master_Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        // In this option we use the SqlConnection and SqlCommand objects to
        // update the database. This method can be used in places where a
        // SqlDataSource control is not available, or where you want to have
        // more control of the data access.

        string stPriority = this.DropDownList1.SelectedValue;
        string stContent = this.TextBox1.Text;
        string stTimestamp = DateTime.Now.ToString();
        SupportTicket create = new SupportTicket();
        create.InsertSupportTix(stPriority, stContent, stTimestamp);


        string txtFrom = "hangout30@gmail.com";
        string txtTo = "syafiqah.v@hotmail.com";
        string txtSubject = "Your Support Ticket @ Hangout";
        string txtBody = "Please give Hangout a little while and we will get back to you shortly. Thank you for your patience.";
        //string txtSMTPServer = "smtp.gmail.com";


        MailMessage message = new MailMessage(txtFrom, txtTo, txtSubject, txtBody);
        SmtpClient emailClient = new SmtpClient();

        emailClient.Port = 587;
        emailClient.Host = "smtp.gmail.com";

        System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("hangout30@gmail.com", "hanghang");
        emailClient.UseDefaultCredentials = false;
        emailClient.Credentials = SMTPUserInfo;

        emailClient.EnableSsl = true;

        try
        {
            emailClient.Send(message);
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }


        Response.Redirect("ThankYou2.aspx");

    }
}