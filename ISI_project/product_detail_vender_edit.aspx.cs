using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataSet dataset1 = new DataSet();
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }
        if (!IsPostBack)
        {
            ViewState["count"] = (int)0;
            string iid = Request.QueryString["id"];
            showdata(iid);

            string li1 = Label13.Text;
            for (int i = 0; i < li1.Length; i++)
            {
                if (li1.Substring(i, 1) == ";")
                {
                    ViewState["count"] = (int)ViewState["count"] + 1;
                }
            }
            
            change();
        }
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
            TextBox1.Text = (string)re[0];
            TextBox2.Text = (string)re[1];
            double re2 = (double)re[2];
            TextBox5.Text = re2.ToString();
            Image1.ImageUrl = (string)re[3];
            TextBox4.Text= (string)re[4];
            Label13.Text = (string)re[5];
        
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }


    private void change()
    {
        switch ((int)ViewState["count"])
        {
            case 0:
                up1.Visible = true;
                up2.Visible = true;
                up3.Visible = true;
                up4.Visible = true;
                delete1.Visible = false;
                delete2.Visible = false;
                delete3.Visible = false;
                delete4.Visible = false;
                break;

            case 1:
        up1.Visible = true;
        up2.Visible = true;
        up3.Visible = true;
        up4.Visible = false;
        delete1.Visible = true;
        delete2.Visible = false;
        delete3.Visible = false;
        delete4.Visible = false;
                break;
    case 2:
        up1.Visible = true;
        up2.Visible = true;
        up3.Visible = false;
        up4.Visible = false;
        delete1.Visible = true;
        delete2.Visible = true;
        delete3.Visible = false;
        delete4.Visible = false;
                break;
    case 3:
        up1.Visible = true;
        up2.Visible = false;
        up3.Visible = false;
        up4.Visible = false;
        delete1.Visible = true;
        delete2.Visible = true;
        delete3.Visible = true;
        delete4.Visible = false;
                break;
    case 4:
        up1.Visible = false;
        up2.Visible = false;
        up3.Visible = false;
        up4.Visible = false;
        delete1.Visible = true;
        delete2.Visible = true;
        delete3.Visible = true;
        delete4.Visible = true;
                break;
    }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string iid = Request.QueryString["id"];
        string t1 = TextBox1.Text;
        string t2 = TextBox2.Text;
        string t5 = TextBox5.Text;
        string t4 = TextBox4.Text;
        string serverpath = Server.MapPath("shoe/");

        conn.Open();
        string sql1 = "select thumbnailimage,detailphoto FROM item WHERE itemid=" + iid;
        MySqlCommand cm1 = new MySqlCommand(sql1, conn);
        MySqlDataReader re1 = cm1.ExecuteReader();
        re1.Read();
        
        string buf1 = (string)re1[0];
        
        string des = (string)re1[1];
        conn.Close();

        string de1 = "";
        int de2 = buf1.IndexOf("shoe");
        int de3 = buf1.IndexOf("/", de2 + 5);
        de1 = buf1.Substring(de2+5, de3 - de2-5);
        string de4 = de1 + "/";             //find which folder
        

        if (FileUpload1.PostedFile.FileName != "")
            {
               string fulname = FileUpload1.PostedFile.FileName;
               FileInfo fi = new FileInfo(fulname);
               string filename = "0.jpg";
               string filefulname = fi.FullName;
               FileUpload1.PostedFile.SaveAs(serverpath +de4+ filename);
               buf1 = "/shoe/"+de4+filename;
            
            }
        
        if (up1.FileName!="")
        {
            string fulname1 = up1.PostedFile.FileName;
            FileInfo fi1 = new FileInfo(fulname1);
            string filename1 = "1.jpg";
            string filefulname1 = fi1.FullName;
            up1.PostedFile.SaveAs(serverpath +de4+ filename1);
            des = des + "/shoe/"+de4+ filename1 + ";";
        }

        if (up2.FileName!="")
        {
            string fulname2 = up2.PostedFile.FileName;
            FileInfo fi2 = new FileInfo(fulname2);
            string filename2 = "2.jpg";
            string filefulname2 = fi2.FullName;
            up2.PostedFile.SaveAs(serverpath +de4+ filename2);
            des = des + "/shoe/"+de4+ filename2 + ";";
        }

        if (up3.FileName != "" )
        {
            string fulname3 = up3.PostedFile.FileName;
            FileInfo fi3 = new FileInfo(fulname3);
            string filename3 = "3.jpg";
            string filefulname3 = fi3.FullName;
            up3.PostedFile.SaveAs(serverpath +de4+ filename3);
            des = des + "/shoe/" +de4 + filename3 + ";";
        }

        if (up4.FileName != "")
        {
            string fulname4 = up4.PostedFile.FileName;
            FileInfo fi4 = new FileInfo(fulname4);
            string filename4 = "4.jpg";
            string filefulname4 = fi4.FullName;
            up4.PostedFile.SaveAs(serverpath +de4+ filename4);
            des = des + "/shoe/" + de4 + filename4 + ";";
        }

        

        conn.Open();
        string sql2 = "update isi.item set name='"+t1+"',brand='"+t2+"', price="+t5+" ,thumbnailimage='"+buf1+"',description='"+t4+"',detailphoto='"+des+"' where itemid =" + iid;
        MySqlCommand cm2 = new MySqlCommand(sql2, conn);
        cm2.ExecuteNonQuery();
        conn.Close();

        


        try
        {
            {  
                    Response.Redirect("product_detail_vender.aspx?a=" + t1 + "&id=" + iid + "");
                
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void delete1_Click(object sender, EventArgs e)
    {
        string iid = Request.QueryString["id"];
        string new1 ="";
        
        conn.Open();

            string sql1 = "select detailphoto FROM item WHERE itemid=" + iid;
            MySqlCommand cm1 = new MySqlCommand(sql1, conn);
            MySqlDataReader re1 = cm1.ExecuteReader();
            re1.Read();
            string buf1 =(string) re1[0];
        List<int> li1 = new List<int>(); 
            int i1 = 0;
            while (i1 < buf1.Length)
            {
            if (buf1.Substring(i1, 1)==";") { li1.Add(i1); }
            i1 = i1 + 1;
            }
        new1 = buf1.Substring(li1[0]+1,buf1.Length-li1[0]-1);
            conn.Close();


            conn.Open();
            string sql2 = "update isi.item set detailphoto='"+new1+"' where itemid =" +iid;
            MySqlCommand cm2 = new MySqlCommand(sql2, conn);
            cm2.ExecuteNonQuery();
            conn.Close();
        
        try
        {
            {
                Response.Redirect("product_detail_vender.aspx?id=" + iid + "");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void delete2_Click(object sender, EventArgs e)
    {
        string iid = Request.QueryString["id"];
        string new1 = "";

        conn.Open();

        string sql1 = "select detailphoto FROM item WHERE itemid=" + iid;
        MySqlCommand cm1 = new MySqlCommand(sql1, conn);
        MySqlDataReader re1 = cm1.ExecuteReader();
        re1.Read();
        string buf1 = (string)re1[0];
        List<int> li1 = new List<int>();
        int i1 = 0;
        while (i1 < buf1.Length)
        {
            if (buf1.Substring(i1, 1) == ";") { li1.Add(i1); }
            i1 = i1 + 1;
        }
        new1 = buf1.Substring(0,li1[0])+buf1.Substring(li1[1]);
        conn.Close();


        conn.Open();
        string sql2 = "update isi.item set detailphoto='" + new1 + "' where itemid =" + iid;
        MySqlCommand cm2 = new MySqlCommand(sql2, conn);
        cm2.ExecuteNonQuery();
        conn.Close();



        try
        {
            {
                Response.Redirect("product_detail_vender.aspx?id=" + iid + "");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void delete3_Click(object sender, EventArgs e)
    {
        string iid = Request.QueryString["id"];
        string new1 = "";

        conn.Open();

        string sql1 = "select detailphoto FROM item WHERE itemid=" + iid;
        MySqlCommand cm1 = new MySqlCommand(sql1, conn);
        MySqlDataReader re1 = cm1.ExecuteReader();
        re1.Read();
        string buf1 = (string)re1[0];
        List<int> li1 = new List<int>();
        int i1 = 0;
        while (i1 < buf1.Length)
        {
            if (buf1.Substring(i1, 1) == ";") { li1.Add(i1); }
            i1 = i1 + 1;
        }
        new1 = buf1.Substring(0, li1[1]) + buf1.Substring(li1[2]);
        conn.Close();


        conn.Open();
        string sql2 = "update isi.item set detailphoto='" + new1 + "' where itemid =" + iid;
        MySqlCommand cm2 = new MySqlCommand(sql2, conn);
        cm2.ExecuteNonQuery();
        conn.Close();



        try
        {
            {
                Response.Redirect("product_detail_vender.aspx?id=" + iid + "");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }

    protected void delete4_Click(object sender, EventArgs e)
    {
        string iid = Request.QueryString["id"];
        string new1 = "";

        conn.Open();

        string sql1 = "select detailphoto FROM item WHERE itemid=" + iid;
        MySqlCommand cm1 = new MySqlCommand(sql1, conn);
        MySqlDataReader re1 = cm1.ExecuteReader();
        re1.Read();
        string buf1 = (string)re1[0];
        List<int> li1 = new List<int>();
        int i1 = 0;
        while (i1 < buf1.Length)
        {
            if (buf1.Substring(i1, 1) == ";") { li1.Add(i1); }
            i1 = i1 + 1;
        }
        new1 = buf1.Substring(0, li1[2]) ;
        conn.Close();


        conn.Open();
        string sql2 = "update isi.item set detailphoto='" + new1 + "' where itemid =" + iid;
        MySqlCommand cm2 = new MySqlCommand(sql2, conn);
        cm2.ExecuteNonQuery();
        conn.Close();



        try
        {
            {
                Response.Redirect("product_detail_vender.aspx?id=" + iid + "");
            }
        }
        catch (Exception ex) { Response.Write("an error occur: " + ex); }
    }





    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
}