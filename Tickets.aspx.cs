using System;  
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Tickets : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.AppSettings["metro"]);
    SqlCommand cmd=new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string x = Session["name"].ToString();
           
            string sql = "select * from admin_upload where first_name='"+x+"'";
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count >= 1)
            {
                gv_tickets.DataSource = ds;
                gv_tickets.DataBind();
                gv_tickets.Visible = true;
                Label1.Visible = false;
                tab.Visible = true;
            }
            else
            {
                Label1.Visible = true;
                gv_tickets.Visible = false;
                Button1.Visible = false;
                tab.Visible = false;
            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Time-Expired Please login Again');", true);
            Label1.Visible = false;
            gv_tickets.Visible = false;
            Button1.Visible = false;
            tab.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("smartcard.aspx");
    }
    protected void gv_tickets_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}