using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Reg : System.Web.UI.Page
{
    RadioButton rb=new RadioButton();
    bal obj = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Radmale.Checked)
        {
            rb = Radmale;
        }
        else
        {
            rb = Radfemale;
        }
        string qry = "insert into Reg values('" + txtUserName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + rb.Text + "'," + Txtmobileno.Text + ",'" + Txtaddress.Text + "','" + ddlsecurityquestion.SelectedItem.Text + "','" + txtsecurityanswer.Text + "')";
        int i = obj.InsUpDel(qry);
        if (i > 0)
        {
            Label9.Text = "Registered Succesfully";
        }
        else
        {
            Label9.Text = "Not Yet Registered";
        }
    }
}
