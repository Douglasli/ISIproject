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
    string poNum = "";
    DataSet dataset1 = new DataSet();
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
  //  DateTime l14 = new DateTime();
    DateTime l15 = new DateTime();
    string shipd = "";
    string cand = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }
        if (!IsPostBack)
        {
            poNum = Request.QueryString["poNum"];
            showprocess();
        }
    }

    private void showprocess()
    {
        conn.Open();
        string sql1 = "select o.poNum, o.purchaseDate, u.Username, o.shipAddress, m.quantity*m.price, o.status, o.shipDate, o.canDate, o.canType from isi.orders o, isi.user u, isi.orderitem m, isi.item i where o.uid = u.User_id AND m.poNum = o.poNum AND i.itemid = m.itemid AND o.poNum = "+ poNum;
        MySqlCommand cmd1 = new MySqlCommand(sql1,conn);
        MySqlDataReader re = cmd1.ExecuteReader();
        re.Read();

        Int32 l2 = (Int32)re[0];
        Label2.Text = l2.ToString();

        String l4 = re[1].ToString();
        Label4.Text = l4;

        Label6.Text = (string)re[2];
        Label8.Text = (string)re[3];

        Double l10 = (Double)re[4];
        Label10.Text = l10.ToString();

        string os = (string)re[5];
        Label12.Text = os;

        if (!Convert.IsDBNull(re[6]))
        {
            shipd = re[6].ToString();
           
        }

        if (!Convert.IsDBNull(re[7]))
        {
            cand = re[7].ToString();
        }

        if (!Convert.IsDBNull(re[8]))
        {
            string cant = (string)re[8];
            Label16.Text = cant;
        }

        switch (os) //change button and label visibility
        {
            case "pending":
                Button1.Visible = true;
                Button2.Visible = true;
                Button3.Visible = false;
                Button4.Visible = true;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                Label16.Visible = false;
                break;
            case "hold":
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;
                Button4.Visible = true;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                Label16.Visible = false;
                break;
            case "shipped":
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label13.Visible = true;
                Label13.Text = "Shipped Date :";
                Label14.Visible = true;
                Label14.Text = shipd;
                Label15.Visible = false;
                Label16.Visible = false;
                break;
            case "canceled":
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label13.Visible = true;
                Label13.Text = "Canceled Date :";
                Label14.Visible = true;
                Label14.Text = cand;
                Label15.Visible = true;
                Label16.Visible = true;
                break;
        }
        
        conn.Close();

        conn.Open();
        string sql2 = "select i.name, m.quantity, m.price, m.quantity*m.price as Subtotal from isi.item i, isi.orderitem m where i.itemid = m.itemid AND poNum = '" + poNum+"' group by i.itemid";
        MySqlDataAdapter ada3 = new MySqlDataAdapter(sql2, conn);
        ada3.Fill(dataset1, "isi");
        GridView1.DataSource = dataset1;
        GridView1.DataKeyNames = new String[] { "name" };
        GridView1.DataBind();

        conn.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vendor_order_process.aspx?poNum=" + TextBox1.Text);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        poNum = Request.QueryString["poNum"];
        String da = "";
        da = DateTime.Now.Date.ToString("yyyy-MM-dd"); ;
        conn.Open();
        string st = "update isi.orders set status='shipped',shipDate='" + da + "' where poNum= " + poNum;
        MySqlCommand cmd1 = new MySqlCommand(st,conn);
        cmd1.ExecuteNonQuery();
        //notification
        string sql = "select uid from orders where poNum='" + poNum + "'";
        MySqlDataAdapter ada = new MySqlDataAdapter(sql, conn);
        DataSet dataset = new DataSet();
        ada.Fill(dataset, "isi");
        int uid = int.Parse(dataset.Tables[0].Rows[0]["uid"].ToString());

        String notify = "Your order<" + poNum + "> has already shipped!";
        string str = "insert into notification (user_id,content,status) values ('" + uid + "','" + notify + "','1')";
        MySqlCommand cmd2 = new MySqlCommand(str, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();

        try
        {
            {
                Response.Redirect("Vendor_order_process.aspx?poNum=" + poNum);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        poNum = Request.QueryString["poNum"];
        conn.Open();
        string st = "update isi.orders set status='hold' where poNum= " + poNum;
        MySqlCommand cmd1 = new MySqlCommand(st, conn);
        cmd1.ExecuteNonQuery();
        //notification
        string sql = "select uid from orders where poNum='" + poNum + "'";
        MySqlDataAdapter ada = new MySqlDataAdapter(sql, conn);
        DataSet dataset = new DataSet();
        ada.Fill(dataset, "isi");
        int uid = int.Parse(dataset.Tables[0].Rows[0]["uid"].ToString());

        String notify = "Your order<" + poNum + "> has been changed to hold!";
        string str = "insert into notification (user_id,content,status) values ('" + uid + "','" + notify + "','1')";
        MySqlCommand cmd2 = new MySqlCommand(str, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();

        try
        {
            {
                Response.Redirect("Vendor_order_process.aspx?poNum=" + poNum);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        poNum = Request.QueryString["poNum"];
        String da = "";
        da = DateTime.Now.Date.ToString("yyyy-MM-dd"); ;

        conn.Open();
        string st = "update isi.orders set status='shipped',shipDate='"+da+"' where poNum= " + poNum;
        MySqlCommand cmd1 = new MySqlCommand(st, conn);
        cmd1.ExecuteNonQuery();

        string sql = "select uid from orders where poNum='" + poNum + "'";
        MySqlDataAdapter ada = new MySqlDataAdapter(sql, conn);
        DataSet dataset = new DataSet();
        ada.Fill(dataset, "isi");
        int uid = int.Parse(dataset.Tables[0].Rows[0]["uid"].ToString());

        String notify = "Your order<" + poNum + "> has already shipped!";
        string str = "insert into notification (user_id,content,status) values ('" + uid + "','" + notify + "','1')";
        MySqlCommand cmd2 = new MySqlCommand(str, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();

        try
        {
            {
                Response.Redirect("Vendor_order_process.aspx?poNum=" + poNum);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        poNum = Request.QueryString["poNum"];
        string canType = (string)Session["usertype"];
        String da = "";
        da = DateTime.Now.Date.ToString("yyyy-MM-dd"); 
        conn.Open();
        string st = "update isi.orders set status='canceled',canDate='"+da+"',canType='"+canType+"' where poNum= " + poNum+";";
        MySqlCommand cmd1 = new MySqlCommand(st, conn);
        cmd1.ExecuteNonQuery();

        string sql = "select uid from orders where poNum='" + poNum + "'";
        MySqlDataAdapter ada = new MySqlDataAdapter(sql, conn);
        DataSet dataset = new DataSet();
        ada.Fill(dataset, "isi");
        int uid = int.Parse(dataset.Tables[0].Rows[0]["uid"].ToString());

        String notify = "Your order<" + poNum + "> has already canceled!";
        string str = "insert into notification (user_id,content,status) values ('" + uid + "','" + notify + "','1')";
        MySqlCommand cmd2 = new MySqlCommand(str, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();

        try
        {
            {
                Response.Redirect("Vendor_order_process.aspx?poNum=" + poNum);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vendor_page_order.aspx");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
}