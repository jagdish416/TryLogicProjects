using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     Class1 obj = new Class1();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedItem.Text == "Banker")
            {
                string qry = "select * from Banker where Firstname='" + txtun.Text + "' and Password='" + txtpw.Text + "' and Status ='Active'";
                DataSet ds = obj.Display(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["Firstname"] = ds.Tables[0].Rows[0][1].ToString();
                    Session["bank"] = ds.Tables[0].Rows[0][5].ToString();
                    Response.Redirect("~/Banker/BankerHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username Or Password!!')</script>");
                }
               
            }
            else if (DropDownList1.SelectedItem.Text == "Admin")
            {
                if (txtun.Text == "admin" && txtpw.Text == "admin")
                {
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script>alret('Invalid Username Or Password!!')</script>");
                }
            }
            else if (DropDownList1.SelectedItem.Text == "Customer")
            {

                string qry = "select * from Customer where Firstname='" + txtun.Text + "' and Password='" + txtpw.Text + "' and Status ='Active'";
                DataSet ds = obj.Display(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["Firstname"] = ds.Tables[0].Rows[0][1].ToString();
                   // Session["Password"] = ds.Tables[0].Rows[0][8].ToString();
                    Response.Redirect("~/Customer/CustomerHome.aspx");
                }
                else
                {
                    Response.Write("<script>alret('Invalid Username Or Password!!')</script>");
                }
               
            }
            
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");

        }
    
    }
}