using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["course"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H1PVAA;Initial Catalog=course;User ID=sa;Password=dennie");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from [course].[dbo].[staffentry] Where staffid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = cmd;
        da.Fill(ds,"registration1");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label4.Text = "Login Successfully";
            Response.Redirect("admin viewpage.aspx");
        }
        else
        {
            Label4.Text = "Invalid Login";
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("front page.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("front page.aspx");
    }
}