using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestimonialTableAdapters;
[System.ComponentModel.DataObject]
public class Testismonial
{
    private Testimonials1TableAdapter m_empAdapter = null;
    protected Testimonials1TableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new Testimonials1TableAdapter();
            return m_empAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public Testimonial.Testimonials1DataTable GetTadminData()
    {

        return Adapter.GetTadminData();
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public Testimonial.Testimonials1DataTable GetTData()
    {

        return Adapter.GetTrue(true);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int Deletetestismonial(int Original_testID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.DeleteTest(Original_testID);
    }

    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateTestismonial(string testDesc, string tTimestamp, bool tDecision, int custSerial, int staffID, int Original_testID)
    {
        int Rtn = 0;

        // Validate if staff ID is valid first:
        AdministratorRegisTableAdapters.AdministratorRegisTableAdapter admin_adapter = new AdministratorRegisTableAdapters.AdministratorRegisTableAdapter();
        AdministratorRegis.AdministratorRegisDataTable dt = admin_adapter.GetAdminReg();
        AdministratorRegis.AdministratorRegisRow row = dt.FindBystaffID(staffID);
        if (row != null)
        {
            Rtn = Adapter.Updatetest(testDesc, tTimestamp, tDecision, custSerial, staffID, Original_testID);
        }

        return Rtn;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertTestimonial(string testDesc, string tTimestamp, int custSerial)
    {
        // Check to make sure SavingsDeduction is not more than 20%:

        return Adapter.InsertTestimonial(testDesc, tTimestamp, custSerial, null);
    }

}

