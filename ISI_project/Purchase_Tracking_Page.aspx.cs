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
        if (Session["username"] == null || (string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            String uid = Session["uid"].ToString();
            Button1.Text = Session["username"].ToString();
            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

            bind(uid);
        }


    }

    public void bind(String uid)
    {
        Repeater1.Visible = true;
        Repeater2.Visible = false;
        String sql = "select orders.poNum,purchaseDate,status,uid, SUM(orderitem.quantity * item.price) as total from orders, item, orderitem where uid=" + "'" + uid + "' AND orders.ponum=orderitem.ponum AND orderitem.itemid = item.itemid GROUP BY orders.poNum";
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter(sql, mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        Repeater1.DataSource = dv;

        Repeater1.DataBind();


    }


    protected void c_p_Click(object sender, EventArgs e)
    {
        Repeater1.Visible = true;
        Repeater2.Visible = false;
        String sql = "select orders.poNum,purchaseDate,status,uid, SUM(orderitem.quantity * item.price) as total from orders, item, orderitem  where uid=" + "'" + Session["uid"].ToString() + "' and (status='pending' or status = 'hold')  AND orders.ponum=orderitem.ponum AND orderitem.itemid = item.itemid GROUP BY orders.poNum";
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter(sql, mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");

        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        Repeater1.DataSource = dv;

        Repeater1.DataBind();
    }

    protected void p_p_Click(object sender, EventArgs e)
    {
        Repeater1.Visible = false;
        Repeater2.Visible = true;
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select orders.poNum,purchaseDate,status,uid from orders where uid=" + "'" + Session["uid"].ToString() + "' and (status='shipped' or status = 'canceled')", mySqlConn);
        DataSet dataset = new DataSet();
        DataAdapter1.Fill(dataset, "isi");
        DataView dv = new DataView();
        dv.Table = dataset.Tables[0];
        dv.Sort = "purchaseDate desc";
        Repeater2.DataSource = dv;

        Repeater2.DataBind();
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "detail")
        {
            Response.Redirect("/Purchase_Tracking_Detail_Page.aspx?p=" + e.CommandArgument);
        }
    }

    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "detail")
        {
            Response.Redirect("/Purchase_Tracking_Detail_Page.aspx?p=" + e.CommandArgument);
        }
    }

}