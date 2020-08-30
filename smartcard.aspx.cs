using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class smartcard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["metro"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr; 
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            con.Open();
            string x = Session["name"].ToString();
            string sql = "select first_name from registration where first_name='" + x + "'";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string a = dr.GetValue(0).ToString();
                lbl_name.Text = a;
            }
            dr.Close();

            string sql1 = "select last_name,Dob,address,mobile,email,gender from registration where first_name='" + lbl_name.Text + "'";
            cmd = new SqlCommand(sql1, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string b = dr.GetValue(0).ToString();
                string c = dr.GetValue(1).ToString();
                string d = dr.GetValue(2).ToString();
                string l = dr.GetValue(3).ToString();
                string f = dr.GetValue(4).ToString();
                string g = dr.GetValue(5).ToString();

                lbl_lastname.Text = b;
                lbl_dob.Text = c;
                lbl_address.Text = d;
                lbl_mobile.Text = l;
                lbl_email.Text = f;
                lbl_gender.Text = g;
            }
            dr.Close();
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Session Expired Please Login Again');", true);
            div1.Visible = false;
            ImageButton3.Visible = true;
        }
        finally
        {
            con.Close();
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "app";
            cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = lbl_name.Text;
            cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = lbl_lastname.Text;
            cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = lbl_dob.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = lbl_gender.Text;
            cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = lbl_address.Text;
            cmd.Parameters.Add("@mobile", SqlDbType.VarChar).Value = lbl_mobile.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = lbl_email.Text;
            cmd.Parameters.Add("@boarding", SqlDbType.VarChar).Value = txt_boarding.Text;
            cmd.Parameters.Add("@destination", SqlDbType.VarChar).Value = txt_destination.Text;
            cmd.Parameters.Add("@ac", SqlDbType.VarChar).Value = txt_account_no.Text;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successfull!!! You Will Get Notifications Soon...');", true);
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Account Number');", true);
        }
        finally
        {
            con.Close();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tickets.aspx");
    }
}