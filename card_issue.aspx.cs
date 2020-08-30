using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class card_issue : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.AppSettings["metro"]);
    SqlCommand cmd=new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader dr;
    List<string> sl = new List<string>();
    int v = 0;
    string sql,a,b,c,d,f,g,h,i,j,k;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        tab.Visible = false;
        tab1.Visible = false;
        div2.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("card_issue.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin_verification.aspx");
    }
    protected void dd_user_Init(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            sql = "select distinct first_name from application";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                a = dr.GetValue(0).ToString();
                dd_user.Items.Add(a);
            }
            dr.Close();
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact-Admin');", true);
        }
        finally
        {
            con.Close();
        }
    }
    protected void dd_user_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            sql = "select last_name,dob,gender,address,mobile,email,boarding,destination,account_no from application where first_name='" + dd_user.Text + "'";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                b = dr.GetString(0);
                c = dr.GetString(1);
                d = dr.GetString(2);
                f = dr.GetString(3);
                g = dr.GetString(4);
                h = dr.GetString(5);
                i = dr.GetString(6);
                j = dr.GetString(7);
                k = dr.GetString(8);

                lbl_lastname.Text = b.ToString();
                lbl_dob.Text = c.ToString();
                lbl_gender.Text = d.ToString();
                txt_address.Text = f.ToString();
                lbl_mobile.Text = g.ToString();
                lbl_email.Text = h.ToString();
                lbl_boarding.Text = i.ToString();
                lbl_destination.Text = j.ToString();
                lbl_ac.Text = k.ToString();
            }
            dr.Close();
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact-Admin');", true);
        }
        finally
        {
            con.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
           
            con.Open();
            sql = "select last_name,dob,gender,address,mobile,email,boarding,destination,account_no from application where first_name='" + TextBox1.Text + "'";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
              
                    b = dr.GetString(0);
                    c = dr.GetString(1);
                    d = dr.GetString(2);
                    f = dr.GetString(3);
                    g = dr.GetString(4);
                    h = dr.GetString(5);
                    i = dr.GetString(6);
                    j = dr.GetString(7);
                    k = dr.GetString(8);
                    sl.Add(TextBox1.Text);
                string[] ss=sl.ToArray();
                for (int x = 0; x < ss.Length;x++)
           {          
                if (TextBox1.Text == ss[x])
                {                                       
                    lbl_lastname.Text = b.ToString();
                    lbl_dob.Text = c.ToString();
                    lbl_gender.Text = d.ToString();
                    txt_address.Text = f.ToString();
                    lbl_mobile.Text = g.ToString();
                    lbl_email.Text = h.ToString();
                    lbl_boarding.Text = i.ToString();
                    lbl_destination.Text = j.ToString();
                    lbl_ac.Text = k.ToString();
                    tab.Visible = true;
                    tab1.Visible = true;
                    div2.Visible = true;
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid UserName');", true);
                }
                }
               
            }
            dr.Close();
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact-Admin');", true);
        }
        finally
        {
            con.Close();
        }
    }    
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin_verification.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "upload";
            cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = lbl_lastname.Text;
            cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txt_address.Text;
            cmd.Parameters.Add("@boarding", SqlDbType.VarChar).Value = lbl_boarding.Text;
            cmd.Parameters.Add("@destination", SqlDbType.VarChar).Value = lbl_destination.Text;
            cmd.Parameters.Add("@startdate", SqlDbType.VarChar).Value = txt_startdate.Text;
            cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = txt_expiry.Text;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Upload Successfull');", true);
            txt_startdate.Text = "";
            txt_expiry.Text = "";
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact-Admin');", true);
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_verification.aspx");
    }
}