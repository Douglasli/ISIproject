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

        MySqlDataAdapter DataAdapter2 = new MySqlDataAdapter("select orderitem.poNum,orderitem.itemid,orderitem.quantity,item.price from orderitem,item where poNum=" + "'" + poNo + "'and item.itemid=orderitem.itemid", mySqlConn);
        DataSet dataset2 = new DataSet();

        DataAdapter2.Fill(dataset2, "isi");

        GridView1.DataSource = dataset;
        GridView1.DataKeyNames = new string[] { "poNum" };
        GridView1.DataBind();

        GridView2.DataSource = dataset2;
        GridView2.DataKeyNames = new string[] { "poNum" };
        GridView2.DataBind();

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
}