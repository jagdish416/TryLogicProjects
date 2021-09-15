using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PastEventst : System.Web.UI.Page
{
    Class1 obj=new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }
    public void bind()
    {
        String qry = "select * from events";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridviewfeedbck.DataSource = ds;
            gridviewfeedbck.DataBind();
        }
        else
        {
        }
    }
    protected void gridviewfeedbck_Click(object sender, ImageClickEventArgs e)
    {

    }
}