using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_feedback : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string x = Session["name"].ToString();
            TextBox1.Text = x;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string qry = "insert into feedback values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        int i = obj.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Succesfully sent to Admin')</script>");
            clear();
        }
        else
        {
            Response.Write("<script>alert('Not Yet sent Please Fill the Message')</script>");
        }
    }
    public void clear()
    {
        TextBox3.Text = TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }
}