using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Metro"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Reg";
            cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = Txt_firstname.Text;
            cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = Txt_lastname.Text;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txt_pwd.Text;
            cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = txt_dob.Text;
            cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txt_address.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = Dd_gender.Text;
            cmd.Parameters.Add("@mobile", SqlDbType.VarChar).Value = txt_contact.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txt_email.Text;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successfull');", true);
            clear();
        }
        catch (Exception e1)
             {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email-Id Already Exists Try Another One!!!');", true);
            txt_email.Text = "";
        }
    }
    public void clear()
    {
        txt_address.Text = "";
        txt_contact.Text = "";
        txt_dob.Text = "";
        txt_email.Text = "";
        Txt_firstname.Text = "";
        Txt_lastname.Text = "";
        Dd_gender.SelectedIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}   