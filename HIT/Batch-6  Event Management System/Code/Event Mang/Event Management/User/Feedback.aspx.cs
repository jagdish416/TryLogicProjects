using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Sql obj = new Sql();

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "insert into Feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj.InUpDel(qry);

            if (i == 1)
            {
                Response.Write("<script>alert('Feedback Submitted Sucessfully...!!!')</script>");
                TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Feedback Not Submitted...!!!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}