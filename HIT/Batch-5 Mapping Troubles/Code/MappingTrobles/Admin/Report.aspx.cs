using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Reporta : System.Web.UI.Page
{
    Class1 o = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
         protected void gridviewfeedbck_SelectedIndexChanged(object sender, EventArgs e)
    {

       
    }
    protected void feedbckbtn_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=MT;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from feedback", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridviewfeedbck.DataSource = ds;
        gridviewfeedbck.DataBind();
    }
    public void bind()
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=MT;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from feedback", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridviewfeedbck.DataSource = ds;
        gridviewfeedbck.DataBind();

    }
    protected void gridviewfeedbck_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label1");
        string qry = "delete from feedback where fid='" + lblid.Text + "'";
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
}
