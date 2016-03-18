﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    DataSet dataset1 = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        showproduct();
    }

    private void showproduct()
    {
        try
        {

            conn.Open();

            String sql1 = "SELECT distinct brand FROM item ";
            MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);
            ada1.Fill(dataset1, "isi");

            GridView1.DataSource = dataset1;
            GridView1.DataKeyNames = new String[] { "brand" };
            GridView1.DataBind();



            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }
}