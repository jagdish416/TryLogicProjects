using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buyer_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["name"].ToString();
    }
    Class1 obj = new Class1();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Feedback values('" + Session["id"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int i = obj.inupdel(qry);
            if(i>0)
            {
                Response.Write("<script>alert('Feedback Added ')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data Not Inserted !!! ')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
    }
}