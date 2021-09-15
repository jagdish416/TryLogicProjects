using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdob_CalendarExtender.EndDate = DateTime.Now;
 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into reg values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "'," + txtmobile.Text + ",'" + txtloc.Text + "','" + txtdob.Text + "','" + ddlgender.SelectedItem.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Label12.Text = "Register Sucessfully Completed";
                txtname.Text = txtemail.Text = txtdob.Text = txtloc.Text = txtmobile.Text = txtpass.Text = "";
            }
            else
            {
                Label12.Text = "Not Yet Registered";
            }
        }
        catch (Exception)
        {

            Label12.Text = "EmailId Already exits ";
        }
        
    }
}