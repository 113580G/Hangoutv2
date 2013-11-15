using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using shoppingcartTableAdapters;
using System.Data;

public class Order
{
    string Timestamp = DateTime.Now.ToString();
    /*****************************************************************************
     * Order 3 TIer
     *****************************************************************************/
    private OrderTableAdapter packageAdapter = null;
    protected OrderTableAdapter Adapter
    {
        get
        {
            if (packageAdapter == null)
                packageAdapter = new OrderTableAdapter();
            return packageAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public shoppingcart.OrderDataTable retrieveOrder()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetOrder();
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteOrder(int packageID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Delete(packageID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public virtual int InsertOrder(string oTimestamp, int custSerial)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Insert(null, null, oTimestamp, custSerial, false);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int retrieveOrderID()
    {
        int cartID = 0;
        // Insert any custom logic/business rules here...
        DataTable orders = Adapter.GetOrder();
        foreach (DataRow row in orders.Rows)
        {
            cartID = Convert.ToInt32(row["orderID"]);
        }
        return cartID;
    }
    
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void updateOrder(string dateOrdered, string paymentmode, int orderid)
    {
        Adapter.UpdateOrder(paymentmode, dateOrdered,true, orderid);
    }
    /*****************************************************************************
     * OrderLine 3 TIer
     *****************************************************************************/
    private OrderlineTableAdapter packageAdapter2 = null;
    protected OrderlineTableAdapter Adapter2
    {
        get
        {
            if (packageAdapter2 == null)
                packageAdapter2 = new OrderlineTableAdapter();
            return packageAdapter2;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public virtual int InsertOL(int quantity, int orderID, int prodID)
    {
        try
        {
            DataTable resultTime = new DataTable();
            resultTime = Adapter2.GetTimestamp(orderID);
            DataRow time = resultTime.Rows[0];
            string dateCreation = time["dateCreated"].ToString();
            Timestamp = dateCreation;
        }
        catch (Exception)
        {
        }

        return Adapter2.Insert(Timestamp, quantity, orderID, prodID, null, null, false, false,null,null,null,null);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public virtual int InsertOL2(string Timestamp, int orderID, int packID, int packParticipants)
    {
        // Insert any custom logic/business rules here...
        return Adapter2.Insert(Timestamp, null, orderID, null, packID, packParticipants, false, false,null,null,null,null);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int retrieveolID()
    {
        int olID = 0;
        // Insert any custom logic/business rules here...
        DataTable orderline = Adapter.GetOrder();
        foreach (DataRow row in orderline.Rows)
        {
            olID = Convert.ToInt32(row["olID"]);
        }
        return olID;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int GetQuantity(int orderID, int productID)
    {
        DataTable resultQ = Adapter2.Getquantity(orderID, productID);
        DataRow QuantityRow = resultQ.Rows[0];
        int quantity = Convert.ToInt32(QuantityRow["quantity"]);
        return quantity;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public bool checkOLexist(int orderID, int productID)
    {
        bool exist = false;
        try
        {
            DataTable resultQ = Adapter2.Getquantity(orderID, productID);
            DataRow QuantityRow = resultQ.Rows[0];
            int quantity = Convert.ToInt32(QuantityRow["quantity"]);
            exist = true;

        }
        catch (Exception)
        {
            exist = false;
        }
        return exist;
    }

    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateOL(int quantity, int orderID, int prodID)
    {
        Adapter2.Updateorder(quantity, orderID, prodID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList GetTP(int orderID)
    {
        ArrayList totalprice = new ArrayList();
        DataTable OrderTable = Adapter2.GetTotalPrice(orderID);
        for (int i = 0; i < OrderTable.Rows.Count; i++)
        {
            DataRow OrderRow = OrderTable.Rows[i];
            string quantityString = String.Format("{0:0.00}", OrderRow["quantity"].ToString());
            double quantity = Convert.ToDouble(quantityString);
            string priceString = String.Format("{0:0.00}", OrderRow["prodPrice"].ToString());
            double price = Convert.ToDouble(priceString);
            double sumOrder = quantity * price;
            totalprice.Add(sumOrder);
        }
        return totalprice;
    }
    [System.ComponentModel.DataObjectMethodAttribute
 (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdatePack(int packID, int participants, int orderID)
    {
        Adapter2.UpdatePackage(packID, participants, orderID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateUpsell(int orderID)
    {
        Adapter2.UpdateUpsell(true, orderID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateDownsell(int orderID)
    {
        Adapter2.UpdateDownsell(true, orderID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateDownsells(string upsellService1, string downsellActivity1, string downsellActivity2, string downsellActivity3, int orderID)
    {
        Adapter2.UpdateDownsells(upsellService1, downsellActivity1, downsellActivity2, downsellActivity3, orderID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList retrieveMainPackage(int orderID)
        {
            ArrayList mainpackage = new ArrayList();
            string serviceCategory = "Mainservices";
            string activityCategory = "Mainactivity";
            DataTable orderline = Adapter2.GetPayment(orderID, serviceCategory,activityCategory);
                DataRow firstRow = orderline.Rows[0];
                mainpackage.Add(firstRow["packName"].ToString());//0
                mainpackage.Add(firstRow["packStartDate"].ToString());//1
                mainpackage.Add(firstRow["packEndDate"].ToString());//2
                mainpackage.Add(firstRow["packPrice"].ToString());//3
                mainpackage.Add(firstRow["servName"].ToString());//4
                DataRow firstRow2 = orderline.Rows[5];
                mainpackage.Add(firstRow2["servName"].ToString());//5
                DataRow firstRow3 = orderline.Rows[1];
                DataRow firstRow4 = orderline.Rows[2];
                DataRow firstRow5 = orderline.Rows[3];
                DataRow firstRow6 = orderline.Rows[4];
                mainpackage.Add(firstRow["activityName"].ToString());//6
                mainpackage.Add(firstRow3["activityName"].ToString());//7
                mainpackage.Add(firstRow4["activityName"].ToString());//8
                mainpackage.Add(firstRow5["activityName"].ToString());//9
                mainpackage.Add(firstRow6["activityName"].ToString());//10           
                mainpackage.Add(firstRow["packParticipants"].ToString());//11
            return mainpackage;
        }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList retrieveUpsellPackage(int orderID)
    {
        ArrayList mainpackage = new ArrayList();
        string serviceCategory = "Upsellservices";
        string activityCategory = "Upsellactivity";
        DataTable orderline = Adapter2.GetPayment(orderID, serviceCategory, activityCategory);
        DataRow firstRow = orderline.Rows[0];
        mainpackage.Add(firstRow["packName"].ToString());//0
        mainpackage.Add(firstRow["packStartDate"].ToString());//1
        mainpackage.Add(firstRow["packEndDate"].ToString());//2
        mainpackage.Add(firstRow["upsellPrice"].ToString());//3
        mainpackage.Add(firstRow["servName"].ToString());//4
        DataRow firstRow2 = orderline.Rows[5];
        mainpackage.Add(firstRow2["servName"].ToString());//5
        DataRow firstRow3 = orderline.Rows[1];
        DataRow firstRow4 = orderline.Rows[2];
        DataRow firstRow5 = orderline.Rows[3];
        DataRow firstRow6 = orderline.Rows[4];
        mainpackage.Add(firstRow["activityName"].ToString());//6
        mainpackage.Add(firstRow3["activityName"].ToString());//7
        mainpackage.Add(firstRow4["activityName"].ToString());//8
        mainpackage.Add(firstRow5["activityName"].ToString());//9
        mainpackage.Add(firstRow6["activityName"].ToString());//10           
        mainpackage.Add(firstRow["packParticipants"].ToString());//11
        return mainpackage;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList retrieveDownsellPackage(int orderID)
    {
        ArrayList Downsellpackage = new ArrayList();
        DataTable orderline = Adapter2.GetDownsellPayment(orderID);
        DataRow firstRow = orderline.Rows[0];
        Downsellpackage.Add(firstRow["downsellServ1"].ToString());//0
        Downsellpackage.Add(firstRow["downsellAct1"].ToString());//1
        Downsellpackage.Add(firstRow["downsellAct2"].ToString());//2
        Downsellpackage.Add(firstRow["downsellAct3"].ToString());//3
        Downsellpackage.Add(firstRow["packParticipants"].ToString());//4
        Downsellpackage.Add(firstRow["downsellPrice"].ToString());//4
        return Downsellpackage;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList VerifyPayment(int orderID)
    {
        ArrayList Downsellpackage = new ArrayList();
        DataTable paymentorder = Adapter2.GetPaymentOrder(orderID);
        try
        {
            int l = 0;
            for (int i = 0; i < paymentorder.Rows.Count; i++) 
            {
                l = 1+ i;
            }
            DataRow firstRow = paymentorder.Rows[l-1];
            if ((firstRow["prodID"] == null) || (firstRow["prodID"].ToString() == ""))
            {
                string abc = "none";
                Downsellpackage.Add(abc);
            }
            else
            {
                Downsellpackage.Add(firstRow["prodID"].ToString());
            }
            if ((firstRow["packID"] == null) || (firstRow["packID"].ToString() == ""))
            {
                string abc = "none";
                Downsellpackage.Add(abc);
            }
            else
            {
                Downsellpackage.Add(firstRow["packID"].ToString());//0
            }
            Downsellpackage.Add(firstRow["packUpsell"].ToString());//1
            Downsellpackage.Add(firstRow["packDownsell"].ToString());//2
        }
        catch (Exception)
        {

        } 
        return Downsellpackage;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int retrieveLastOrder(int custSerial)
    {
        int orderID = 0;
        // Insert any custom logic/business rules here...
        DataTable orders = Adapter2.Getlastorder(custSerial);
        for (int i = 0; i < orders.Rows.Count; i++)
        {
            //Get latest order
            DataRow resultorder = orders.Rows[i];
            orderID = Convert.ToInt32(resultorder["orderID"]);
        }
        return orderID;
    }
}