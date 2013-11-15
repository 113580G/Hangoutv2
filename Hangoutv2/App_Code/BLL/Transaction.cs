using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SuccessfulTransactionTableAdapters;
using System.Data;

public class Transaction
{

    private SuccessfulTransactionTableAdapter packageAdapter = null;
    protected SuccessfulTransactionTableAdapter Adapter
    {
        get
        {
            if (packageAdapter == null)
                packageAdapter = new SuccessfulTransactionTableAdapter();
            return packageAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public virtual int InsertTransaction(string cardNumber, string securityCode, string expiryDate, string cardholderName, string sName, string sShippingAddress, string sPostCodeZip, string telephone, string email, int orderid)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Insert(cardNumber, securityCode, expiryDate, cardholderName, sName, sShippingAddress, sPostCodeZip, telephone, email, orderid);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int retrievestID(int orderID)
    {
        // Insert any custom logic/business rules here...
        DataTable stIDresult = Adapter.GetstID(orderID);
        DataRow resultstID = stIDresult.Rows[0];
        int stID = Convert.ToInt32(resultstID["stID"]);
        return stID;
    }
}