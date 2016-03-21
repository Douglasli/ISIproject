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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }
        if (!IsPostBack) { 
        String poNum = Request.QueryString["poNum"];
        TextBox1.Text = poNum;

        CheckMySqlConnection(poNum);
    }
        
    }

    private void CheckMySqlConnection(String keyw)
    {

        try
        {

            conn.Open();

            String sql1 = "SELECT name,brand,price,thumbnailimage FROM item WHERE name LIKE '%"+keyw+"%' or brand LIKE '%"+keyw+"%'";
            MySqlDataAdapter ada1 = new MySqlDataAdapter(sql1, conn);

            String sql2 = "SELECT name,brand,price,thumbnailimage FROM item WHERE itemid =" + keyw;
            MySqlDataAdapter ada2 = new MySqlDataAdapter(sql2, conn);

            char[] charar = keyw.ToCharArray();
            Char char1 = charar[0];

            if (Char.IsDigit(char1))
            {
                
                ada2.Fill(dataset1, "isi");
                
            }
            else { ada1.Fill(dataset1, "isi"); }
            

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

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = dataset1;
        GridView1.DataBind();
    }


    protected void Button2_Click(object sender, EventArgs e)
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
        catch (Exception ex) { Response.Write("an error occur"+ex); }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (GridView1.PageIndex>=1)
            { 
            GridView1.PageIndex = GridView1.PageIndex - 1;
            GridView1.DataSource = dataset1;
            GridView1.DataBind();
        }
        }
        catch (Exception ex) { Response.Write("an error occur" + ex); }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            if (GridView1.PageIndex <= GridView1.PageCount-1)
            {
                GridView1.PageIndex = GridView1.PageIndex + 1;
                GridView1.DataSource = dataset1;
                GridView1.DataBind();
            }
        }
        catch (Exception ex) { Response.Write("an error occur" + ex); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            {
                Response.Redirect("Searchresult.aspx?poNum=" + TextBox1.Text);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }
}