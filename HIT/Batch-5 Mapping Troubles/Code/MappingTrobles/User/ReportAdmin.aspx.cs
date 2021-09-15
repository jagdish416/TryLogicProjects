using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ReportAdmin : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtun.Text=Session["username"].ToString();
    }
    protected void txtun_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmsg_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "insert into feedback values('"+ Session["Id"].ToString()+"','" +txtun.Text +"','"+txtmsg .Text +"')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<Script>alert(' Thanks for giving your valuable feedback')</script>");
                txtun.Text = txtmsg.Text = "";

            }
            else
            {
                Response.Write("<Script>alert('Feedback not submitted')</script>");
            }

        }

        catch (Exception ex)
        {

        }
    }
}