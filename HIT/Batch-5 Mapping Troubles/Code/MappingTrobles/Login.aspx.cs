using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Lgn_Click(object sender, EventArgs e)
    {
        try
        {
            if (dlistlogin.SelectedItem.Text == "User")
            {
                String qry = "select * from Regi where username='" +txtuname.Text+ "' and password='" +txtpword.Text+ "'";
                DataSet ds = obj.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["Id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["firstname"] = ds.Tables[0].Rows[0][1].ToString();
                    Session["lastname"] = ds.Tables[0].Rows[0][2].ToString();
                    Session["username"] = ds.Tables[0].Rows[0][3].ToString();
                    Session["location"] = ds.Tables[0].Rows[0][7].ToString();
                    Session["pincode"] = ds.Tables[0].Rows[0][8].ToString();
                    Response.Redirect("~/User/Home.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password')</script>");
                }
            }
            else if (dlistlogin.SelectedItem.Text == "Admin")
            {
                if (txtuname.Text == "Admin" && txtpword.Text == "Admin")
                {
                    Response.Redirect("~/Admin/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password')</script>");

                }
            }
        }
        catch (Exception ex)
        {

        }

    }

    protected void dlistlogin_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}