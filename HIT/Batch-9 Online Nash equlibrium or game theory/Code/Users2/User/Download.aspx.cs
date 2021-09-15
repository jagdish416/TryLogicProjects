using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Download : System.Web.UI.Page
{
    bal obj = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "select * from tbl_file";
            DataSet ds = obj.GetDetalis(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                gvFiles.DataSource = ds.Tables[0];
                gvFiles.DataBind();
            }
        }
    }

    protected void btnclick(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;

        Label lblFileId = (Label)gr.FindControl("lblFileId");
        Label lblFileName = (Label)gr.FindControl("lblFileName");
        Label lblDesc = (Label)gr.FindControl("lblDesc");
        Label lblFilepath = (Label)gr.FindControl("lblFilepath");

        Session["id"] = lblFileId.Text;
        Session["filename"] = lblFileName.Text;
        Session["filedes"] = lblDesc.Text;
        Session["path"] = lblFilepath.Text;
        Response.Redirect("GAme.aspx");


    }

        }
    