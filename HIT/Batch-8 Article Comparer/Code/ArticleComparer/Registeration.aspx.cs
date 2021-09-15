using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    Class1 o = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Article_Comparer values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            int i = o.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Registeration Successful')</script>");
                TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = RadioButtonList1.SelectedItem.Text = TextBox7.Text = DropDownList1.SelectedItem.Text = " ";
            }
            else
            {
                Response.Write("<script>alert('Registeration Unsuccesful')</script>");
            }
        }
        catch (Exception exe)
        {
            Response.Write("<script>alert('" + exe.Message + "')</script>");

        }
    }
}