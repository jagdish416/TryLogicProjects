using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Feedback : System.Web.UI.Page
{
    Sql obj=new Sql();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Feedback();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    void Feedback()
    {
        string qry = "select * from Feedback";
        DataSet ds = obj.Display(qry);

        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        else
        {
            Response.Write("<script>alert('Feedback Data not Available...!!!')</script>");
        }
    }

   
}