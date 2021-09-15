using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "insert into Reg values('" + txtname.Text + "','" + txtemail.Text + "','" + RadioButtonList1.SelectedItem.Text
        + "','" + txtdob.Text + "','" + txtpno.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtadd.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Registration Sucessfully Completed')</script>");
                txtname.Text = txtadd.Text = txtdob.Text = txtemail.Text = txtpno.Text = ""; ;
            }
            else
            {
                Response.Write("<script>alert('Not Yet Completed')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        
    }
}