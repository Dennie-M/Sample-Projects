using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["metro"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string sql, a, b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            con.Open();
            sql = "select first_name,password from registration where first_name='" + txt_firstname.Text + "'";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                a = dr.GetValue(0).ToString();
                b = dr.GetValue(1).ToString();
            }
            if (txt_firstname.Text == a & txt_pwd.Text == b)
            {
                Session["name"] = txt_firstname.Text;
                Response.Redirect("smartcard.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Username or Password');", true);
            }
        }
        catch (Exception e1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact-Admin');", true);
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}

 