using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Owner_ViewResidency : System.Web.UI.Page
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
        string qry = "select * from Residency where Studid='" + Session["id"].ToString() + "'" ;
        DataSet ds = obj.Select(qry);
        if(ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('There is NO Data !!!')</script>");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label2");
        string qry = "delete from Residency where RentId='" + lblid.Text + "'";
        int i = obj.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Deleted Succesfully')</script>");
            bind();
        }
        else
        {
            Response.Write("<script>alert('Not Yet Deleted')</script>");
        }
    }
}