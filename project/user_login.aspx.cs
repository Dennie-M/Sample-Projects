using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H1PVAA;Initial Catalog=course;User ID=sa;Password=dennie");
        con.Open();
        SqlCommand cmd = new SqlCommand("  select * from [course].[dbo].[registration1] Where First_name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
       SqlDataAdapter da =new SqlDataAdapter();
       DataSet ds =new DataSet();
       da.SelectCommand = cmd;
       da.Fill(ds, "registration1");
        if (ds.Tables[0].Rows.Count >0)
        {
            Label5.Text = "Login Successfully";
            Response.Redirect("regsitration.aspx");
        }
        else
        {
            Label5.Text= "Invalid Login";
        }
        }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_reg.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("front page.aspx");
    }
}