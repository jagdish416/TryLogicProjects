using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Userhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stuid"] == null && Session["name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            Label2.Text = Session["name"].ToString();
        }
    }
}