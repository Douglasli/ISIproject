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
    }
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("SELECT * FROM User WHERE Username=@unm AND password=@paw ", mySqlConn);
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text);
        var hashed = "";
        hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
        cmd.Parameters.AddWithValue("@paw", hashed);
        object obj ;
        obj = cmd.ExecuteScalar();


        if (obj != null)
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("Homepageafterlogin.aspx");
        }
        else {
            lb1.Text = "invalid user name and password";
        }
    }
}