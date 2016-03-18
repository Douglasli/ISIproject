﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            String username = Session["username"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=MYSQL";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

            bind(username);
        }


    }

    public void bind(String username)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select orders.poNum,orders.purchaseDate,orders.shipDate,orders.shipAddress,user.Username,orders.status from orders,user where user.Username=" + "'" + username + "'and user.User_id=orders.uid", mySqlConn);
        DataSet dataset = new DataSet();


        DataAdapter1.Fill(dataset, "isi");

        String poNo = dataset.Tables[0].Rows[0]["poNum"].ToString();
        String pdate = dataset.Tables[0].Rows[0]["purchaseDate"].ToString();
        String sdate = dataset.Tables[0].Rows[0]["shipDate"].ToString();
        String saddr = dataset.Tables[0].Rows[0]["shipAddress"].ToString();
        String uname = dataset.Tables[0].Rows[0]["Username"].ToString();
        String status = dataset.Tables[0].Rows[0]["status"].ToString();

        Label1.Text = poNo;
        Label2.Text = pdate;
        Label3.Text = sdate;
        Label4.Text = saddr;
        Label5.Text = status;
        Label6.Text = uname;

    }
}