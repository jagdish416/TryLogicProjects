using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    Class1 o = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedItem.Text == "User")
            {
                string qry = "select * from Article_Comparer where Name='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
                DataSet ds = o.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["name"] = ds.Tables[0].Rows[0][1].ToString();
                     Session["pswd"] = ds.Tables[0].Rows[0][7].ToString();
                    Response.Redirect("~/User/UserHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password !!')</script>");
                }
            }
            else if (DropDownList1.SelectedItem.Text == "Admin")
            {
                if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
                {
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password !!')</script>");
                }
            }
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}