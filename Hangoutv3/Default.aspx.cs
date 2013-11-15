using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Master_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (NewsFN.Text == "")
        {
            LabelValidateFName.Visible = true;
        }
        else
        {
            LabelValidateFName.Visible = false;
        }

        if (NewsLN.Text == "")
        {
            LabelValidateLName.Visible = true;
        }

        else
        {
            LabelValidateLName.Visible = false;

        }

        if (NewsE.Text == "")
        {
            LabelValidateEmail.Visible = true;

        }

        else
        {
            LabelValidateEmail.Visible = false;

            string NewsFname = this.NewsFN.Text;
            string NewsLname = this.NewsLN.Text;
            string NewsEmail = this.NewsE.Text;

            NewsletterBLL aNews = new NewsletterBLL();
            aNews.InsertNews(NewsFname, NewsLname, NewsEmail);

            Response.Redirect("Newslettercomplete.aspx");
        }





    }

}