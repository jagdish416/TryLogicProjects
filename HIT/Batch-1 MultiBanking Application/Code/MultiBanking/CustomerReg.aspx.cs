using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     Class1 obj = new Class1();
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
  try
        {

            string qry = "insert into Customer values('" + txtfn.Text + "','" + txtln.Text + "','" + txtdob.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtadd.Text + "','" + txtemail.Text + "','" + txtpw.Text + "','" + txtmobile.Text + "','pending')";

            int i = obj.InUpDel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Registration Sucessfully Completed')</script>");
                txtfn.Text = txtln.Text = txtadd.Text = txtdob.Text = txtmobile.Text = txtpw.Text = txtemail.Text= " ";
            }
            else
            {
                Response.Write("<script>alert('Not Yet Registerds')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }

    }
    }
