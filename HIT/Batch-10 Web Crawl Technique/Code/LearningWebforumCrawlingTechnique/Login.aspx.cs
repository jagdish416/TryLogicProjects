using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "USER")
        {

            string qry = "select * from reg where email='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            DataSet ds = new DataSet();
            ds = obj.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["stuid"] = ds.Tables[0].Rows[0][0];
                Session["name"] = ds.Tables[0].Rows[0][1];
                Session["pas"] = ds.Tables[0].Rows[0][3];
                Response.Redirect("~/User/Userhome.aspx");

            }

            else
            {
                Label6.Text = "Invalid Username and Password";

            }

        }
        else if (DropDownList1.SelectedItem.Text == "ADMIN")
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
            {
                Session["aname"] = TextBox1.Text;
                Response.Redirect("~/Admin/Adminhome.aspx");
            }
            else
            {
                Label6.Text = "Invalid Username and Password";
            }
        }
    }
}