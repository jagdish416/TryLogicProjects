using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Update_Password : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Session["pas"].ToString())
        {
            try
            {
                string qry = "update reg set pass='" + TextBox2.Text + "' where name='" + Session["name"].ToString() + "'";
                int j = obj.inupdel(qry);
                if (j > 0)
                {
                    Response.Write("<script>alert('updated successfully')</script>");
                    TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
                }
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }

        }
        else
        {
            Response.Write("<script>alert('Please Enter correct Password')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
        }
    }
}