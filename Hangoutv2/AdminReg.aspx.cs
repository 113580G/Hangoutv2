using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

                string aFname = this.FName.Text;
                string aLname = this.LName.Text;
                string aEmail = this.AdEmail.Text;
                string aPhone = this.AdPhone.Text;
                string aUsername = this.userName.Text;
                string aPassword = this.password.Text;
                string aRoles = this.DropDownList1.SelectedValue;


                AdminRegBLL aReg = new AdminRegBLL();
                aReg.InsertAdminReg(aFname, aLname, aEmail,
                       aPhone, aUsername, aPassword, aRoles);

                Response.Redirect("AdminRegSuccess.aspx");
            }


        }



    
