using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    Sql obj = new Sql();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedIndex == 1)
            {

                string qry = "select count(*) from Login where AdminId = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
                int i = obj.Login(qry);

                if (i == 1)
                {
                    Session["id"] = TextBox1.Text;
                    Session["pwd"] = TextBox2.Text;
                    Response.Redirect("Admin/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Enter valid Admin Id and Password...!!!')</script>");
                }

            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                string qry = "select count(*) from Regi where EmailId = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
                int i = obj.Login(qry);

                if (i == 1)
                {
                    Session["id"] = TextBox1.Text;
                    Session["pwd"] = TextBox2.Text;
                    Response.Redirect("User/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Enter valid Student Id and Password...')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}