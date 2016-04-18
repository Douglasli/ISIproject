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
            Button1.Text = username;
            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();
            bind(username);
        }
        

    }

    public void bind(String username)
    {

        MySqlDataAdapter DataAdapter1 = new MySqlDataAdapter("select nid,content,status from notification where user_id=" + "'" + Session["uid"].ToString() + "'", mySqlConn);
        DataSet dataset = new DataSet();


        DataAdapter1.Fill(dataset, "isi");

        Repeater1.DataSource = dataset;
        Repeater1.DataBind();

    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }

    public string GetStatus(object o) {
        int status = int.Parse(o.ToString());
        if (status == 1)
        {
            return "<span style='color:red; font-weight:bold'>New</span>";

        }
        else {
            return "<span style='color:green'>Read</span>";
        }
        
    }
    protected void read_noti_Click(object sender, EventArgs e)
    {
        string sql = "update notification set status ='0' where user_id='"+Session["uid"].ToString()+"'";
        MySqlCommand cmd = new MySqlCommand(sql, mySqlConn);
        cmd.ExecuteNonQuery();
        bind(Session["username"].ToString());
    }
}