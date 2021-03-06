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
    int n = 0;
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {

            Button1.Text = Session["username"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();
            if (!IsPostBack)
            {
                bind();
            }


        }
    }

    private void BindToRepeater(DataTable dt) {
        Repeater1.DataSource = dt.DefaultView;
        Repeater1.DataBind();
    }


    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    string sqlStr = "delete from cart where uid=(Select user_id from user where username='" + Session["username"].ToString() + "') and itemid=(SELECT itemid from item where name ='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "');";

    //    MySqlCommand mySqlCmd = new MySqlCommand(sqlStr, mySqlConn);
    //    mySqlCmd.ExecuteNonQuery();
    //    bind();
    //}
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //System.Diagnostics.Debug.Write(e.CommandName);  
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    int id = Convert.ToInt32(GridView1.DataKeys[GridView1.SelectedIndex].Value.ToString());
    //}
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    GridViewRow gvr = GridView1.Rows[e.RowIndex];
    //    int quantity = int.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim());

    //    string sql = "update cart set quantity='" + quantity + "'where uid=(Select user_id from user where username='" + Session["username"].ToString() + "') and itemid=(SELECT itemid from item where name ='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "');";
    //    System.Diagnostics.Debug.Write(sql);
    //    MySqlCommand mySqlCmd = new MySqlCommand(sql, mySqlConn);
    //    mySqlCmd.ExecuteNonQuery();
    //    bind();
    //}
    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //    bind();
    //}
    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    //int index = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);  
    //    GridView1.EditIndex = e.NewEditIndex;
    //    bind();

    //}
    public void bind()
    {
        string sql = "select item.itemid, item.name,cart.quantity,item.price,item.price*cart.quantity as total from item,cart,user where item.itemid=cart.itemid and user_id=uid and user_id=(Select user_id from user where username=" + "'" + Session["username"].ToString() + "')";
        MySqlCommand cmd = new MySqlCommand(sql, mySqlConn);
        using (MySqlDataAdapter sda = new MySqlDataAdapter())
        {
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                //GridView1.DataSource = dt;

                //GridView1.DataKeyNames = new string[] { "name" };
                //GridView1.DataBind();

                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                n = dt.Rows.Count;
                if (n != 0)
                {
                    Image1.Visible = false;

                }
            }
        }
        string sql1 = "select sum(item.price*cart.quantity) as total from item,cart,user where item.itemid=cart.itemid and user_id=uid and user_id=(Select user_id from user where username= '" + Session["username"].ToString() + "')";
        MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
        using (MySqlDataAdapter sda = new MySqlDataAdapter())
        {
            sda.SelectCommand = cmd1;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                Total.Text = "Total is " + dt.Rows[0]["total"].ToString();
                if (dt.Rows[0]["total"].ToString() == "")
                {
                    Total.Visible = false;
                    
                }
            }
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (Total.Visible == false) {
            return;
        }
            //Insert data into orders table
            string sql1 = "Insert into Orders(purchaseDate,status,uid,shipAddress) values (NOW(),'pending',(" + "SELECT user_id from user where username = '" + Session["username"].ToString() + "'),(SELECT address from user where username = '" + Session["username"].ToString() + "')); ";
            MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
            cmd1.ExecuteNonQuery();
            //SELECT ponumber
            string sql2 = "SELECT MAX(poNum) AS poNum from orders where uid = (SELECT User_id from user WHERE username ='" + Session["username"].ToString() + "') AND purchaseDate= CURDATE();";
            MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter(sql2, mySqlConn);
            DataSet dataset1 = new DataSet();
            DataAdapter1.Fill(dataset1, "isi");

            //SELECT itemid
            string sql3 = "SELECT cart.itemid,quantity,price from cart,item where cart.uid=(Select user_id from user where username='" + Session["username"].ToString() + "') AND item.itemid=cart.itemid;";
            MySqlDataAdapter DataAdapter2 = new MySqlDataAdapter(sql3, mySqlConn);
            DataSet dataset2 = new DataSet();
            DataAdapter2.Fill(dataset2, "isi");
            //insert into orderitem

            n = dataset2.Tables[0].Rows.Count;

            for (int i = 0; i < n; i++)
            {
                string sql5 = "INSERT into orderitem(poNum,itemid,quantity,price) values ('" + dataset1.Tables[0].Rows[0]["poNum"].ToString() + "','" + dataset2.Tables[0].Rows[i]["itemid"] + "','" + dataset2.Tables[0].Rows[i]["quantity"] + "',"+ dataset2.Tables[0].Rows[i]["price"] +")";
                MySqlCommand cmd5 = new MySqlCommand(sql5, mySqlConn);
                cmd5.ExecuteNonQuery();
            }

            //DELECE SHOPPING CART
            string sql4 = "DELETE FROM cart where uid = (SELECT user_id from user where username='" + Session["username"].ToString() + "')";
            MySqlCommand cmd4 = new MySqlCommand(sql4, mySqlConn);
            cmd4.ExecuteNonQuery();
            bind();
            //Redirect to purchase page
            Response.Redirect("Purchase_Tracking_Detail_Page.aspx?p=" + dataset1.Tables[0].Rows[0]["poNum"].ToString());
        
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e) { 
         if (e.CommandName == "detail"){
             Response.Redirect("/ProductDetail_page.aspx?id=" + e.CommandArgument);         
         }
         else if (e.CommandName == "edit") {
                 RepeaterItem item = Repeater1.Items[e.Item.ItemIndex];
                 TextBox txt = (TextBox)item.FindControl("new_quantity");
                 int quan = int.Parse(txt.Text);
                 string sql = "update cart set quantity='" + quan + "'where uid=(Select user_id from user where username='" + Session["username"].ToString() + "') and itemid="+ e.CommandArgument;
                 System.Diagnostics.Debug.Write(sql);
                 MySqlCommand mySqlCmd = new MySqlCommand(sql, mySqlConn);
                 mySqlCmd.ExecuteNonQuery();
                 bind();
            
         }
         else if (e.CommandName == "delete") {
             string sqlStr = "delete from cart where uid=(Select user_id from user where username='" + Session["username"].ToString() + "') and itemid=" + e.CommandArgument;

             MySqlCommand mySqlCmd = new MySqlCommand(sqlStr, mySqlConn);
             mySqlCmd.ExecuteNonQuery();
             bind();
         }
    }
}