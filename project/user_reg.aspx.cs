using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_reg : System.Web.UI.Page
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H1PVAA;Initial Catalog=course;User ID=sa;Password=dennie");
        SqlCommand cmd = new SqlCommand("insert into [course].[dbo].[registration1] values(@First_name,@Last_name,@gender,@dob,@email_id,@phone_no,@pwd)", con);
        con.Open();
        cmd.Parameters.AddWithValue("@First_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_name",TextBox2.Text);
        cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@dob",TextBox4.Text);
        cmd.Parameters.AddWithValue("@email_id",TextBox5.Text);
        cmd.Parameters.AddWithValue("@phone_no",TextBox6.Text);
        cmd.Parameters.AddWithValue("@pwd",TextBox7.Text);
        cmd.ExecuteNonQuery();
        Label11.Visible = true;
        Label11.Text = "user registrered successfully";
        Response.Redirect("user_login.aspx");
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_login.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("front page.aspx");
    }
}

