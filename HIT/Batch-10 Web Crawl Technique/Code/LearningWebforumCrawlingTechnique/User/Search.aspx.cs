using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void img_click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text.Trim() != "")
        {

            Response.Redirect("~/User/" + TextBox1.Text + ".aspx");
        }
    }
}