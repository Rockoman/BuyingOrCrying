using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class BuyCry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            //display the username on the dashboard page
            lbl_user.Text = Session["New"].ToString() + "... are you buying or crying?";
        }
    }
    protected void btn_buyingcrying_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into BuyOrCry (UserName, BuyingOrCrying, [Where], City, Type, Site, Comments) values (@uname, @boc, @where, @city, @type, @site, @comments)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.Add("@uname", Session["New"].ToString());
            com.Parameters.Add("@boc", rb_boc.SelectedValue.ToString());
            com.Parameters.Add("@where", txt_where.Text);
            com.Parameters.Add("@city", txt_site.Text);
            com.Parameters.Add("@type", txt_type.Text);
            com.Parameters.Add("@site", txt_site.Text);
            com.Parameters.Add("@comments", txt_comments.Text);

            com.ExecuteNonQuery();

            Response.Redirect("Tickets.aspx");
            conn.Close();

        }
        catch (Exception ex){
            Response.Write("Error: " + ex.ToString());
        }    
    }
}