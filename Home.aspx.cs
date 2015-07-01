using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {

        //creates connection with the database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        //check user name to make sure it's not already taken
        string checkuser = "select count(*) from UserData where UserName='" + userName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)

        {
            conn.Open();
            //check password with username
            string checkPassword = "select Password from UserData where UserName='" + userName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPassword, conn);
            string datapassword = passComm.ExecuteScalar().ToString().Replace(" ", "");
            //check input password with password in database
            if (datapassword == password.Text)
            {
                Session["New"] = userName.Text;
                Response.Redirect("Dash.aspx");
            }
            else
                lbl_confirm.Text = "Password is incorrect.";
                
        }
        else
            lbl_confirm.Text = "Username is NOT correct.";   

      
        
    }


    protected void btn_Reg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}