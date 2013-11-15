using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void registerIn(object sender, ImageClickEventArgs e)
    {
        bool bValid = true;







        if (this.fName.Text == "")
        {
            ShowAlert("First Name is required!");
            this.fName.Focus();
            bValid = false;
        }
        else if (this.lName.Text == "")
        {
            ShowAlert("Last Name is required!");
            this.lName.Focus();
            bValid = false;
        }

        else if (this.gender.Text == "")
        {
            ShowAlert("Gender is required!");
            this.gender.Focus();
            bValid = false;
        }
        else if (this.dob.Text == "")
        {
            ShowAlert("Date of Birth is required!");
            this.dob.Focus();
            bValid = false;
        }
        else if (this.address.Text == "")
        {
            ShowAlert("Address is required!");
            this.address.Focus();
            bValid = false;
        }
        else if (this.city.Text == "")
        {
            ShowAlert("City/State is required!");
            this.city.Focus();
            bValid = false;
        }
        else if (this.postalCode.Text == "")
        {
            ShowAlert("Postal code is required!");
            this.postalCode.Focus();
            bValid = false;
        }
        else if (this.contNo.Text == "")
        {
            ShowAlert("Contact number is required!");
            this.contNo.Focus();
            bValid = false;
        }
        else if (this.emailAdd.Text == "")
        {
            ShowAlert("Email Address is required!");
            this.emailAdd.Focus();
            bValid = false;
        }

        else if (this.pw.Text == "")
        {
            ShowAlert("Password is required!");
            this.pw.Focus();
            bValid = false;
        }
        else if (this.RePW.Text == "")
        {
            ShowAlert("Retype Password is required!");
            this.RePW.Focus();
            bValid = false;
        }
        else if (this.pw.Text != this.RePW.Text)
        {
            ShowAlert("Password not match!");
            this.pw.Focus();
            this.RePW.Focus();
            bValid = false;
        }

        else if (this.scrtQns.Text == "")
        {
            ShowAlert("Secret Question is required!");
            this.scrtQns.Focus();
            bValid = false;
        }
        else if (this.scrtAns.Text == "")
        {
            ShowAlert("Secret Answer is required!");
            this.scrtAns.Focus();
            bValid = false;
        }

        if (emailAdd.Text != string.Empty)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string strSelect = "SELECT COUNT(*) FROM Customer_Registration WHERE emailAdd = @emailAdd";
            ShowAlert("strSelect");
            SqlConnection con = new SqlConnection(strConnection);
            SqlCommand cmd = new SqlCommand(strSelect, con);

            SqlParameter user = new SqlParameter("@emailAdd", SqlDbType.VarChar);
            user.Value = emailAdd.Text.Trim().ToString();
            cmd.Parameters.Add(user);
            con.Open();
            int result = (Int32)cmd.ExecuteScalar();
            con.Close();
            bValid = false;


            if (result >= 1)
            {

                Label1.Text = "*Email used";
                Label1.ForeColor = System.Drawing.Color.Red;
                bValid = false;
            }
            else
            {

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
                


            }
            if (bValid == true) { Label2.Text = "<script type='text/javascript'>closebox();</script>"; }

        }
    }

    private void ShowAlert(string msg)
    {
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("alert('");
        sb.Append(msg.Replace("\n", "\\n").Replace("\r", "").Replace("'", "\\'"));
        sb.Append("');");
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(),
        "showalert", sb.ToString(), true);
    }

    protected void On_ClickClear(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "<script type='text/javascript'>closebox();</script>";
        
    }




}



