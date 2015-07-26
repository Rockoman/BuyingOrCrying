using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

            string[] filePath = Directory.GetFiles(Server.MapPath("~/Data/" + Session["new"].ToString() + ("/")));
            List<ListItem> files = new List<ListItem>();
            foreach (string image in filePath)
            {
                string imgName = Path.GetFileName(image);
                files.Add(new ListItem(imgName, "~/Data/" + Session["new"].ToString() + ("/") + imgName));
            }

           /* 
            if (Session["name"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lbl_city.Text = Session["city"].ToString();
                lbl_state.Text = Session["state"].ToString();
                lbl_profession.Text = Session["jerb"].ToString();
                lbl_religion.Text = Session["religion"].ToString();
                lbl_ethnic.Text = Session["ethnic"].ToString();
                lbl_smoker.Text = Session["smoke"].ToString();
                lbl_drinker.Text = Session["drink"].ToString();
                lbl_food.Text = Session["favorite"].ToString();
                lbl_profilehead.Text = Session["headline"].ToString();
                lbl_aboutyou.Text = Session["description"].ToString();
                lbl_zip.Text = Session["zip"].ToString();
            }
            */
    }
}