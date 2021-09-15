using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_ViewBank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load();

        }
    }
    Class1 obj = new Class1();
    public void load()
    {
        string qry = "select * from Addbank where CustomerId='" + Session["id"].ToString() + "'";
        DataSet ds = obj.Display(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        else
        {
            Response.Write("<script>alert('THERE IS NO DATA')</script>");
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}