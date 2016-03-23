using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    String id = "";
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        String itemid = Request.QueryString["id"];
        id = itemid;
        string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
        mySqlConn = new MySqlConnection(connStr);
        mySqlConn.Open();

        bind(itemid);
    }

    public void bind(String itemid)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select * from item where itemid=" + "'" + itemid + "'", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        pname.Text = dataset.Tables[0].Rows[0]["name"].ToString();
        Label2.Text = dataset.Tables[0].Rows[0]["category"].ToString();
        Label3.Text = dataset.Tables[0].Rows[0]["price"].ToString();
        Label4.Text = dataset.Tables[0].Rows[0]["description"].ToString();
        Image1.ImageUrl = "~/App_Img" + dataset.Tables[0].Rows[0]["detailphoto"].ToString();
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = " insert into cart (itemid,uid,quantity) values ('" + id + "','" + Session["uid"].ToString() + "','1')";

        MySqlCommand cmd2 = new MySqlCommand(sql, mySqlConn);
        cmd2.ExecuteNonQuery();
        Response.Redirect("ShoppingCart_Page.aspx");

    }

}