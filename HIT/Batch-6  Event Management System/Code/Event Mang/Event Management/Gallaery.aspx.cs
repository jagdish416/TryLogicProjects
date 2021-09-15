using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Gallaery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    Sql obj = new Sql();
    void Bind()
    {
        string qry = "select path from Gallery";
        DataSet ds = obj.Display(qry);

        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Gallery Images are Not Found....!!!')</script>");
        }

    }
}