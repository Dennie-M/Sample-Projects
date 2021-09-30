using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class regsitrationaspx : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H1PVAA;Initial Catalog=course;User ID=sa;Password=dennie");
        SqlCommand cmd = new SqlCommand("insert into [course].[dbo].[view] values(@name,@dob,@department,@courses,@address,@mail,@phone_no)", con);
        con.Open();
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox2.Text);
        cmd.Parameters.AddWithValue("@department", TextBox3.Text);
        cmd.Parameters.AddWithValue("@courses", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@address", TextBox4.Text);
        cmd.Parameters.AddWithValue("@mail", TextBox5.Text);
        cmd.Parameters.AddWithValue("@phone_no", TextBox6.Text);
        cmd.ExecuteNonQuery();
        String na = Convert.ToString(Session["s1"]);
        Session.Add("s1", TextBox1.Text);
        Session.Add("s2", TextBox2.Text);
        Session.Add("s3", TextBox3.Text);
        Session.Add("s4", DropDownList1.Text);
        Session.Add("s5", TextBox4.Text);
        Session.Add("s6", TextBox5.Text);
        Session.Add("s7", TextBox6.Text);
        Response.Redirect("userview.aspx");

        Label13.Text = "Details Successfully Verified";
        Label13.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("user_login.aspx");
    }
}