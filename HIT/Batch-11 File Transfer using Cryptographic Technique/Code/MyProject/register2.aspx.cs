using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register2 : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register2.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string query = "insert into Registration values('" + txtUName.Text + "', '" + txtPwd.Text + "', '" + txtEmail.Text + "', '" + txtDOB.Text + "', '" + txtState.Text + "', '" + txtCountry.Text + "'," + txtMobile.Text + ")";
        int i = c.InsUpDelete(query);
        if (i > 0)
        {
            Response.Write("<script>alert('Registered Successfully')</script>");
        }
        else
            Response.Write("<script>alert('Registeration Failure')</script>");
    }
}