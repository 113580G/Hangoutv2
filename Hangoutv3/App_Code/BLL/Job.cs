using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using JobSupportTableAdapters;


/// <summary>
/// Summary description for Job
/// </summary>
public class Job
{
    private JobApplicationTableAdapter m_empAdapter = null;
    private int Original_jobID;
    protected JobApplicationTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new JobApplicationTableAdapter();
            return m_empAdapter;
        }
    }

    //Select
    [System.ComponentModel.DataObjectMethodAttribute
        (System.ComponentModel.DataObjectMethodType.Select, true)]
    public JobSupport.JobApplicationDataTable GetEmployees()
    {

        return Adapter.GetJobApplication();
    }

    //Delete
    [System.ComponentModel.DataObjectMethodAttribute
       (System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteEmployee(int Original_ID)
    {

        return Adapter.DeleteJob(Original_jobID);
    }

    //Update
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateData(string fName, string lName, string emailAdd, string address, string postalCode, string blkNo, string unitNo, string contactNo, string gender, string jobResume, string jobCoverletter, int Original_ID)
    {
        return Adapter.Update(fName, lName, emailAdd, address, postalCode, blkNo, unitNo, contactNo, gender, jobResume,jobCoverletter, Original_jobID);
    }

    //Insert
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertJobApplication(string fName, string lName, string emailAdd,
        string address, string postalCode, string blkNo, string unitNo, string contactNo, string gender, string jobResume, string jobCoverletter)
    {

        return Adapter.Insert(Original_jobID, fName, lName, emailAdd, address, postalCode, blkNo, unitNo, contactNo, gender, jobResume,jobCoverletter);
    }

}
