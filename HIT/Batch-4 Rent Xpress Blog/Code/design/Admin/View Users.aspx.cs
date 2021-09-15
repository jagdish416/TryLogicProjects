using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_View_Users : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        try
        {
            string qry = "select * from Reg";
            DataSet ds = obj.Select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('There is No Data !!!')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button img = (Button)sender;
        GridViewRow gr = (GridViewRow)img.NamingContainer;
        Label lbl = (Label)gr.FindControl("Label2");
        string qry = "delete from  Reg where StudId='" + lbl.Text + "'";
        int i = obj.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Deleted Sucesfully !!')</script>");
            bind();
        }
        else
        {
            Response.Write("Not Yet Deleted !!");
        }
    }
}