using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Default2 : System.Web.UI.Page
{
    bool correctNum = false;
    bool packNum = false;
    int packID = 0;
    int orderID = 0;
    int participants = 0;
    string Timestamp = DateTime.Now.ToString();
    createpackage createPackage = new createpackage();
    Order package = new Order();
    int custSerial = 1;//replace with user serial
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void clicked(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript
                   (GetType(), "Javascript", "javascript: changeWebHeight2()", true);
        //cpPanel.Visible = true;
        /*******************************************************************************
         * Validation
         ******************************************************************************/
        if (Convert.ToInt32(PackageDlist.SelectedValue) == 0)
        {
            // ShowAlert("Please select a package");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue();", true);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight2();", true);
            //jsEnabler.Text = "<script type='text/javascript'>showNoValue();</script>";
            //jsEnabler2.Text = "<script type='text/javascript'>changeWebHeight2();</script>"; 
           /* ClientScript.RegisterStartupScript
                   (GetType(), "Javascript", "javascript: showNoValue(), changeWebHeight2()", true);
            /*   ClientScript.RegisterStartupScript
                      (GetType(), "Javascript", "javascript: changeWebHeight()", true);*/
             packNum = false;
             correctNum = false;
        }
        if (Convert.ToInt32(PackageDlist.SelectedValue) != 0)
        {
            jsEnabler.Text = "";
            jsEnabler2.Text = "";
            packNum = true;
            correctNum = true;
        }
        if (packNum == true && noOfPart.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showInsertValue();", true);
            //jsEnabler.Text = "<script type='text/javascript'>showInsertValue();</script>"; 
            correctNum = false;
        }
        if (packNum == true && noOfPart.Text != "")
        {
            jsEnabler.Text = "";
            jsEnabler2.Text = "";
            correctNum = true;
        }
        if (correctNum)
        {
            createpackage package = new createpackage();
            int packID = Convert.ToInt32(PackageDlist.SelectedValue);
            Session["Package"] = packID;
            string insertPriceLabel = package.GetPackPrice(packID);
            int cost = 0;
            cpPanel.Visible = true;
            calculatedPrice.Enabled = true;
            calculatedPrice.Visible = true;
            try
            {
                cost = Convert.ToInt32(noOfPart.Text) * Convert.ToInt32(insertPriceLabel);
                correctNum = true;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight2();", true);

            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showInputError();", true);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight2();", true);
                //jsEnabler.Text = "<script type='text/javascript'>showInputError();</script>";
                cpPanel.Visible = false;
                calculatedPrice.Enabled = false;
                calculatedPrice.Visible = false;
            }
            calculatedPrice.Text = "\r\nTotal cost per individual: $" + insertPriceLabel +
                                   "\r\nNumber of individuals:" + noOfPart.Text +
                                   "\r\nTotal cost: $" + cost.ToString();
            calculatedPrice.Text = calculatedPrice.Text.Replace("\r\n", "<br/>");
            paymentTop.Visible = true;
            priceLabel.Visible = true;
            dateLabel.Visible = true; ;
            dateLabel.Text = PackageDlist.SelectedItem.ToString() + " will be held on " + startDate.Text + " and ends on " + endDate.Text + ".";
            priceLabel.Text = "For a limited time only, $" + insertPriceLabel + " per/person";
            paymentTop.Text = "Just for limited time only, the total price is $" + cost.ToString() + "/NET for " + noOfPart.Text + " participants";
        }
    }
    protected void selected(object sender, EventArgs e)
    {
        createpackage package = new createpackage();
        startDate.Text = package.getStartDate(PackageDlist.SelectedItem.ToString());
        endDate.Text = package.getEndDate(PackageDlist.SelectedItem.ToString());
        topofferp.Visible = true;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight();", true);
 /*ClientScript.RegisterStartupScript
                    (GetType(), "Javascript", "javascript: changeWebHeight()", true);*/
        }
    protected void addtoSC(object sender, ImageClickEventArgs e)
    {
        if (Convert.ToInt32(PackageDlist.SelectedValue) == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showNoValue();", true);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight2();", true);
            // ShowAlert("Please select a package");
           /* ClientScript.RegisterStartupScript
                   (GetType(), "Javascript", "javascript: showNoValue(), changeWebHeight2()", true);*/
            /*   ClientScript.RegisterStartupScript
                      (GetType(), "Javascript", "javascript: changeWebHeight()", true);*/
        }
        else if (noOfPart.Text == "")
        {
            /*
            ClientScript.RegisterStartupScript
       (GetType(), "Javascript", "javascript: showInputError(), changeWebHeight2()", true);*/
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "showInsertValue();", true);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ShowNovalue", "changeWebHeight2();", true);
        }
        else
        {
            if (Session["orderid"] == null)
            {
                packID = Convert.ToInt32(PackageDlist.SelectedValue);
                participants = Convert.ToInt32(noOfPart.Text);
                package.InsertOrder(Timestamp, custSerial);
                orderID = package.retrieveOrderID();
                Session["orderid"] = orderID;
                package.InsertOL2(Timestamp, orderID, packID, participants);
                Session["JustLogin2"] = false;
                Session["JustLogin3"] = false;
            }
            else
            {
                packID = Convert.ToInt32(PackageDlist.SelectedValue); 
                orderID = Convert.ToInt32(Session["orderid"]);
                participants = Convert.ToInt32(noOfPart.Text);
                package.UpdatePack(packID, participants, orderID);
            }
            Response.Redirect("Upsell.aspx", false);
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
    protected void noOfPart_TextChanged(object sender, EventArgs e)
    {

    }
}