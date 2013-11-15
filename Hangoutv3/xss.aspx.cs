using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class xss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerIn(object sender, ImageClickEventArgs e)
    {
        string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strSelect = "SELECT COUNT(*) FROM Customer_Registration WHERE emailAdd = " + emailAdd.Text.Trim().ToString() + "; DROP TABLE Test";
        SqlConnection con = new SqlConnection(strConnection);
        SqlCommand cmd = new SqlCommand(strSelect, con);

        //SqlParameter user = new SqlParameter("@emailAdd", SqlDbType.VarChar);
        //String test = emailAdd.Text.Trim().ToString();
        //cmd.Parameters.Add(test);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        //if (result >= 1)
       // {

        //    Label1.Text = "*Email used";
        //    Label1.ForeColor = System.Drawing.Color.Red;
        //}
        //else
       // {

            Label1.Text = "*Available";
            Label1.ForeColor = System.Drawing.Color.Green;
            string firstname = fName.Text;
            string lastname = lName.Text;
            string Gender = gender.Text;
            string DateOfBirth = dob.Text;
            string Address = address.Text;
            string City = city.Text;
            string Postalcode = postalCode.Text;
            string contactNumber = contNo.Text;
            string EmailAdd = emailAdd.Text;
            string Password = pw.Text;
            string ReEnterPassword = RePW.Text;
            string secretQns = scrtQns.Text;
            string secretAns = scrtAns.Text;
            insert register = new insert();
            register.InsertRegister(firstname, lastname, EmailAdd, DateOfBirth, Postalcode, Address, contactNumber, Gender, City, Password, ReEnterPassword, secretQns, secretAns);
       // }
    }

    protected void On_ClickClear(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "<script type='text/javascript'>closebox();</script>";

    }

}