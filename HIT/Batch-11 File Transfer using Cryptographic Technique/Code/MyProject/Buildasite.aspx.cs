using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buildasite : System.Web.UI.Page
{
    Class1 c = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into Form1 values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + txtEmail.Text + "'," + txtMobile.Text + ",'" + TextBox4.Text + "')";
        int i = c.InsUpDelete(query);
        if (i > 0)
        {
            Response.Redirect("~/Webhosting.aspx");
        }
    }
}