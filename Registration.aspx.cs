﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            //check user name to make sure it's not already taken
            string checkuser = "select count(*) from UserData where UserName='" + txt_userName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
                lbl_taken.Text = "That user name is already taken.";
            

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (cb_tos.Checked)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                //insert query
                string insertQuery = "insert into UserData (UserName, EMail, Password, Age, Name, City, Profession, Religion, Ethnicity, Smoke, Drink, FavoriteFood, Heading, Description, Zip, State) values (@uname, @email, @pass, @age, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@uname", txt_userName.Text);
                com.Parameters.AddWithValue("@email", txt_eMail.Text);
                com.Parameters.AddWithValue("@pass", txt_password.Text);
                com.Parameters.AddWithValue("@age", txt_age.Text);

                //execute query
                com.ExecuteNonQuery();

                //create user folder
                Directory.CreateDirectory(Server.MapPath("~/Data/") + txt_userName.Text + ("/"));

                Response.Redirect("Dash.aspx");
                Response.Write("Registration is successful!");

                
                
                conn.Close();

                

            }
            catch (Exception ex){
                lbl_error.Text = "Something is wrong!" + ex.Message;
            }
        }
        else
        {
            lbl_tos.Text = "Please agree to the Terms of Service.";
        }
    }
}