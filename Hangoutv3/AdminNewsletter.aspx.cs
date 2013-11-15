using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void  Button1_Click(object sender, EventArgs e)
{
        string txtFrom = "hangout30@gmail.com";
        string txtTo = this.To.Text;
        string txtSubject = this.subject.Text;
        string txtBody = this.Mail.Text;
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

        Response.Redirect("AdminNewsSucc.aspx");
    }
}


    
