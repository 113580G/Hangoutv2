using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdministratorRegisTableAdapters;
/// <summary>
/// Summary description for AdminRegBLL
/// </summary>

public class AdminRegBLL
{
    private AdministratorRegisTableAdapter m_empAdapter = null;
    protected AdministratorRegisTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new AdministratorRegisTableAdapter();
            return m_empAdapter;
        }
    }

    //INSERT
    [System.ComponentModel.DataObjectMethodAttribute
        (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertAdminReg(string aFname, string aLname, string aEmail,
        string aPhone, string aUsername, string aPassword, string aRoles)
    {

        return Adapter.InsertAdminReg(aFname, aLname, aEmail,
             aPhone, aUsername, aPassword, aRoles);
    }

    //SELECT
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Select, true)]
    public AdministratorRegis.AdministratorRegisDataTable GetAdminReg()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetAdminReg();
    }

    //DELETE
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteAdminRegis(int Original_ID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Delete(Original_ID);
    }

    //UPDATE
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateAdminRegis(string aFname, string aLname, string aEmail,
        string aPhone, string aUsername, string aPassword, string aRoles, int Original_staffID)
{
             return Adapter.UpdateAdminReg(aFname, aLname, aEmail,
             aPhone, aUsername, aPassword, aRoles, Original_staffID);

}

}
