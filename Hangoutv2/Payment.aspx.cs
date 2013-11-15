using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Default3 : System.Web.UI.Page
{
    Order createorder = new Order();
    insert customer = new insert();
    Transaction ordering = new Transaction();
    int custSerial = 1; //replace with customer serial
    int productID = 0;
    int ordID = 0;
    string oTimestamp = DateTime.Now.ToString();
    bool mainpackageVerify = false;
    bool upsellpackageVerify = false;
    bool downsellpackageVerify = false;
    bool shoppingcartVerify = false;
    protected void Page_Load(object sender, EventArgs e)
    {

        ArrayList verifyorder = createorder.VerifyPayment(Convert.ToInt32(Session["orderid"]));
        try
        {
            if (verifyorder[0].ToString() == "none")
            {
                Panel4.Visible = false;
                shoppingcartVerify = false;
            }
            else
            {
                Panel5.Visible = true;
                Panel4.Visible = true;
                shoppingcartVerify = true;
                ordID = Convert.ToInt32(Session["orderid"]);
                ArrayList sumProd = createorder.GetTP(ordID);
                double sumproduct = 0;
                for (int i = 0; i < sumProd.Count; i++)
                {
                    sumproduct = Math.Round(sumproduct, 2);
                    sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]), 2);
                }
                scTotal.Text = sumproduct.ToString("c2");
                mainpackageVerify = true;
            }
            if (verifyorder[1].ToString() == "none")
            {
                Panel1.Visible = false;
                mainpackageVerify = false;
            }
            else
            {
                Panel1.Visible = true;
                mainpackageVerify = true;
            }
            if (Convert.ToBoolean(verifyorder[2]) == true)
            {
                Panel2.Visible = true;
                upsellpackageVerify = true;
            }
            else
            {
                Panel2.Visible = false;
                upsellpackageVerify = false;
            }
            if (Convert.ToBoolean(verifyorder[3]) == true)
            {
                Panel3.Visible = true;
                downsellpackageVerify = true;
            }
            else
            {
                Panel3.Visible = false;
                downsellpackageVerify = false;
            }
            /*********************************************************************
             * Main Package
             ********************************************************************/
            if (mainpackageVerify == true)
            {
                ArrayList mainpackage = createorder.retrieveMainPackage(Convert.ToInt32(Session["orderid"]));
                mPackagename.Text = mainpackage[0].ToString();
                mStartdate.Text = mainpackage[1].ToString();
                mEnddate.Text = mainpackage[2].ToString();
                mService1.Text = mainpackage[4].ToString();
                mService2.Text = mainpackage[5].ToString();
                mActivity1.Text = mainpackage[6].ToString();
                mActivity2.Text = mainpackage[7].ToString();
                mActivity3.Text = mainpackage[8].ToString();
                mActivity4.Text = mainpackage[9].ToString();
                mActivity5.Text = mainpackage[10].ToString();
                mPpl.Text = mainpackage[11].ToString();
                costPart.Text = "$" + mainpackage[3].ToString();
                mTotalcost.Text = (Convert.ToInt32(mainpackage[11]) * Convert.ToInt32(mainpackage[3])).ToString();
            }
            /******************************************************************
            * Upsell
            * ***************************************************************/
            if (upsellpackageVerify == true)
            {
                ArrayList upsellpackage = createorder.retrieveUpsellPackage(Convert.ToInt32(Session["orderid"]));
                uService1.Text = upsellpackage[4].ToString();
                uService2.Text = upsellpackage[5].ToString();
                uActivity1.Text = upsellpackage[6].ToString();
                uActivity2.Text = upsellpackage[7].ToString();
                uActivity3.Text = upsellpackage[8].ToString();
                uActivity4.Text = upsellpackage[9].ToString();
                uActivity5.Text = upsellpackage[10].ToString();
                uPart.Text = upsellpackage[11].ToString();
                uCost.Text = "$" + upsellpackage[3].ToString();
                uTotalcost.Text = (Convert.ToInt32(upsellpackage[11]) * Convert.ToInt32(upsellpackage[3])).ToString();
            }
            /******************************************************************
            * Downsell
            ****************************************************************/
            if (downsellpackageVerify == true)
            {
                ArrayList downsellpackage = createorder.retrieveDownsellPackage(Convert.ToInt32(Session["orderid"]));
                dService1.Text = downsellpackage[0].ToString();
                dActivity1.Text = downsellpackage[1].ToString();
                dActivity2.Text = downsellpackage[2].ToString();
                dActivity3.Text = downsellpackage[3].ToString();
                dPart.Text = downsellpackage[4].ToString();
                dCost.Text = "$" + downsellpackage[5].ToString();
                dTotalcost.Text = (Convert.ToInt32(downsellpackage[4]) * Convert.ToInt32(downsellpackage[5])).ToString();
            }
            printout();
            /************************************************************
             * Populate user particulars into payment
             ************************************************************/
            ArrayList userInformation = customer.UserInfo(Session["emailAddress"].ToString());
            ShippingName.Text = userInformation[0].ToString();
            shippingAdd.Text = userInformation[1].ToString();
            zipcode.Text = userInformation[2].ToString();
            telephone.Text = userInformation[3].ToString();
            emailAdd.Text = userInformation[4].ToString();
        }
        catch (Exception)
        {

        }
    }
    protected void cartUpdate_Click(object sender, GridViewUpdatedEventArgs e)
    {
        ordID = Convert.ToInt32(Session["orderid"]);
        ArrayList sumProd = createorder.GetTP(ordID);
        double sumproduct = 0;
        for (int i = 0; i < sumProd.Count; i++)
        {
            sumproduct = Math.Round(sumproduct, 2);
            sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]), 2);
        }
        gtcBox.Text = "";
        printout();
    }
    protected void cartDelete_Click(object sender, GridViewDeletedEventArgs e)
    {
        ordID = Convert.ToInt32(Session["orderid"]);
        ArrayList sumProd = createorder.GetTP(ordID);
        double sumproduct = 0;
        for (int i = 0; i < sumProd.Count; i++)
        {
            sumproduct = Math.Round(sumproduct, 2);
            sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]), 2);
        }
        gtcBox.Text = "";
        printout();
    }
    protected void printout()
    {
        double mcosting = 0;
        if (mTotalcost.Text != "")
        {
            mcosting = Math.Round(Convert.ToDouble(mTotalcost.Text), 2);
            gtcBox.Text = gtcBox.Text + mPackagename.Text + " cost: " + mcosting.ToString("c2");
        }
        else
        {
            mcosting = 0;
        }
        double ucosting = 0;
        if (uTotalcost.Text != "")
        {
            ucosting = Convert.ToDouble(uTotalcost.Text);
            gtcBox.Text = gtcBox.Text + "\r\n" + "Upsell Package cost: " + ucosting.ToString("c2");
        }
        else
        {
            ucosting = 0;
        }
        double dcosting = 0;
        if (dTotalcost.Text != "")
        {
            dcosting = Math.Round(Convert.ToDouble(dTotalcost.Text), 2);
            gtcBox.Text = gtcBox.Text + "\r\n" + "Downsell Package cost: " + dcosting.ToString("c2");
        }
        else
        {
            dcosting = 0;
        }
        double scCost = 0;
        if (scTotal.Text != "")
        {

            string scCost2 = scTotal.Text.Replace("$", "");
            scCost = Math.Round(Convert.ToDouble(scCost2), 2);
            gtcBox.Text = gtcBox.Text + "\r\n" + "Product Cost: " + scCost.ToString("c2");
        }
        else
        {
            scCost = 0;
        }
        double GTotal = Math.Round((mcosting + ucosting + dcosting + scCost), 2);
        grandCost.Text = GTotal.ToString("c2");
    }
    protected void cartUpdating(object sender, GridViewUpdateEventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }
    protected void cartDeleting(object sender, GridViewDeleteEventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }
    protected void cartediting(object sender, GridViewEditEventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }
    protected void cancelediting(object sender, GridViewCancelEditEventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }

    protected void sorted(object sender, EventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }
    protected void sorting(object sender, GridViewSortEventArgs e)
    {
        gtcBox.Text = "";
        printout();
    }
    protected void startover_click(object sender, EventArgs e)
    {
        ShippingName.Text = "";
        shippingAdd.Text = "";
        zipcode.Text = "";
        telephone.Text = "";
        emailAdd.Text = "";
    }

    protected void submitPaymentInfo(object sender, EventArgs e)
    {
        bool verify = false;
        bool verify1 = false;
        bool verify2 = false;
        bool verify3 = false;
        bool verify4 = false;
        bool verify5 = false;
        bool verify6 = false;
        bool verify7 = false;
        bool verify8 = false;

        string dateOrdered = DateTime.Now.ToString();
        string paymentMode = "";
        if (Visa.Checked == true)
        {
            paymentMode = Visa.Text;
        }
        else
        {
            paymentMode = MasterCard.Text;
        }
        if (Visa.Checked == false && MasterCard.Checked == false )
        {
            ppm.Text = "*Please select one";
            verify = false;
            ppm.Visible = true;
        }
        else
        {
            ppm.Text = "";
            verify = true;
            ppm.Visible = false;
        }
        if (cardNumber.Text == "")
        {
            cardNo.Text = "*Please insert cardholder number";
            verify1 = false;
            cardNo.Visible = true;
        }

        else
        {
            cardNo.Text = "";
            verify1 = true;
            cardNo.Visible = false;
        }
        if (securityCode.Text == "")
        {
            sc.Text = "*Please insert security number";
            verify2 = false;
            sc.Visible = true;
        }
        else
        {
            sc.Text = "";
            verify2 = true;
            sc.Visible = false;
        }
        if (cardholderNo.Text == "")
        {
            ch.Text = "*Please insert cardholder name";
            verify3 = false;
            ch.Visible = true;
        }
        else
        {
            ch.Text = "";
            verify3 = true;
            ch.Visible = false;
        }
        if (ShippingName.Text == "")
        {
            sName.Text = "*Please insert shipping name";
            verify4 = false;
            sName.Visible = true;
        }
        else
        {
            sName.Text = "";
            verify4 = true;
            sName.Visible = false;
        }
        if (shippingAdd.Text == "")
        {
            sAdd.Text = "*Please insert shipping address";
            verify5 = false;
            sAdd.Visible = true;
        }
        else
        {
            sAdd.Text = "";
            verify5 = true;
            sAdd.Visible = false;
        }
        if (zipcode.Text == "")
        {
            sZip.Text = "*Please insert zipcode";
            verify6 = false;
            sZip.Visible = true;
        }
        else
        {
            sZip.Text = "";
            verify6 = true;
            sZip.Visible = false;
        }
        if (telephone.Text == "")
        {
            stel.Text = "*Please insert telephone";
            verify7 = false;
            stel.Visible = true;
        }
        else
        {
            stel.Text = "";
            verify7 = true;
            stel.Visible = false;
        }
        if (emailAdd.Text == "")
        {
            smail.Text = "*Please insert email";
            verify8 = false;
            smail.Visible = true;
        }
        else
        {
            smail.Text = "";
            verify8 = true;
            smail.Visible = false;
        }
        if (verify && verify1 && verify2 && verify3 && verify4 && verify5 && verify6 && verify7 && verify8)
        {
            string expiryDate = expiredDay.Text + expiredMonth.Text;
            createorder.updateOrder(dateOrdered, paymentMode, Convert.ToInt32(Session["orderid"]));
            ordering.InsertTransaction(cardNumber.Text, securityCode.Text, expiryDate, cardholderNo.Text, ShippingName.Text, shippingAdd.Text, zipcode.Text, telephone.Text, emailAdd.Text, Convert.ToInt32(Session["orderid"]));
            Session["stid"] = ordering.retrievestID(Convert.ToInt32(Session["orderid"]));
            Session.Remove("Justlogin");
            Session.Remove("JustLogin2");
            Session.Remove("JustLogin3");
            Session.Remove("orderid");
            Response.Redirect("Successful.aspx", false);
        }
    }
}