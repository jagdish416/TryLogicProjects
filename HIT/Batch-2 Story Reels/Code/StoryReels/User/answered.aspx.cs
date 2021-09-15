using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Notification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bind();
        }
    }
    classprj cs = new classprj();
    public void bind()
    {
        try
        {
            string qry = "select * from AnsFeed where PresentId='" + Session["id"].ToString() + "'";
            DataSet ds = cs.select(qry);
            if(ds.Tables[0].Rows.Count>0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('There is No data !!')</script>");
            }
        }
        catch (Exception ex)
        {
            
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}