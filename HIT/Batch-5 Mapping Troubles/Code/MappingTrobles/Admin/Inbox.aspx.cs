using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Inbox : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            UpdatePanel1.Visible = false;

        }
    }
    protected void gridviewfeedbck_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lblid = (Label)gr.FindControl("Label1");
        string qry = "delete from achat where Id='" + lblid.Text + "'";
        int i = obj.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Unwanted Meassages  Deleted Succesfully')</script>");
            bind();
        }
        else
        {
            Response.Write("<script>alert('Unwanted Meassages Not Yet Deleted')</script>");
        }
    }
    public void bind()
    {
        String qry = "select * from achat";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvrp.DataSource = ds;
            gvrp.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No Meassages Found In Your Inbox !!')</script>");
        }

    }
    protected void chat_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Visible = true;
    }
    protected void gvrp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "insert into uchat values('" + txtuid.Text + "','" + txtunm.Text + "','" + txtmsg.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                String message = "alert('New Meassage sended to  inbox successfully!!')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                
            }
            else
            {
                String message = "alert('Meassge Not Send!!')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                
            }

        }

        catch (Exception ex)
        {

        }
    }
}