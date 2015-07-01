using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            //display the username on the dashboard page
            lbl_welcome.Text += Session["New"].ToString();
        }
        else
            Response.Redirect("Home.aspx");
        
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Home.aspx");
        
    }
}