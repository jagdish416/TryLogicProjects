using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class LOGIN : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedItem.Text == "OWNER")
            {
                string qry = "select * from Reg where EmailID='" + txtemail.Text + "' and Pass='" + TextBox1.Text + "' and Type='OWNER'";
                DataSet ds = obj.Select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["pno"] = ds.Tables[0].Rows[0][5].ToString();
                    Session["name"] = ds.Tables[0].Rows[0][1].ToString();
                    Session["email"] = ds.Tables[0].Rows[0][2].ToString();
                    Session["pswd"] = ds.Tables[0].Rows[0][8].ToString();
                    Response.Redirect("~/Owner/OwnerHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password !!')</script>");
                }
            }
            else if (DropDownList1.SelectedItem.Text == "ADMIN")

            {
                if (txtemail.Text == "admin" && TextBox1.Text == "admin")
                {
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password !!')</script>");
                }
            }
            else if (DropDownList1.SelectedItem.Text == "BUYER")
            {
                string qry = "select * from Reg where EmailID='" + txtemail.Text + "' and Pass='" + TextBox1.Text + "' and Type='BUYER'";
                DataSet ds = obj.Select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["name"] = ds.Tables[0].Rows[0][1].ToString();
                    Session["email"] = ds.Tables[0].Rows[0][2].ToString();
                    Session["pno"] = ds.Tables[0].Rows[0][5].ToString();
                    Session["pswd"] = ds.Tables[0].Rows[0][8].ToString();
                    Response.Redirect("~/Buyer/BuyerHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password !!')</script>");
                }
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}