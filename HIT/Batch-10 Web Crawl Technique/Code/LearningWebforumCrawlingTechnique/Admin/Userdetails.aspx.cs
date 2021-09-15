using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Userdetails : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    public void bind()
    {
        string qry = "select * from reg ";
        DataSet ds = obj.select(qry);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

}