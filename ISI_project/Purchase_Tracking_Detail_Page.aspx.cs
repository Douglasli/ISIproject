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
    String pn = "";
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
            String poNum = Request.QueryString["p"];
            pn = poNum;
            String uid = Session["uid"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

            if (!IsPostBack)
            {
                bind(poNum);

            }
            
        }


    }

    public void bind(String poNum)
    {
        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select orders.poNum,orders.purchaseDate,orders.canDate,orders.canType,user.Username,orders.shipAddress,orders.status from orders,user where poNum=" + "'" + poNum + "'and user.User_id=orders.uid", mySqlConn);
        DataSet dataset = new DataSet();

        DataAdapter1.Fill(dataset, "isi");

        //String poNo = dataset.Tables[0].Rows[0]["poNum"].ToString();

        MySqlDataAdapter DataAdapter2 = new MySqlDataAdapter("select orderitem.poNum,orderitem.itemid,orderitem.quantity,item.price,orderitem.quantity * item.price as total  from orderitem,item where poNum=" + "'" + poNum + "'and item.itemid=orderitem.itemid", mySqlConn);
        DataSet dataset2 = new DataSet();

        DataAdapter2.Fill(dataset2, "isi");

        GridView1.DataSource = dataset;
        GridView1.DataKeyNames = new string[] { "poNum" };
        GridView1.DataBind();

        String status = dataset.Tables[0].Rows[0]["status"].ToString();
        if (status == "shipped")
        {
            Repeater1.DataSource = dataset2;
            Repeater1.DataBind();
            Repeater2.Visible = false;
        }
        else {
            Repeater2.DataSource = dataset2;
            Repeater2.DataBind();
            Repeater1.Visible = false;
        }

        

        if((dataset.Tables[0].Rows[0]["status"].ToString() == "shipped") | (dataset.Tables[0].Rows[0]["status"].ToString() == "canceled")){
            Cancel_btn.Visible = false;
        }

        double total = 0;

        for (int i = 0; i < dataset2.Tables[0].Rows.Count; i++)
        {
            double subtotal = 0;
            int quantity = int.Parse(dataset2.Tables[0].Rows[i]["quantity"].ToString());
            double price = Double.Parse(dataset2.Tables[0].Rows[i]["price"].ToString());
            subtotal = price * quantity;
            total = total + subtotal;

        }
        Label1.Text = total.ToString();
    }
    protected void Cancel_btn_Click(object sender, EventArgs e)
    {
        String sql1 = "delete from orderitem where poNum='" + pn + "'";
        MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
        cmd1.ExecuteNonQuery();

        String sql2 = "update orders set status ='canceled' where poNum='"+pn+"'";
        MySqlCommand cmd2 = new MySqlCommand(sql2, mySqlConn);
        cmd2.ExecuteNonQuery();
        bind(pn);
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "RandR")
        {
            string[] estr = e.CommandArgument.ToString().Split(',');

            int poNum = Convert.ToInt32(estr[0]);
            int itemid = Convert.ToInt32(estr[1]);

            MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select * from rating where user_id='"+Session["uid"].ToString()+"' and poNum="+poNum+" and itemid="+itemid, mySqlConn);
            DataSet ds = new DataSet();
            DataAdapter1.Fill(ds, "isi");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('You have already rated and reviewed')</script>"); 
               
            }
            else {
                Response.Redirect("/Rating_review.aspx?p=" + poNum + "&i=" + itemid);
            }
            
            
        }
    }
}