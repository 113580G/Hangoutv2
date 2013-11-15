using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_SAM : System.Web.UI.Page
{
    public int serviceDeleted;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void serviceSubmit(object sender, EventArgs e)
    {
        bool serviceVerify = false;
        int priceservice = 0;
        if (serviceName.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue();", true);
        }
        else
        {
            serviceVerify = true;
        }
        if (serviceDetail.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue();", true);
        }
        else
        {
            serviceVerify = true;
        }
        if (serviceVerify)
        {
            try
            {
                priceservice = Convert.ToInt32(servicePrice.Text);
                string servName = serviceName.Text;
                string servPrice = "$" + servicePrice.Text;
                string sTimestamp = DateTime.Now.ToString();
                string servDetails = serviceDetail.Text;
                createpackage udmPro = new createpackage();
                udmPro.InsertService(servName, servDetails, servPrice, sTimestamp);
                this.serviceView.DataBind();
                serviceName.Text = "";
                servicePrice.Text = "";
                serviceDetail.Text = "";
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showInputError();", true);
            }
        }
    }
    protected void serviceReset(object sender, EventArgs e)
    {
        serviceName.Text = "";
        servicePrice.Text = "";
        serviceDetail.Text = "";
    }
    protected void activitySubmit_Click(object sender, EventArgs e)
    {
 /******************************
         * activityVerify
         * *****************************/
        bool activityVerify = false;
        int priceactivity = 0;
        if (activitiesName.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue2();", true);
        }
        else
        {
            activityVerify = true;
        }
        if (activitiesDetails.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue2();", true);
        }
        else
        {
            activityVerify = true;
        }
        if (activityVerify)
        {
            try
            {
                priceactivity = Convert.ToInt32(activitiesPrice.Text);
                string activityName = activitiesName.Text;
                string activityDetails = activitiesDetails.Text;
                string activityPrice = "$" + activitiesPrice.Text;
                string aTimestamp = DateTime.Now.ToString();
                createpackage activity = new createpackage();
                activity.InsertActivity(activityName, activityDetails, activityPrice, aTimestamp);
                this.activityView.DataBind();
                activitiesName.Text = "";
                activitiesDetails.Text = "";
                activitiesPrice.Text = "";
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showInputError2();", true);
            }
        }
    }
    protected void activityReset_Click(object sender, EventArgs e)
    {
        activitiesName.Text = "";
        activitiesDetails.Text = "";
        activitiesPrice.Text = "";
    }

    protected void deletedProcess(object sender, GridViewDeletedEventArgs e)
    {
        //Server.Transfer("UDPUD.aspx");
        serviceView.DataBind();
    }
}