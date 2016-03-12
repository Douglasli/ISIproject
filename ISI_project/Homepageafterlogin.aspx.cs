﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Label2.Text = Session["username"].ToString();
        }
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("Homepage.aspx");
    }
}