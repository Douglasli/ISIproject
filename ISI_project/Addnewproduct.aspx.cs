using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || (string)Session["usertype"] != "vender")
        {
            Response.Redirect("Homepage.aspx?");
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string folderno = "";
        conn.Open();
        string sql1 = "select MAX(itemid) from item";
        MySqlCommand com1 = new MySqlCommand(sql1, conn);
        MySqlDataReader re1 = com1.ExecuteReader();
        re1.Read();
        int num1 = (int)re1[0];
        num1 = num1 + 1;
        conn.Close();

        string fulname = "";
        fulname=FileUpload1.PostedFile.FileName;
        FileInfo fi = new FileInfo(fulname);
        string filename = "0.jpg";
        string filefulname = fi.FullName;
        string serverpath = Server.MapPath("shoe/");

        if (!Directory.Exists(serverpath+num1)) {
            DirectoryInfo folder = Directory.CreateDirectory(serverpath + num1);
            folderno = num1.ToString() + "/";
        }

        FileUpload1.PostedFile.SaveAs(serverpath+ folderno + filename);

        string des = "";

        if (FileUpload2.PostedFile.FileName != "")
        {
            string fulname1 = FileUpload2.PostedFile.FileName;
            FileInfo fi1 = new FileInfo(fulname1);
            string filename1 = "1.jpg";
            string filefulname1 = fi1.FullName;
            FileUpload2.PostedFile.SaveAs(serverpath +folderno+ filename1);
            des = des + "shoe/"+folderno + filename1 +";"; }

        if (FileUpload3.PostedFile.FileName != "")
        {
            string fulname2 = FileUpload3.PostedFile.FileName;
            FileInfo fi2 = new FileInfo(fulname2);
            string filename2 = "2.jpg";
            string filefulname2 = fi2.FullName;
            FileUpload3.PostedFile.SaveAs(serverpath +folderno+ filename2);
            des = des + "shoe/" +folderno+ filename2 + ";"; }

        if (FileUpload4.PostedFile.FileName != "")
        {
            string fulname3 = FileUpload4.PostedFile.FileName;
            FileInfo fi3 = new FileInfo(fulname3);
            string filename3 = "3.jpg";
            string filefulname3 = fi3.FullName;
            FileUpload4.PostedFile.SaveAs(serverpath +folderno+ filename3);
            des = des + "shoe/" +folderno+ filename3 + ";"; }

        if (FileUpload5.PostedFile.FileName != "")
        {
            string fulname4 = FileUpload5.PostedFile.FileName;
            FileInfo fi4 = new FileInfo(fulname4);
            string filename4 = "4.jpg";
            string filefulname4 = fi4.FullName;
            FileUpload5.PostedFile.SaveAs(serverpath +folderno+filename4);
            des = des + "shoe/" +folderno+ filename4 + ";"; }
        conn.Open();
        string check1 = "";

        conn.Close();
        
        conn.Open();

        string t1 = "";
        t1 = TextBox1.Text;
        string t2 = "";
        t2 = TextBox2.Text;
        string t3 = "";
        t3 = TextBox3.Text;
        string foname = "";
        foname = num1.ToString();
        string t4 = "";
        t4 = TextBox4.Text;

        string insertimg = " insert into isi.item ( name, brand, price,thumbnailimage,description,detailphoto) values ('" + t1 + "','" + t2 + "'," + t3 + ",'shoe/" + foname+"/"+ fulname +"','"+ t4 +"','"+ des +"' )";

        
        MySqlCommand cmd2 = new MySqlCommand(insertimg, conn);
        cmd2.ExecuteNonQuery();

        conn.Close();

        try
        {
            {
                Response.Redirect("Vendor_Page.aspx");
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