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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "USER")
        {
            try
            {
                string qry = "select * from Reg where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                DataSet ds = obj.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["Studid"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["name"] = ds.Tables[0].Rows[0][1].ToString();
                    Session["Email"] = ds.Tables[0].Rows[0][2].ToString();
                    Session["pno"]=ds.Tables[0].Rows[0][3].ToString();
                    Session["pass"] = ds.Tables[0].Rows[0][13].ToString();
                    Session["add"] = ds.Tables[0].Rows[0][10].ToString();
                    Response.Redirect("~/User/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email ID and Passowrd')</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        else if (DropDownList1.SelectedItem.Text == "ADMIN")
        {

            try
            {
                if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
                {
                    Response.Redirect("~/Admin/Home.aspx");
                }
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Invalid Username and Password')</script>");
            }
        }
    }
}