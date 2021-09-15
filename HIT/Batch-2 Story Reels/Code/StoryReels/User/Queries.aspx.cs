using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Queries : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Session["Name"].ToString();
                
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into feedback values('" + Session["Id"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int i = cs.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('query posted')</script>");
                 TextBox2.Text = "";
            }
            else
            {
                Response.Write("<script>alert('query not posted')</script>");
            }
 
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
            
        }
    }
}