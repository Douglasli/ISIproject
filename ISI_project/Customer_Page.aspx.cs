using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null||(string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            String username = Session["username"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

            bind(username);
        }
        

    }

    public void bind(String username)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select User_id,Username,First_name,Last_name,email,address,Type from user where Username=" + "'" + username+"'", mySqlConn);
        DataSet dataset = new DataSet();


        DataAdapter1.Fill(dataset, "isi");

        String userid = dataset.Tables[0].Rows[0]["User_id"].ToString();
        String uname = dataset.Tables[0].Rows[0]["Username"].ToString();
        String fname = dataset.Tables[0].Rows[0]["First_name"].ToString();
        String lname = dataset.Tables[0].Rows[0]["Last_name"].ToString();
        String email = dataset.Tables[0].Rows[0]["email"].ToString();
        String addr = dataset.Tables[0].Rows[0]["address"].ToString();
        String type = dataset.Tables[0].Rows[0]["Type"].ToString();

        Label1.Text = userid;
        Label2.Text = uname;
        Label3.Text = fname;
        Label4.Text = lname;
        Label5.Text = email;
        Label6.Text = addr;
        Label7.Text = type;
    }
}