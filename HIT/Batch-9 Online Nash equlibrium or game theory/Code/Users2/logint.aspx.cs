using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class logint : System.Web.UI.Page
{
    bal obj = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "USER")
        {
            string query = "select * from Reg where emaiid='" + Txtusername.Text.Trim() + "' and password='" + Txtpassword.Text.Trim() + "'";
            DataSet ds = obj.GetDetalis(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Username"] = ds.Tables[0].Rows[0][1];
                Response.Redirect("~/User/Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username & Password')</script>");
            }
        }
        else if(DropDownList1.SelectedItem.Text=="ADMIN")

        {
            if (Txtusername.Text == "admin" && Txtpassword.Text == "admin")
            {
                Response.Redirect("Admin/Home.aspx");
            }
        }
    }
}