using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Master_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int packID = Convert.ToInt32(Session["Package"]);
        createpackage package = new createpackage();
        upsellPrice.Text = "$"+package.GetUpsellPrice(packID);
        DataTable upsellService = package.GetServiceUpsell(packID);
        DataRow firstRow = upsellService.Rows[2];
        DataRow secondRow = upsellService.Rows[3];
        int serviceID1 = Convert.ToInt32(firstRow["servID"]);
        int serviceID2 = Convert.ToInt32(secondRow["servID"]);
        //service1.Text = package.GetServiceData(serviceID1) + " (worth $" + package.GetServiceCost(serviceID1) + ")";
        //service2.Text = package.GetServiceData(serviceID2) + " (worth $" + package.GetServiceCost(serviceID2) + ")";
        DataTable upsellActivity = package.GetActivityUpsell(packID);
        DataRow firstServ = upsellActivity.Rows[5];
        DataRow secondServ = upsellActivity.Rows[6];
        DataRow thirdServ = upsellActivity.Rows[7];
        DataRow fourthServ = upsellActivity.Rows[8];
        DataRow fifthServ = upsellActivity.Rows[9];
        int activityID1 = Convert.ToInt32(firstServ["activityID"]);
        int activityID2 = Convert.ToInt32(secondServ["activityID"]);
        int activityID3 = Convert.ToInt32(thirdServ["activityID"]);
        int activityID4 = Convert.ToInt32(fourthServ["activityID"]);
        int activityID5 = Convert.ToInt32(fifthServ["activityID"]);
        //activity1.Text = package.GetActivityInfoString(activityID1) + " (worth $" + package.GetActivityCostString(activityID1)+ ")";
        //activity2.Text = package.GetActivityInfoString(activityID2) + " (worth $" + package.GetActivityCostString(activityID2) + ")";
        //activity3.Text = package.GetActivityInfoString(activityID3) + " (worth $" + package.GetActivityCostString(activityID3) + ")";
        //activity4.Text = package.GetActivityInfoString(activityID4) + " (worth $" + package.GetActivityCostString(activityID4) + ")";
        //activity5.Text = package.GetActivityInfoString(activityID5) + " (worth $" + package.GetActivityCostString(activityID5) + ")";
        string sub = package.GetServiceCost(serviceID1);
        string sub2 = package.GetServiceCost(serviceID2);
        string sub3 = package.GetActivityCostString(activityID1);
        string sub4 = package.GetActivityCostString(activityID2);
        string sub5 = package.GetActivityCostString(activityID3);
        string sub6 = package.GetActivityCostString(activityID4);
        string sub7 = package.GetActivityCostString(activityID5);
        string cost1 = sub.Substring(1,2);
        string cost2 = sub2.Substring(1, 2);
        string cost3 = sub3.Substring(1, 2);
        string cost4 = sub4.Substring(1, 2);
        string cost5 = sub5.Substring(1, 2);
        string cost6 = sub6.Substring(1, 2);
        string cost7 = sub7.Substring(1,2);
        int costS1 = Convert.ToInt32(cost1);
        int costS2 = Convert.ToInt32(cost2);
        int costA1 = Convert.ToInt32(cost3);
        int costA2 = Convert.ToInt32(cost4);
        int costA3 = Convert.ToInt32(cost5);
        int costA4 = Convert.ToInt32(cost6);
        int costA5 = Convert.ToInt32(cost7);
        int normalcost = costS1 + costS2 + costA1 + costA2 + costA3 + costA4 + costA5;
        normalCost.Text = normalcost.ToString();
        totalCost.Text = upsellPrice.Text;
        int savedC = normalcost - Convert.ToInt32(package.GetUpsellPrice(packID));
        savedCost.Text = savedC.ToString();
        upsellPrice2.Text = upsellPrice.Text;
        if (Convert.ToBoolean(Session["JustLogin2"]) == true)
        {
            Response.Redirect("Payment.aspx", false);
        }
    }

    protected void upsellBtn_Click(object sender, ImageClickEventArgs e)
    {
        Order upsell = new Order();
        upsell.UpdateUpsell(Convert.ToInt32(Session["orderid"]));
        if (Session["UserID"] == null)
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
    protected void upsellBtn2_Click(object sender, ImageClickEventArgs e)
    {
        Order upsell = new Order();
        upsell.UpdateUpsell(Convert.ToInt32(Session["orderid"]));
        if (Session["username"] == null)
        {
            string website = "Payment.aspx";
            Session["redirect"] = website;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "OpenColorBox();", true);
        }
        else
        {
            Session["JustLogin2"] = true;
            Response.Redirect("Payment.aspx", false);
        }   
    }

    protected void linkBSC2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Downsell.aspx", false);
    }
    protected void linkBSC_Click(object sender, EventArgs e)
    {
        Response.Redirect("Downsell.aspx", false);
    }
}