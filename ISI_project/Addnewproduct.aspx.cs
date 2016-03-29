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
        string fulname = FileUpload1.PostedFile.FileName;
        FileInfo fi = new FileInfo(fulname);
        string filename = fi.Name;
        string filefulname = fi.FullName;
        string serverpath = Server.MapPath("shoe/");
        FileUpload1.PostedFile.SaveAs(serverpath + filename);

        string des = "";

        if (FileUpload2.PostedFile.FileName != "")
        {
            string fulname1 = FileUpload2.PostedFile.FileName;
            FileInfo fi1 = new FileInfo(fulname1);
            string filename1 = fi1.Name;
            string filefulname1 = fi1.FullName;
            FileUpload2.PostedFile.SaveAs(serverpath + filename1);
            des = des + "shoe/" + filename1 +";"; }

        if (FileUpload3.PostedFile.FileName != "")
        {
            string fulname2 = FileUpload3.PostedFile.FileName;
            FileInfo fi2 = new FileInfo(fulname2);
            string filename2 = fi2.Name;
            string filefulname2 = fi2.FullName;
            FileUpload3.PostedFile.SaveAs(serverpath + filename2);
            des = des + "shoe/" + filename2 + ";"; }

        if (FileUpload4.PostedFile.FileName != "")
        {
            string fulname3 = FileUpload4.PostedFile.FileName;
            FileInfo fi3 = new FileInfo(fulname3);
            string filename3 = fi3.Name;
            string filefulname3 = fi3.FullName;
            FileUpload4.PostedFile.SaveAs(serverpath + filename3);
            des = des + "shoe/" + filename3 + ";"; }

        if (FileUpload5.PostedFile.FileName != "")
        {
            string fulname4 = FileUpload5.PostedFile.FileName;
            FileInfo fi4 = new FileInfo(fulname4);
            string filename4 = fi4.Name;
            string filefulname4 = fi4.FullName;
            FileUpload5.PostedFile.SaveAs(serverpath + filename4);
            des = des + "shoe/" + filename4 + ";"; }
        conn.Open();
        string check1 = "";

        conn.Close();
        

        conn.Open();
        string insertimg = " insert into isi.item ( name, brand, price,thumbnailimage,description,detailphoto) values ('" + TextBox1.Text +"','"+ TextBox2.Text +"',"+ TextBox3.Text+",'shoe/"+ fulname +"','"+ TextBox4.Text +"','"+ des +"' )";

        
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