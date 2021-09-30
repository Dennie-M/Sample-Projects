using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String na = Convert.ToString(Session["s1"]);
        Label1.Text = na + "Your Details are successfully Received";
        Label2.Text = Convert.ToString(Session["s1"]);
        Label3.Text = Convert.ToString(Session["s2"]);
        Label4.Text = Convert.ToString(Session["s3"]);
        Label5.Text = Convert.ToString(Session["s4"]);
        Label6.Text = Convert.ToString(Session["s5"]);
        Label7.Text = Convert.ToString(Session["s6"]); 
        Label8.Text = Convert.ToString(Session["s7"]);   

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("user_login.aspx");
    }
}