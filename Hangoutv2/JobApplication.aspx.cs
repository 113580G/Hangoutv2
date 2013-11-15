using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class Master_Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {


        // In this option we use the SqlConnection and SqlCommand objects to
        // update the database. This method can be used in places where a
        // SqlDataSource control is not available, or where you want to have
        // more control of the data access.
        string fName = this.TextBox1.Text;
        string lName = this.TextBox9.Text;
        string emailAdd = this.TextBox12.Text;
        string address = this.TextBox2.Text;
        string postalCode = this.TextBox10.Text;
        string blkNo = this.TextBox11.Text;
        string unitNo = this.TextBox3.Text;
        string contactNo = this.TextBox4.Text;
        string gender = this.DropDownList1.SelectedValue;
        //string FileUpload1 = "C:\\UploadedFile\\";
        string jobResume = this.FileUpload1.PostedFile.FileName;
        //FileUpload1.SaveAs(Server.MapPath(" ") + "\\UploadedFile\\" + FileUpload1);
        //FileUpload1.SaveAs(UploadedFile + jobResume);
        string jobCoverletter = this.FileUpload2.PostedFile.FileName;
        Job create = new Job();
        create.InsertJobApplication(fName, lName, emailAdd, address, postalCode, blkNo, unitNo, contactNo, gender, jobResume, jobCoverletter);


        string txtFrom = "hangout30@gmail.com";
        string txtTo = "syafiqah.v@hotmail.com";
        string txtSubject = "Your Job Application @ Hangout";
        string txtBody = "You have successfully applied for a carreer with us. We will inform you details of your interview very soon. Thank You!";
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
            Label15.Text = ex.ToString();
        }

        if (FileUpload1.HasFile)
        {
            try
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.SaveAs("C:\\Users\\Syafiqah\\Documents\\Visual Studio 2010\\Projects\\WebSite4\\Resume" + fileName
);
                Label16.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                Label16.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }

        if (FileUpload2.HasFile)
        {
            try
            {
                string fileName = FileUpload2.FileName;
                FileUpload2.SaveAs("C:\\Users\\Syafiqah\\Documents\\Visual Studio 2010\\Projects\\WebSite4\\CoverLetter" + fileName);
                Label16.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                Label16.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }


        Response.Redirect("ThankYou.aspx");

    }

}