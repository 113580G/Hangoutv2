using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string CatName = this.TextBox8.Text;

        ProductBLL Product = new ProductBLL();
        Product.Insertcat(CatName);
        Response.Redirect("SuccessAddProduct.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string Category = this.DropDownList1.Text;
        int CatID = Convert.ToInt32(Category);
        string prodName = this.TextBox3.Text;
        string ImageURL = this.TextBox4.Text;
        string prodDetails = this.TextBox5.Text;
        string prodPrice = this.TextBox6.Text;

        ProductBLL Product = new ProductBLL();
        Product.Insertprod(CatID, prodName, ImageURL, prodDetails, prodPrice);
        Response.Redirect("SuccessAddProduct.aspx");
    }
}