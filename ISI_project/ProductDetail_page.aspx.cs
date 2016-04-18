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
        if ((string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        if (Session["username"] != null)
        {
            Login.Visible = false;
            Button4.Text = Session["username"].ToString();
        }
        else {
            Button4.Visible = false;
            Logout.Visible = false;
        }
        String itemid = Request.QueryString["id"];
        id = itemid;
        string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
        mySqlConn = new MySqlConnection(connStr);
        mySqlConn.Open();

    
        if (!IsPostBack)
        {
            bind(itemid);

        }
    }

    public void bind(String itemid)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select * from item where itemid=" + "'" + itemid + "'", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        MySqlDataAdapter DataAdapter2 = new MySqlDataAdapter("select round(AVG(stars),2) as avg_stars from rating where itemid=" + "'" + itemid + "'", mySqlConn);
        DataSet dataset2 = new DataSet();
        DataAdapter2.Fill(dataset2, "isi");

        pname.Text = dataset.Tables[0].Rows[0]["name"].ToString();
        Label2.Text = dataset2.Tables[0].Rows[0]["avg_stars"].ToString();
        Label3.Text = dataset.Tables[0].Rows[0]["price"].ToString();
        
        Image1.ImageUrl = dataset.Tables[0].Rows[0]["thumbnailimage"].ToString();
        String detailphoto = dataset.Tables[0].Rows[0]["detailphoto"].ToString();
        String[] detailphotoes = detailphoto.Split(';');
        Image3.ImageUrl = detailphotoes[0];
        Image4.ImageUrl = detailphotoes[1];
        Image5.ImageUrl = detailphotoes[2];
        Image6.ImageUrl = detailphotoes[3];
        

        String disc = dataset.Tables[0].Rows[0]["description"].ToString();
        string[] estr = disc.Split(';');

        for (int i = 0; i < estr.Length; i++) {
            BulletedList1.Items.Add(estr[i]);
        }

        MySqlDataAdapter DataAdapter3 = new MySqlDataAdapter("select user.username,review.comment from review,user where itemid=" + "'" + itemid + "' and review.user_id=user.user_id", mySqlConn);
        DataSet dataset3 = new DataSet();
        DataAdapter3.Fill(dataset3, "isi");

        Repeater2.DataSource = dataset3;
        Repeater2.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null) {
            Response.Redirect("Login_Page.aspx?id="+id);
        }
        string sql1 = "SELECT * from cart where itemid = '"+id+"' AND uid = '" + Session["uid"].ToString()+"' ";
        MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
        object obj;
        obj = cmd1.ExecuteScalar();
        if (obj != null)
        {
            Label5.Text = "This product is already in your cart.";
        }
        else
        {
            string sql = " insert into cart (itemid,uid,quantity) values ('" + id + "','" + Session["uid"].ToString() + "','1')";
            MySqlCommand cmd2 = new MySqlCommand(sql, mySqlConn);
            cmd2.ExecuteNonQuery();
            Label5.Text = "OK";
        }
       

    }


    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
}