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
        if ((string)Session["usertype"] == "vender")
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
            String sql1 = "";
            if (ViewState["Filterstring"] == null && ViewState["SortDirection"] == null)
            {
                sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item ";
            }
            else if (ViewState["Filterstring"] == null && ViewState["SortDirection"] != null)
            {
                sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item ORDER BY price " + ViewState["SortDirection"];
            }
            else if (ViewState["Filterstring"] != null && ViewState["SortDirection"] == null)
            {
                sql1 = (string)ViewState["Filterstring"];
            }
            else {
                sql1 = ViewState["Filterstring"] + "ORDER BY price " + ViewState["SortDirection"];
            }
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

    protected void Search_Click(object sender, EventArgs e)
    {
        searchkeyword = TextBox1.Text;
        String sql1 = "";
        if (filterkeyword == null)
        {
            sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item WHERE name LIKE '%" + searchkeyword + "%'";
        }
        else {
            sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM ("+ "SELECT itemid,name,brand,price,thumbnailimage FROM item WHERE brand = '" + ViewState["filterkeyword]"] + "'" + ") WHERE name LIKE '%" + ViewState["searchkeyword"] + "%'";
        }
        ViewState["Filterstring"] = sql1;
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






    protected void Filter_Click(object sender, EventArgs e)
    {
        filterkeyword = TextBox3.Text;
        String sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item WHERE brand = '" + filterkeyword + "'";
        ViewState["Filterstring"] = sql1;
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
        filterkeyword = null;
        String sql1 = "SELECT itemid,name,brand,price,thumbnailimage FROM item";
        ViewState["Filterstring"] = sql1;
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

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }

    
}