﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void click(object sender, EventArgs e)
    {
        Response.Redirect("AddTestimonial.aspx");
    }
}