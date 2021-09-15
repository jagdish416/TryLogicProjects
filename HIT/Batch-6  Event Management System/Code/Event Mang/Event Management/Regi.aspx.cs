using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regi : System.Web.UI.Page
{
    Sql obj = new Sql();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Regi values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            int i = obj.InUpDel(qry);

            if (i == 1)
            {
                Response.Write("<script>alert('Registration Completed Sucessfully...!!!')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Registration Failed...!!!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
}