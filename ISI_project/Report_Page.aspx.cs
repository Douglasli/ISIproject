using MySql.Data.MySqlClient;
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

    String searchkeyword = null;
    String filterkeyword = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["usertype"] != "vender")
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
        showproduct();
    }

    private void showproduct()
    {
        try
        {
            String sql1 = "SELECT item.itemid,item.name,SUM(orderitem.quantity) AS salesquantities,SUM(orderitem.price*orderitem.quantity) AS salesamount FROM orders,orderitem,item WHERE orders.ponum=orderitem.ponum AND item.itemid=orderitem.itemid AND purchaseDate BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE() GROUP BY item.itemid ORDER BY salesamount DESC,salesquantities DESC LIMIT 10;";
            conn.Open();
            MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);
            ada1.Fill(dataset1, "isi");
            GridView1.DataSource = dataset1;
            GridView1.DataKeyNames = new String[] { "name" };
            GridView1.DataBind();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }

    protected void Filter_Click(object sender, EventArgs e)
    { string enddate = DateTime.Parse(Request.Form[TextBox1.UniqueID]).Date.ToString("dd/MM/yyyy");
        string period = TextBox2.Text;
        String sql1 = "SELECT item.itemid,item.name,SUM(orderitem.quantity) AS salesquantities,SUM(orderitem.price*orderitem.quantity) AS salesamount FROM orders,orderitem,item WHERE orders.ponum=orderitem.ponum AND item.itemid=orderitem.itemid AND purchaseDate BETWEEN "+enddate+" - INTERVAL "+period+" DAY AND " + enddate + " GROUP BY item.itemid ORDER BY salesamount DESC,salesquantities DESC LIMIT 10;";
        conn.Open();
        MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);
        ada1.Fill(dataset1, "isi");
        GridView1.DataSource = dataset1;
        GridView1.DataKeyNames = new String[] { "name" };
        GridView1.DataBind();
        conn.Close();
    }
    
    protected void Filter2_Click(object sender, EventArgs e)
    {
        Object a = TextBox1.UniqueID;
        string enddate = DateTime.Parse(Request.Form[TextBox1.UniqueID]).Date.ToString("dd/MM/yyyy");
        string period = TextBox2.Text;
        String sql1 = "SELECT item.itemid,item.name,SUM(orderitem.quantity) AS salesquantities,SUM(orderitem.price*orderitem.quantity) AS salesamount FROM orders,orderitem,item WHERE orders.ponum=orderitem.ponum AND item.itemid=orderitem.itemid AND purchaseDate BETWEEN "+enddate+" - INTERVAL "+period+" DAY AND " + enddate + " GROUP BY item.itemid ORDER BY salesquantities DESC,salesamount DESC LIMIT 10;";
        conn.Open();
        MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);
        ada1.Fill(dataset1, "isi");
        GridView1.DataSource = dataset1;
        GridView1.DataKeyNames = new String[] { "name" };
        GridView1.DataBind();
        conn.Close();
    }
}