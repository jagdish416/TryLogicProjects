using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("Admin/Home.aspx");
        }
        else
        {

            string query = "select * from  Registration where Emailid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            DataSet ds = new DataSet();
            Class1 obj = new Class1();
            ds = obj.GetDetails(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["USerId"] = ds.Tables[0].Rows[0][0];
                //Session["emailid"] = ds.Tables[0].Rows[0][2];
                Session["username"] = ds.Tables[0].Rows[0][2];
                Response.Redirect("User/Home.aspx");
            }
        }
        }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register1.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Clear();
    }
    private void Clear()
    {
        TextBox1.Text = TextBox2.Text = "";
    }
}