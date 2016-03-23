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
    {
        try
        {
            {
                Response.Redirect("Searchresult.aspx?poNum=" + TextBox1.Text);
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
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

    protected void GridView2_Sorting(object sender, GridViewSortEventArgs e)
    {
        //Sort the data.
        String sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item ORDER BY price " + GetSortDirection(e.SortExpression);
        MySqlCommand cmd = new MySqlCommand(sql1, conn);
        using (MySqlDataAdapter sda = new MySqlDataAdapter())
        {
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataKeyNames = new string[] { "name" };
                GridView1.DataBind();
            }
        }
    }

    private string GetSortDirection(string column)
    {

        // By default, set the sort direction to ascending.
        string sortDirection = "ASC";

        // Retrieve the last column that was sorted.
        string sortExpression = ViewState["SortExpression"] as string;

        if (sortExpression != null)
        {
            // Check if the same column is being sorted.
            // Otherwise, the default value can be returned.
            if (sortExpression == column)
            {
                string lastDirection = ViewState["SortDirection"] as string;
                if ((lastDirection != null) && (lastDirection == "ASC"))
                {
                    sortDirection = "DESC";
                }
            }
        }

        // Save new values in ViewState.
        ViewState["SortDirection"] = sortDirection;
        ViewState["SortExpression"] = column;

        return sortDirection;
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
        String sql1 = "SELECT name,brand,price,thumbnailimage FROM item WHERE brand = '" + TextBox3.Text + "'";
        MySqlCommand cmd = new MySqlCommand(sql1, conn);
        using (MySqlDataAdapter sda = new MySqlDataAdapter())
        {
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataKeyNames = new string[] { "name" };
                GridView1.DataBind();
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String sql1 = "SELECT name,brand,price,thumbnailimage FROM item";
        MySqlCommand cmd = new MySqlCommand(sql1, conn);
        using (MySqlDataAdapter sda = new MySqlDataAdapter())
        {
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataKeyNames = new string[] { "name" };
                GridView1.DataBind();
            }
        }
    }
}