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
        string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
        mySqlConn = new MySqlConnection(connStr);
        mySqlConn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand test = new MySqlCommand("SELECT * FROM User WHERE Username=@unm OR email=@email", mySqlConn);
        test.Parameters.AddWithValue("@unm", TextBox7.Text);
        test.Parameters.AddWithValue("@email", TextBox3.Text);
        object obj;
        obj = test.ExecuteScalar();
        if (obj != null) {
            Label1.Text = "E-mail or User name has been used";
            return;
        }
        MySqlCommand cmd = new MySqlCommand("Insert into User (Username,First_name,Last_name,email,address,password,type ) values (@Username,@First_name,@Last_name,@email,@address,@password,@type)", mySqlConn);
        cmd.Parameters.AddWithValue("@Username", TextBox7.Text);
        cmd.Parameters.AddWithValue("@First_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@address", TextBox4.Text);
        var password = TextBox5.Text;
        var hashed="";
       hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(password,"SHA1");
        cmd.Parameters.AddWithValue("@password", hashed);
        cmd.Parameters.AddWithValue("@type", RadioButtonList1.Text);
        cmd.ExecuteNonQuery();
        Session["username"] = TextBox7.Text;
        Response.Redirect("Homepageafterlogin.aspx");
    }
}