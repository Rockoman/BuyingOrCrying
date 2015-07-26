using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class Dash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){

            if (Session["New"] == null)
                Response.Redirect("Home.aspx");
        
            else
            {
           
                //display the username on the dashboard page
                lbl_welcome.Text = "Hello..." + Session["New"].ToString() + "!";

            
          
                if (txt_name.Text != null)
                {
                    //creates connection with the database
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn.Open();
            
                    //import data from database to display user information
                    //name
                    string data = "SELECT Name FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    SqlCommand passComm = new SqlCommand(data, conn);
                    string name = passComm.ExecuteScalar().ToString().Replace("  ", "");            
                    //city
                    data = "SELECT City FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string city = passComm.ExecuteScalar().ToString().Replace("  ", ""); ; 
                    //religion
                    data = "SELECT Religion FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string religion = passComm.ExecuteScalar().ToString();
                    //profession
                    data = "SELECT Profession FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string profession = passComm.ExecuteScalar().ToString().Replace("  ", ""); ;
                    //Ethnicity
                    data = "SELECT Ethnicity FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string ethnicity = passComm.ExecuteScalar().ToString();
                    //Smoke
                    data = "SELECT Smoke FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string smoke = passComm.ExecuteScalar().ToString();
                    //drink
                    data = "SELECT Drink FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string drink = passComm.ExecuteScalar().ToString();
                    //FavoriteFood
                    data = "SELECT FavoriteFood FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string favoritefood = passComm.ExecuteScalar().ToString();
                    //heading
                    data = "SELECT Heading FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string heading = passComm.ExecuteScalar().ToString().Replace("   ", ""); ;
                    //description
                    data = "SELECT Description FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string description = passComm.ExecuteScalar().ToString().Replace("      ", ""); ;
                    //Zip
                    data = "SELECT Zip FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string zip = passComm.ExecuteScalar().ToString().Replace(" ", "");
                    //State
                    data = "SELECT State FROM UserData WHERE UserName='" + Session["New"].ToString() + "'";
                    passComm = new SqlCommand(data, conn);
                    string state = passComm.ExecuteScalar().ToString();

                    //close connection to database
                    conn.Close();

                    txt_name.Text = name;
                    txt_city.Text = city;
                    txt_profession.Text = profession;
                    list_religions.Text = religion;
                    list_ethnic.Text = ethnicity;
                    list_smoker.Text = smoke;
                    list_drinker.Text = drink;
                    txt_favorite.Text = favoritefood;
                    txt_headline.Text = heading;
                    txt_description.Text = description;
                    txt_zip.Text = zip;
                    list_states.Text = state;
                

                }
             
            }

        }
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Home.aspx");
        
    }
    protected void txt_update_Click(object sender, EventArgs e)
    {



            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();

                string lookQuery = "";

                lookQuery = "UPDATE UserData SET Name=@name, City=@city, State=@state, Profession=@jerb, Religion=@religion, Ethnicity=@ethnic, Smoke=@smoke, Drink=@drink, FavoriteFood=@favorite, Heading=@head, Description=@description, Zip=@zip WHERE UserName='" + Session["New"].ToString() + "'";

                SqlCommand com = new SqlCommand(lookQuery, conn);
                com.Parameters.AddWithValue("@name", txt_name.Text);
                com.Parameters.AddWithValue("@city", txt_city.Text);
                com.Parameters.AddWithValue("@state", list_states.SelectedValue.ToString());
                com.Parameters.AddWithValue("@jerb", txt_profession.Text);
                com.Parameters.AddWithValue("@religion", list_religions.SelectedValue.ToString());
                com.Parameters.AddWithValue("@ethnic", list_ethnic.SelectedValue.ToString());
                com.Parameters.AddWithValue("@smoke", list_smoker.SelectedValue.ToString());
                com.Parameters.AddWithValue("@drink", list_drinker.SelectedValue.ToString());
                com.Parameters.AddWithValue("@favorite", txt_favorite.Text);
                com.Parameters.AddWithValue("@head", txt_headline.Text);
                com.Parameters.AddWithValue("@description", txt_description.Text);
                com.Parameters.AddWithValue("@zip", txt_zip.Text);
    
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


    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Data/") + Session["new"].ToString() + ("/") + filename);
                lbl_pic.Text = "Picture uploaded";
            }
            catch(Exception ex)
            {
                lbl_pic.Text = "Upload error: " + ex.Message;
            }
                    
        }
    }
}