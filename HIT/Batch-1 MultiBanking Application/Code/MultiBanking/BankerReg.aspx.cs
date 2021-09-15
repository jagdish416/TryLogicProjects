using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BankerReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        try
        {
          
            string qry = "insert into Banker values('" + txtfn.Text + "','" + txtln.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtadd.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtempid.Text + "','" + txtpw.Text + "','" + txtbankphone.Text + "','pending')";

            int i = obj.InUpDel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Registration Sucessfully Completed')</script>");
                txtfn.Text = txtln.Text = txtadd.Text = txtempid.Text = txtbankphone.Text = txtpw.Text = " ";
            }
            else
            {
                Response.Write("<script>alert('Not Yet Registerd')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }

    }
}
