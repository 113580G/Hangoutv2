using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Default7 : System.Web.UI.Page
{
    Order createorder = new Order();
    int custSerial = 1; //replace with customer serial
    int productID = 0;
    int ordID = 0;
    string oTimestamp = DateTime.Now.ToString();
    bool justlogin = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["Justlogin"]) == true)
        {
            Response.Redirect("Payment.aspx", false);
        }
        if (Session["orderid"] != null)
        {
            checkoutpanel.Visible = true;
        }
        else
        {
            checkoutpanel.Visible = false;
        }
        ordID = Convert.ToInt32(Session["orderid"]);
        ArrayList sumProd = createorder.GetTP(ordID);
        double sumproduct = 0;
        for (int i = 0; i < sumProd.Count; i++)
        {
            sumproduct = Math.Round(sumproduct, 2);
            sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]), 2);
        }
        totalPrice.Text = sumproduct.ToString("c2");
    }

    protected void add(object sender, CommandEventArgs e)
    {
        createorder.InsertOrder(oTimestamp, custSerial);
        int orderID = createorder.retrieveOrderID();
        
        if (Session["orderid"] == null)
        {
            Session["orderid"] = orderID;
            if (e.CommandName == "atcBtn")
            {
                string pID = e.CommandArgument.ToString();
                productID = Convert.ToInt32(pID);
                checkoutpanel.Visible = true;
            }
            createorder.InsertOL(1, orderID, productID);
        }
        else
        {
            checkoutpanel.Visible = true;
            orderID = Convert.ToInt32(Session["orderid"]);
            string pID = e.CommandArgument.ToString();
            productID = Convert.ToInt32(pID);
            
            if (createorder.checkOLexist(orderID,productID) == false)
            {
                createorder.InsertOL(1, orderID, productID);
                //Session["productid"] = productID;
                justlogin = true;
            }
            else
            {
                checkoutpanel.Visible = true;
                int getquantity = createorder.GetQuantity(orderID, productID);
                int newquantity = getquantity + 1;
                createorder.UpdateOL(newquantity, orderID, productID);
            }
            GridView1.DataBind();
        }
        ordID = Convert.ToInt32(Session["orderid"]);
        ArrayList sumProd = createorder.GetTP(ordID);
        double sumproduct = 0;
        for (int i = 0; i < sumProd.Count; i++)
        {
            sumproduct = Math.Round(sumproduct, 2);
            sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]), 2);
        }
        totalPrice.Text = sumproduct.ToString("c2");
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
        totalPrice.Text = sumproduct.ToString("c2");
    }
    protected void cartDelete_Click(object sender, GridViewDeletedEventArgs e)
    {
        ordID = Convert.ToInt32(Session["orderid"]);
        ArrayList sumProd = createorder.GetTP(ordID);
        double sumproduct = 0;
        for (int i = 0; i < sumProd.Count; i++)
        {
            sumproduct = Math.Round(sumproduct, 2);
            sumproduct = sumproduct + Math.Round(Convert.ToDouble(sumProd[i]),2);
        }
        totalPrice.Text = sumproduct.ToString("c2");
    }
    protected void checkoutBtn_Click(object sender, ImageClickEventArgs e)
    {

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
    protected void buypackageBtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Packages.aspx", false);
    }
    protected void addToCart_Click(object sender, EventArgs e)
    {

    }
}