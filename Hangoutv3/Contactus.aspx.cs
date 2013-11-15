using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVerify_Click(object sender, EventArgs e)
    {
        bool bValid = true;
        
        if (this.NameBox.Text == "")
        {
            ShowAlert("Name is required!");
            this.NameBox.Focus();
            bValid = false;
        }
        
        else if (this.TelBox.Text == "") {
            ShowAlert("Phone number is required!");
            this.TelBox.Focus();
            bValid = false;
        }
        
        else if (this.EmailBox.Text == "")
        {
            ShowAlert("Email is required!");
            this.EmailBox.Focus();
            bValid = false;
        }
        else if (this.SubjectBox.Text == "")
        {
            ShowAlert("Subject is required!");
            this.SubjectBox.Focus();
            bValid = false;
        }
        else if (this.QueriesBox.Text == "")
        {
            ShowAlert("Queries/Problems is required!");
            this.QueriesBox.Focus();
            bValid = false;
        }
        else if (this.RadioButton.SelectedValue == "")
        {
            ShowAlert("Preferred Contact Method is required!");
            this.RadioButton.Focus();
            bValid = false;
        }
        else if (this.txtCaptcha.Text == "")
        {
            ShowAlert("Captcha is required!");
            this.txtCaptcha.Focus();
            bValid = false;
        }
        

        if (bValid)  { }




        string salutation = SalutationBox.SelectedValue;
        string name = NameBox.Text;
        string tel = TelBox.Text;
        string email = EmailBox.Text;
        string subject = SubjectBox.Text;
        string queries = QueriesBox.Text;
        string prefCont = RadioButton.SelectedValue;
        Response.Write(prefCont);

        string captcha = txtCaptcha.Text;
        Captcha1.ValidateCaptcha(txtCaptcha.Text.Trim());

        if (Captcha1.UserValidated)
        {

            lblMessage.ForeColor = System.Drawing.Color.Green;

            lblMessage.Text = "Valid";
            contactUs contact = new contactUs();
            contact.InsertContactUs(salutation, name, tel, email, subject, queries, prefCont, captcha);

        }

        else
        {

            lblMessage.ForeColor = System.Drawing.Color.Red;

            lblMessage.Text = "InValid";

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

}