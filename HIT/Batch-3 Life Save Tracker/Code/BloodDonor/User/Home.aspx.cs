using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Studid"] == null && Session["name"] == null)
        {

            //string a = Session["stuid"].ToString();
            //string b = Session["name"].ToString();
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            Label2.Text = Session["name"].ToString();
        }
        //Label2.Text = Session["name"].ToString();
    }
}