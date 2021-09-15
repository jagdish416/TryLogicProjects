using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtfirst_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void txtfirst_TextChanged(object sender, EventArgs e)
    {

    }
        protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "insert into Regi values('"+ txtfirst.Text + "', '"+ txtsur.Text + "','"+ txtuser.Text + "','"+ txtpass.Text + "','"+ txtcal.Text + "','" +RadioButtonList1.SelectedItem.Text + "','" +txtloc.Text + "','" +txtpin.Text + "' )";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<Script>alert('Registration Succesfully completed')</script>");
                txtfirst.Text = txtsur.Text = txtuser.Text = txtpass.Text = txtcnfpass.Text = txtcal.Text = txtloc.Text = RadioButtonList1.SelectedItem.Text = txtpin.Text = "";

            }
            else
            {
                Response.Write("<Script>alert('Registration not yet  completed')</script>");
            }

        }

        catch (Exception ex)
        {

        }
    }
}