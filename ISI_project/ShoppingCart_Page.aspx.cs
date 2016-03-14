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
        if (Session["username"] == null)
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Button1.Text = Session["username"].ToString();

            string connStr = "Database=ISI;Data Source=localhost;User Id=root;Password=123999";
            mySqlConn = new MySqlConnection(connStr);
            mySqlConn.Open();
            if (!IsPostBack)
            {
                bind();
            }

        }
    }

   
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("Homepage.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlStr = "delete from cart where uid=(Select user_id from user where username='"+ Session["username"].ToString() + "') and itemid=(SELECT itemid from item where name ='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "');";
       
        MySqlCommand mySqlCmd = new MySqlCommand(sqlStr, mySqlConn);
        mySqlCmd.ExecuteNonQuery();
        bind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //System.Diagnostics.Debug.Write(e.CommandName);  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[GridView1.SelectedIndex].Value.ToString());
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow gvr = GridView1.Rows[e.RowIndex];
        string quantity = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();

        string sql = "update cart set quantity='" + quantity + "' where uid=(Select user_id from user where username='" + Session["username"].ToString() + "') and itemid=(SELECT itemid from item where name ='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "');";
        System.Diagnostics.Debug.Write(sql);
        MySqlCommand mySqlCmd = new MySqlCommand(sql, mySqlConn);
        mySqlCmd.ExecuteNonQuery();
        bind();
    }
    
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //int index = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);  
        GridView1.EditIndex = e.NewEditIndex;
        bind();

    }
    public void bind()
    {
        string sql = "select item.name,cart.quantity,item.price,item.price*cart.quantity as total from item,cart,user where item.itemid=cart.itemid and user_id=uid and user_id=(Select user_id from user where username="+"'"+Session["username"].ToString() +"')";
        MySqlCommand cmd = new MySqlCommand(sql, mySqlConn);
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
   
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string sql1 = "Insert into Orders(purchaseDate,status,uid) values (NOW(),'pending',(" + "SELECT user_id from user where username = '" + Session["username"].ToString() + "'));";
        MySqlCommand cmd1 = new MySqlCommand(sql1, mySqlConn);
        cmd1.ExecuteNonQuery();
        string sql2 = "Insert into Orderitem(poNum,itemid,quantity) values ((SELECT poNum from orders where username = '" + Session["username"].ToString() + "' ),(SELECT itemid,quantity from cart where uid=(Select user_id from user where username='" + Session["username"].ToString() + "')));";
        MySqlCommand cmd2 = new MySqlCommand(sql2, mySqlConn);
        cmd2.ExecuteNonQuery();
        string sql3 = "DELETE FROM cart where uid = (Select user_id from user where username='" + Session["username"].ToString() +"')";
        MySqlCommand cmd3 = new MySqlCommand(sql3, mySqlConn);
        cmd3.ExecuteNonQuery();
    }
}