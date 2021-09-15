using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactus : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string query = "insert into Contactus values('" + TextBox1.Text + "', '" + TextBox2.Text + "', " + TextBox3.Text + ", '" + TextBox4.Text + "')";
        int i = c.InsUpDelete(query);
        if (i > 0)
        {
            Response.Write("<script>alert('Thanks for approching us')</script>");
        }
    }
}