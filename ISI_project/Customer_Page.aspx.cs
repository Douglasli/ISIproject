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
        if (Session["username"] == null||(string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            String username = Session["username"].ToString();
            Button1.Text = username;
            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();
            bind(username);


            MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select sum(status) as t from notification where user_id='" + Session["uid"].ToString() + "'", mySqlConn);
            DataSet dataset = new DataSet();
            DataAdapter1.Fill(dataset, "isi");
            
                int total = int.Parse(dataset.Tables[0].Rows[0]["t"].ToString());

                if (total > 0)
                {
                    notify.Style["background-color"] = "rgba(255,0,0,0.8)";
                }
           

        }
        

    }

    public void bind(String username)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select User_id,Username,First_name,Last_name,email,address,Type from user where Username=" + "'" + username+"'", mySqlConn);
        DataSet dataset = new DataSet();


        DataAdapter1.Fill(dataset, "isi");

        String userid = dataset.Tables[0].Rows[0]["User_id"].ToString();
        String uname = dataset.Tables[0].Rows[0]["Username"].ToString();
        String fname = dataset.Tables[0].Rows[0]["First_name"].ToString();
        String lname = dataset.Tables[0].Rows[0]["Last_name"].ToString();
        String email = dataset.Tables[0].Rows[0]["email"].ToString();
        String addr = dataset.Tables[0].Rows[0]["address"].ToString();
        String type = dataset.Tables[0].Rows[0]["Type"].ToString();

        Label1.Text = userid;
        Label2.Text = uname;
        Label3.Text = fname;
        Label4.Text = lname;
        Label5.Text = email;
        Label6.Text = addr;
        Label7.Text = type;
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
}