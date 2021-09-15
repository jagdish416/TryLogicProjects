using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_view : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            UpdatePanel1.Visible = false;
        }

    }
    public void bind()
    {
        string qry="select * from feedback";
        DataSet ds = cs.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No Queries Present')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label4");
        Label lbluserid = (Label)gr.FindControl("Label7");
        Label lblname = (Label)gr.FindControl("Label5");
        Label lblmsg = (Label)gr.FindControl("Label6");
        ViewState["id2"]= lblid.Text;
        ViewState["userid"] = lbluserid.Text;
        ViewState["name1"] = lblname.Text;
        TextBox1.Text = lblmsg.Text;
        UpdatePanel1.Visible = true;
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into AnsFeed values('" + ViewState["id2"].ToString() + "','" + ViewState["userid"].ToString() + "','" + Session["id"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int i =cs.inupdel (qry);
            if (i > 0)
            {
                string message = "alert('answered')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                TextBox1.Text = TextBox2.Text = "";
            }
            else
            {
                string message = "alert('Error while answering')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}