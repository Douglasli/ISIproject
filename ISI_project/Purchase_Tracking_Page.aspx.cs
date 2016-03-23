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
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            String uid = Session["uid"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

            bind(uid);
        }


    }

    public void bind(String uid)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select poNum,purchaseDate,status,uid from orders where uid=" + "'" + uid + "'", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        GridView1.DataSource = dv;

        GridView1.DataKeyNames = new string[] { "poNum" };
        GridView1.DataBind();


    }


    protected void c_p_Click(object sender, EventArgs e)
    {
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select poNum,purchaseDate,status,uid from orders where uid=" + "'" + Session["uid"].ToString() + "' and (status='pending' or status = 'hold')", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        GridView1.DataSource = dv;

        GridView1.DataKeyNames = new string[] { "poNum" };
        GridView1.DataBind();
    }

    protected void p_p_Click(object sender, EventArgs e)
    {
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select poNum,purchaseDate,status,uid from orders where uid=" + "'" + Session["uid"].ToString() + "' and (status='shipped' or status = 'canceled')", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        GridView1.DataSource = dv;

        GridView1.DataKeyNames = new string[] { "poNum" };
        GridView1.DataBind();
    }
}