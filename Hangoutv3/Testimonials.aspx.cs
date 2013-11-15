using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Data;

public partial class Master_Default7 : System.Web.UI.Page
{
    private string emailAdd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Testismonial Test = new Testismonial();
        string testDesc = this.TextBox1.Text;
        string tTimestamp = DateTime.Now.ToString();
        registrationTableAdapters.Customer_RegistrationTableAdapter adapter = new registrationTableAdapters.Customer_RegistrationTableAdapter();
        DataTable raymond = new DataTable();
        //string emailAdd = Session["email"].ToString();
        //raymond = adapter.GetByEmail(Session["email"].ToString());
        DataRow result1 = raymond.Rows[0];
        int customerSerial = Convert.ToInt32(result1["custSerial"]);
        int staffID = 1;
        // Test.InsertTestimonial(testDesc, tTimestamp, Serial, staffID);

        Test.InsertTestimonial(testDesc, tTimestamp, customerSerial);
        /*// In this option we use the SqlConnection and SqlCommand objects to
        // update the database. This method can be used in places where a
        // SqlDataSource control is not available, or where you want to have
        // more control of the data access.
        string TestDesc = this.TextBox1.Text;
        // Create a SqlConnection and supply the connection string:
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString =
        @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Raymond\Documents\EBAPJ\myDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        try
        {
            // Open connection to the database:
            connection.Open();
            // Format the SQL statement for doing an INSERT:
            string sqlStmt =
            "INSERT INTO Testimonials (TestDesc) VALUES ('" +
            TestDesc + "')";
            // Create the SqlCommand object and execute the statement:
            SqlCommand cmd = new SqlCommand(sqlStmt, connection);
            cmd.ExecuteNonQuery();
            // This next section of code shows how to execute a query and read the data
            // back from the database. We'll just display the rows in a standard multi-
            // line textbox, but you could put them in a table or whatever. You can also
            // modify the SELECT statement to select specific fields, add WHERE and ORDER
            // BY clauses, etc.
            // Change the SQL statement to do a SELECT all:
            
            // Call Close when done reading:
        }
        finally
        {
            Response.Redirect("tsuccess.aspx");
            connection.Close();
        }*/
        string txtFrom = "hangout30@gmail.com";
        string txtTo = Session["email"].ToString();
        string txtSubject = "Successfully submit an testimonial";
        string txtBody = "You have successfully submit the testimonial. Thank you!!! You have submit the following - " + testDesc;
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
        Response.Redirect("tsuccess.aspx");
    }
}