using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ViewUsers : System.Web.UI.Page
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
        try
        {
            string qry = "select * from Reg";
            DataSet ds = obj.select(qry);
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
}