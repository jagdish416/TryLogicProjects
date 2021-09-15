using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regester : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into register values('"+Txtname.Text+"','"+Txtemail.Text+"','"+Txtpass.Text+"','"+Txtage.Text+"','"+Txtdob.Text+"','"+RadioButtonList1.SelectedItem.Text+"','"+DropDownList1.SelectedItem.Text+"')";
        int i = cs.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('registered')</script>");
            Txtname.Text = Txtemail.Text = Txtpass.Text = txtcpass.Text = Txtage.Text = Txtdob.Text = "";
        }
        else
        {
            Response.Write("<script>alert('registration failed')</script>");
        }
 
       

    }
    
}