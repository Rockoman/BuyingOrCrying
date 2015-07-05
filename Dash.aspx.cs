using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            //display the username on the dashboard page
            lbl_welcome.Text = "Hello..." + Session["New"].ToString() + "!";

            if (Session["name"] != null)
            {
                //keep values inside their text boxes for easy updating
                txt_name.Text = Session["name"].ToString();
                txt_city.Text = Session["city"].ToString();
                list_states.SelectedValue = Session["state"].ToString();
                txt_profession.Text = Session["jerb"].ToString();
                list_religions.SelectedValue = Session["religion"].ToString();
                list_ethnic.SelectedValue = Session["ethnic"].ToString();
                list_smoker.SelectedValue = Session["smoke"].ToString();
                list_drinker.SelectedValue = Session["drink"].ToString();
                txt_favorite.Text = Session["favorite"].ToString();
                txt_headline.Text = Session["headline"].ToString();
                txt_description.Text = Session["description"].ToString();
                Session["zip"] = txt_zip.Text;
            }

        }
        else
            Response.Redirect("Home.aspx");
        
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Home.aspx");
        
    }
    protected void txt_update_Click(object sender, EventArgs e)
    {
        Session["name"] = txt_name.Text;
        Session ["city"] = txt_city.Text;
        Session ["state"] = list_states.SelectedValue.ToString();
        Session ["jerb"] = txt_profession.Text;
        Session ["religion"] = list_religions.SelectedValue.ToString();
        Session ["ethnic"] = list_ethnic.SelectedValue.ToString();
        Session ["smoke"] = list_smoker.SelectedValue.ToString();
        Session ["drink"] = list_drinker.SelectedValue.ToString();
        Session ["favorite"] = txt_favorite.Text;
        Session ["headline"] = txt_headline.Text;
        Session ["description"] = txt_description.Text;
        Session["zip"] = txt_zip.Text;
        
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                //insert query
                string insertQuery = "insert into ProfileInformation (Name, City, State, Profession, Religion, Ethnicity, Smoke, Drink, FavoriteFood, Heading, Description, UserName, Zip) values (@name, @city, @state, @jerb, @religion, @ethnic, @smoke, @drink, @favorite, @head, @description, @user, @zip)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name", Session["name"].ToString());
                com.Parameters.AddWithValue("@city", Session["city"].ToString());
                com.Parameters.AddWithValue("@state", Session["state"].ToString());
                com.Parameters.AddWithValue("@jerb", Session["jerb"].ToString());
                com.Parameters.AddWithValue("@religion", Session["religion"].ToString());
                com.Parameters.AddWithValue("@ethnic", Session["ethnic"].ToString());
                com.Parameters.AddWithValue("@smoke", Session["smoke"].ToString());
                com.Parameters.AddWithValue("@drink", Session["drink"].ToString());
                com.Parameters.AddWithValue("@favorite", Session["favorite"].ToString());
                com.Parameters.AddWithValue("@head", Session["headline"].ToString());
                com.Parameters.AddWithValue("@description", Session["description"].ToString());
                com.Parameters.AddWithValue("@user", Session["new"].ToString());
                com.Parameters.AddWithValue("@zip", Session["zip"].ToString());

                
                //execute query
                com.ExecuteNonQuery();
                lbl_updated.Text = "Profile updated!";
                Response.Redirect("Dash.aspx");
                lbl_updated.Text = "Profile updated!";

                conn.Close();
            }
            
            catch (Exception ex){
                lbl_error.Text = "Something is wrong!" + ex.Message;
            }
        

    }
}