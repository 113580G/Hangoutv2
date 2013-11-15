using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using JobSupportTableAdapters;

/// <summary>
/// Summary description for SupportTicket
/// </summary>
public class SupportTicket
{
    private SupportTicketTableAdapter m_empAdapter = null;
    protected SupportTicketTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new SupportTicketTableAdapter();
            return m_empAdapter;
        }
    }

    //Delete
    [System.ComponentModel.DataObjectMethodAttribute
       (System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteGetSupportTix(int Original_ID)
    {

        return Adapter.Delete(Original_ID);
    }

    //Insert
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertSupportTix (string stPriority, string stContent, string stTimestamp)
    {
         return Adapter.InsertSupportTix(stPriority, stContent, stTimestamp);
    }


    //Update
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateSupportTix(string stPriority, string stContent, string stTimestamp, int custSerial, int staffID, int Original_ID)
    {
        return Adapter.UpdateSupportTix(stPriority, stContent, stTimestamp, custSerial, staffID, Original_ID);
    }
}