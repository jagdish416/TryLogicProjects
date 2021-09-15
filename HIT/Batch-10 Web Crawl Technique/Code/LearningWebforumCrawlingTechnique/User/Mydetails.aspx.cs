using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Mydetails : System.Web.UI.Page
{
    Class1 obj = new Class1();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Update Password.aspx");
    }
    public void bind()
    {
        string a=Session["name"].ToString();
        string qry = "select * from reg where name='" + a + "'";
        DataSet ds = obj.select(qry);
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
}