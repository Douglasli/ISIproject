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
    string iid;
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }
        iid = Request.QueryString["id"];
        showdata(iid);
    }

    private void showdata(string iid)
    {
        try
        {

            conn.Open();

            String sql1 = "SELECT name,brand,price,thumbnailimage,description,detailphoto FROM item WHERE itemid=" +iid;
            MySqlCommand cm = new MySqlCommand(sql1,conn);
            MySqlDataReader re = cm.ExecuteReader();
            re.Read();
            Label7.Text = (string)re[0];
            Label8.Text = (string)re[1];
            double re2 = (double)re[2];
            Label9.Text = re2.ToString();
            Image1.ImageUrl = (string)re[3];
            Label12.Text= (string)re[4];
            Label13.Text = (string)re[5];
        
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
                Response.Redirect("product_detail_vender_edit.aspx?id="+iid+"");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }
}