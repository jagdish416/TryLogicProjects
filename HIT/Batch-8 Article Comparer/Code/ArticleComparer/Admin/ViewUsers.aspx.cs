using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ViewUsers : System.Web.UI.Page
{
    Class1 o = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        bind();
    }
    public void bind()
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=Project;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from Article_Comparer", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label2");
        string qry = "delete from Article_Comparer where Id='" + lblid.Text + "'";
        int i = o.inupdel(qry);
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


    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
}