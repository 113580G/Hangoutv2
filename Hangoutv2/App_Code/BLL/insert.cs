using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using registrationTableAdapters;
using System.Data;
/// <summary>
/// Summary description for insert
/// </summary>
public class insert
{
    private Customer_RegistrationTableAdapter m_empAdapter = null;
    protected Customer_RegistrationTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new Customer_RegistrationTableAdapter();
            return m_empAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
        (System.ComponentModel.DataObjectMethodType.Select, true)]
    public registration.Customer_RegistrationDataTable GetTable()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetInsert();
    }
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertRegister(string fName, string lName, string emailAdd, string dob, string postCode, string address, string contactNo, string gender, string cityState, string passwprd, string rePassword, string secretQns, string secretAns)
    {
        return Adapter.InsertQuery2(null, null, fName, lName, emailAdd, dob, postCode, address, contactNo, gender, cityState, passwprd, rePassword, secretQns, secretAns);

    }
    public Boolean Login(string emailAdd, string password)
    {
        string pwd = null;
        DataTable t = Adapter.GetDataBy3(emailAdd);
        foreach (DataRow row in t.Rows)
        {
            pwd = row["passwprd"].ToString();
        }

        if (pwd == password)
            return true;
        else
            return false;
    }
    public int RetrieveID(string emailAdd)
    {
        int id = 0;
        DataTable a = Adapter.GetID(emailAdd);
        foreach (DataRow row in a.Rows)
        {
            id = Convert.ToInt32(row["custSerial"]);
            //id = row["fName"].ToString() + " " + row["lName"].ToString();
        }
        return id;
    }
    public string RetrievefName(string emailAdd)
    {
        string clientfName = "";
        DataTable a = Adapter.GetID(emailAdd);
        DataRow row = a.Rows[0];
        clientfName = row["fName"].ToString();
            //id = row["fName"].ToString() + " " + row["lName"].ToString();
        return clientfName;
    }
    public ArrayList UserInfo(string emailAdd)
    { 
        ArrayList userstuff = new ArrayList();
        DataTable resultUser = Adapter.GetID(emailAdd);
        DataRow user1 = resultUser.Rows[0];
        userstuff.Add(user1["fName"]+" "+user1["lName"]);
        userstuff.Add(user1["Address"]);
        userstuff.Add(user1["cityState"]);
        userstuff.Add(user1["contactNo"]);
        userstuff.Add(user1["emailAdd"]);
        return userstuff;
    }
}