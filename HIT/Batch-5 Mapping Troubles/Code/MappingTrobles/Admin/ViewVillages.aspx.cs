using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewVillages : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        String qry = "select * from vlglist";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridviewfeedbck.DataSource = ds;
            gridviewfeedbck.DataBind();
        }
        else
        {
        }

    }
         protected void gridviewfeedbck_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label1");
        string qry = "delete from vlglist where vid='" + lblid.Text + "'";
        int i = obj.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Village Deleted Succesfully')</script>");
            bind();
        }
        else
        {
            Response.Write("<script>alert('Village Not Yet Deleted')</script>");
        }
    }
         protected void gridviewfeedbck_SelectedIndexChanged(object sender, EventArgs e)
         {

         }
}