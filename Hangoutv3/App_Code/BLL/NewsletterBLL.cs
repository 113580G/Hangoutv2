using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using newsTableAdapters;


/// <summary>
/// Summary description for NewsletterBLL
/// </summary>
public class NewsletterBLL
{
	
    private NewsLetterTableAdapter m_empAdapter = null;
    protected NewsLetterTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new NewsLetterTableAdapter();
            return m_empAdapter;
        }
    }

    //INSERT
    [System.ComponentModel.DataObjectMethodAttribute
        (System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertNews(string FirstName, string LastName, string Email)
    {

        return Adapter.InsertNews(FirstName, LastName, Email);
    }

    //SELECT
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Select, true)]
    public news.NewsLetterDataTable GetNews()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetNews();
    }

    //DELETE
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteNews(int Original_newsID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Delete(Original_newsID);
    }

    //UPDATE
    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateNews(string FirstName, string LastName, string Email, int Original_newsID)
{
             return Adapter.UpdateNews(FirstName, LastName, Email, Original_newsID);

}

}

