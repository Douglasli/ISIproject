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
    String pn = "";
    String ii = "";
    MySqlConnection mySqlConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] == "vender")
        {
            Response.Redirect("Login_Page.aspx");
        }
        else
        {
            Button1.Text = Session["username"].ToString();
            String poNum = Request.QueryString["p"];
            pn = poNum;
            String itemid = Request.QueryString["i"];
            ii = itemid;

            Label1.Text = poNum;
            Label2.Text = itemid;

            String uid = Session["uid"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();

           
            
        }

        
    }

    
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        int stars = int.Parse(DropDownList1.SelectedValue);
        String review = TextBox1.Text;
        if (review != String.Empty)
        {
            string sql1 = "Insert into rating(user_id,poNum,itemid,stars) values (" + Session["uid"].ToString() + "," + pn + "," + ii + "," + stars + ")";
            MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
            cmd1.ExecuteNonQuery();

            string sql2 = "Insert into review(user_id,poNum,itemid,comment) values (" + Session["uid"].ToString() + "," + pn + "," + ii + "," + "'" + review + "'" + ")";
            MySqlCommand cmd2 = new MySqlCommand(sql2, mySqlConn);
            cmd2.ExecuteNonQuery();
            Response.Redirect("/Purchase_Tracking_Detail_Page.aspx?p=" + pn);
        }
        else {
            Response.Write("<script>alert('You need to review the product')</script>");
        }

    }
}