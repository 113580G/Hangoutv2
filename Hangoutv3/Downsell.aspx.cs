using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class Master_Default : System.Web.UI.Page
{
    protected int serviceCount = 0;
    int count = 0;
    public ArrayList selectedChoice = new ArrayList();
    public ArrayList serviceChoice = new ArrayList();
    public ArrayList activityChoice = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        int packID = Convert.ToInt32(Session["Package"]);
        createpackage package = new createpackage();
        downsellPrice.Text = "$" + (package.GetDownsellPrice(packID)).ToString();
        downsellPrice2.Text = "$" + (package.GetDownsellPrice(packID)).ToString();
        if (Convert.ToBoolean(Session["JustLogin3"]) == true)
        {
            Session["JustLogin3"] = true;
            Response.Redirect("Payment.aspx", false);
        }
    }
    protected void linkDS1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx", false);
    }
    protected void linkDS2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx", false);
    }
    protected void upsellBtn1_Click(object sender, ImageClickEventArgs e)
    {
        Order upsell = new Order();
        upsell.UpdateDownsell(Convert.ToInt32(Session["orderid"]));
        foreach (DataListItem Item in DataList1.Items)
        {
            CheckBox checkbox = (CheckBox)Item.FindControl("serviceCB");
            if (checkbox.Checked == true)
            {
                serviceCount++;
                string checkboxValue = checkbox.Text.ToString();
                selectedChoice.Add(checkboxValue);
                serviceChoice.Add(checkboxValue);
            }
        }
        foreach (DataListItem Item in DataList2.Items)
        {
            CheckBox checkbox = (CheckBox)Item.FindControl("cbAct");
            if (checkbox.Checked == true)
            {
                count++;
                string checkboxValue = checkbox.Text;
                selectedChoice.Add(checkboxValue);
                activityChoice.Add(checkboxValue);
            }
        }
        if (Convert.ToInt32(selectedChoice.Count) == 4)
        {
            try
            {
                upsell.UpdateDownsells(selectedChoice[0].ToString(), selectedChoice[1].ToString(), selectedChoice[2].ToString(), selectedChoice[3].ToString(), Convert.ToInt32(Session["orderid"]));
            }
            catch (Exception)
            {
            }
            upsell.UpdateUpsell(Convert.ToInt32(Session["orderid"]));
            if (Session["UserID"] == null)
            {
                string website = "Payment.aspx";
                Session["redirect"] = website;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "OpenColorBox();", true);
            }
            else
            {
                Session["JustLogin3"] = true;
                Response.Redirect("Payment.aspx", false);
            }
        }
        else
        {
            if (serviceChoice.Count != 1)
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showServiceError();", true);
            if (activityChoice.Count != 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showActivityError();", true);
            }
        }
    }
    protected void upsellBtn2_Click(object sender, ImageClickEventArgs e)
    {
        Order upsell = new Order();
        upsell.UpdateDownsell(Convert.ToInt32(Session["orderid"]));
        try
        {
            upsell.UpdateDownsells(selectedChoice[0].ToString(), selectedChoice[1].ToString(), selectedChoice[2].ToString(), selectedChoice[3].ToString(), Convert.ToInt32(Session["orderid"]));
        }
        catch (Exception)
        {
        }
        upsell.UpdateUpsell(Convert.ToInt32(Session["orderid"]));
        if (Session["username"] == null)
        {
            string website = "Payment.aspx";
            Session["redirect"] = website;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "OpenColorBox();", true);
        }
        else
        {
            Response.Redirect("Payment.aspx", false);
        }   
    }
    protected void serviceCB_CheckedChanged(object sender, EventArgs e)
    {
        foreach (DataListItem Item in DataList1.Items)
        {
            CheckBox checkbox = (CheckBox)Item.FindControl("serviceCB");
            if (checkbox.Checked == true)
            {
                serviceCount++;
                string checkboxValue = checkbox.Text.ToString();
                selectedChoice.Add(checkboxValue);
            }

            if (serviceCount == 0)
            {
                jsEnabler.Text = "";
            }
            if (serviceCount == 2)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showServiceError();", true);
               // jsEnabler.Text = "<script type='text/javascript'>showServiceError();</script>";
            }
            if (serviceCount == 1)
            {
                jsEnabler.Text = "";
            }
        }
    }
    protected void activities_CheckedChanged(object sender, EventArgs e)
    {
        foreach (DataListItem Item in DataList2.Items)
        {
            CheckBox checkbox = (CheckBox)Item.FindControl("cbAct");
            if (checkbox.Checked == true)
            {
                count++;
                string checkboxValue = checkbox.Text;
                selectedChoice.Add(checkboxValue);
            }

            if (count > 3)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showActivityError();", true);
                //jsEnabler2.Text = "<script type='text/javascript'>showActivityError();</script>";
                // ClientScript.RegisterStartupScript
                //   (GetType(), "Javascript", "javascript: showStickyErrorToast()", true);
            }

            if (count == 3 || count < 3)
            {
                jsEnabler2.Text = "";
            }
        }
    }
}