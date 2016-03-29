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
    DataSet dataset1 = new DataSet();
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    string status = "";
    string b = "";
    string sql1 = "";
    string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }

        if (!IsPostBack)
        {
            string status = (string)Request.QueryString["status"];
            string b = (string)Request.QueryString["b"];
            if (status == "pending" || status == "hold") { a = "o.status='" + status + "'"; } else { a = "(o.status='shipped' or o.status='canceled')"; }
            showorder();
        }
    }

    public void showorder()
    {
        try
        {
            conn.Open();
            
            string sql1 = "select o.poNum, o.purchaseDate, u.Username, SUM(m.quantity*i.price) as total_amount, o.status from isi.user u, isi.orders o, isi.orderitem m, isi.item i where u.User_id = o.uid AND o.poNum = m.poNum AND i.itemid = m.itemid AND "+a+" group by poNum order by o.purchaseDate desc";
            
            MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);
            ada1.Fill(dataset1, "isi");

            GridView1.DataSource = dataset1;
            GridView1.DataKeyNames = new String[] { "poNum" };
            GridView1.DataBind();


            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vender_order_search.aspx?status=pending&b=b");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vender_order_search.aspx?status=hold&b=b");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vender_order_search.aspx?status=shipped&b=canceled");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
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