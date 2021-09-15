using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_View_Upload : System.Web.UI.Page
{
    bal obj = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    public void bind()
    {
        string qry = "select * from tbl_file";
        DataSet ds = new DataSet();
        ds = obj.GetDetalis(qry);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}