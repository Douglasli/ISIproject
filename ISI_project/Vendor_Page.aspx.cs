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
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null|| (string)Session["usertype"]!= "vender")
        {
            Response.Redirect("Homepage.aspx");
        }
        
        showproduct();
    }

    private void showproduct()
    {
        try
        {

            conn.Open();

            String sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item ";
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

    protected void Button1_Click(object sender, EventArgs e)
    {   try
        {
            {
                Response.Redirect("Searchresult.aspx?poNum=" + TextBox1.Text);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: "+ex); }
    }



    protected void add_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Addnewproduct.aspx");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = dataset1;
        GridView1.DataBind();
    }

    protected void pre_Click(object sender, EventArgs e)
    {
        try
        {
            if (GridView1.PageIndex >= 1)
            {
                GridView1.PageIndex = GridView1.PageIndex - 1;
                GridView1.DataSource = dataset1;
                GridView1.DataBind();
            }
        }
        catch (Exception ex) { Response.Write("an error occur" + ex); }
    }

    protected void next_Click(object sender, EventArgs e)
    {
        try
        {
            if (GridView1.PageIndex <= GridView1.PageCount - 1)
            {
                GridView1.PageIndex = GridView1.PageIndex + 1;
                GridView1.DataSource = dataset1;
                GridView1.DataBind();
            }
        }
        catch (Exception ex) { Response.Write("an error occur" + ex); }
    }

    protected void tospe_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox2.Text != "")
            {
                GridView1.PageIndex = int.Parse(TextBox2.Text) - 1;
                GridView1.DataSource = dataset1;
                GridView1.DataBind();
            }
        }
        catch (Exception ex) { Response.Write("an error occur" + ex); }
    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Vendor_page_brand.aspx");
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
}