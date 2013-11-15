using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ContactUsTableAdapters;
/// <summary>
/// Summary description for insert
/// </summary>
public class contactUs
{
    private ContactUsTableAdapter m_empAdapter = null;
    protected ContactUsTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new ContactUsTableAdapter();
            return m_empAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
        (System.ComponentModel.DataObjectMethodType.Select, true)]
    public ContactUs.ContactUsDataTable GetTable()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetData();
    }
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertContactUs(string salutation,string name, string tel, string email, string subject, string queries, string prefCont, string captcha)
    {
        return Adapter.InsertQuery(salutation, name, tel, email, subject, queries, prefCont, captcha);

    }
}