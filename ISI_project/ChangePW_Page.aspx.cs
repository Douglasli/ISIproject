using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Security;


public partial class _Default : System.Web.UI.Page
{
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=MYSQL";
        mySqlConn = new MySqlConnection(connStr);
        mySqlConn.Open();
        if (Session["username"] == null)
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Label2.Text = Session["username"].ToString();
        }
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("UPDATE User SET password=@paw WHERE username=@unm;", mySqlConn);
        cmd.Parameters.AddWithValue("@unm", Session["username"].ToString());
        var hashed = "";
        hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "SHA1");
        cmd.Parameters.AddWithValue("@paw",  hashed);
        cmd.ExecuteNonQuery();
        //Label3.Text = Session["username"].ToString();
        Response.Redirect("Homepageafterlogin.aspx");
    }
}