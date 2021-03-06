﻿using System;
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



public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegistrationInsert(object sender, EventArgs e)
    {

    }
    protected void On_ClickSubmit(object sender, EventArgs e)
    {
        string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        string strSelect = "SELECT fName,passwprd FROM Customer_Registration WHERE emailAdd = @emailAdd";



        SqlConnection connection4 = new SqlConnection(strConnection);

        SqlCommand command = new SqlCommand();

        command.Connection = connection4;

        command.CommandType = CommandType.Text;

        command.CommandText = strSelect;


        command.Connection = connection4;
        SqlParameter email = new SqlParameter("@emailAdd", SqlDbType.VarChar, 50);

        email.Value = TextBox1.Text.Trim().ToString();
        command.Parameters.Add(email);
        DataSet dsPwd = new DataSet();

        SqlDataAdapter dAdapter = new SqlDataAdapter(command);

        connection4.Open();

        dAdapter.Fill(dsPwd);

        connection4.Close();


        if (dsPwd.Tables[0].Rows.Count > 0)
        {

            MailMessage loginInfo = new MailMessage();

            loginInfo.To.Add(TextBox1.Text.ToString());

            loginInfo.From = new MailAddress("Hangout30@gmail.com");

            loginInfo.Subject = "Forgot Password Information";



            loginInfo.Body = "fName: " + dsPwd.Tables[0].Rows[0]["fName"] + "<br><br>passwprd: " + dsPwd.Tables[0].Rows[0]["passwprd"] + "<br><br>";

            loginInfo.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;

            smtp.EnableSsl = true;


            smtp.Credentials = new System.Net.NetworkCredential("Hangout30@gmail.com", "hanghang");

            smtp.Send(loginInfo);

            MessageBox.Show("password sent!");

        }

        else
        {

            MessageBox.Show("not registered");

        }


    }


    protected void On_ClickCancel(object sender, EventArgs e)
    {
        Label1.Text = "<script type='text/javascript'>closebox();</script>";
    }
}