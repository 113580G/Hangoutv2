using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProductTableAdapters;


/// <summary>
/// Summary description for ProductBLL
/// </summary>
[System.ComponentModel.DataObject]
public class ProductBLL
{
    private ProductTableAdapter m_empAdapter = null;
    protected ProductTableAdapter Adapter
    {
        get
        {
            if (m_empAdapter == null)
                m_empAdapter = new ProductTableAdapter();
            return m_empAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public Product.ProductDataTable GetCatID(int CatID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetProductData(CatID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteProduct(int prodID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.Delete(prodID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int Insertprod(int CatID, string prodName, string ImageURL, string prodDetails, string prodPrice)
    {
        // Check to make sure SavingsDeduction is not more than 20%:

        return Adapter.Insert(CatID, prodName, ImageURL, prodDetails, prodPrice);
    }

     private CategoryTableAdapter m_catAdapter = null;
     protected CategoryTableAdapter Adapter2
     {
         get
         {
             if (m_catAdapter == null)
                 m_catAdapter = new CategoryTableAdapter();
             return m_catAdapter;
         }
     }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int Insertcat(string CatName)
    {
        // Check to make sure SavingsDeduction is not more than 20%:

        return Adapter2.Insertcat(CatName);
    }
}