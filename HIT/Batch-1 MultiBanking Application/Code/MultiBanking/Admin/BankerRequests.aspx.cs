using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_BankerRequests : System.Web.UI.Page
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
        string qry = "select * from Banker where Status='pending'";
        DataSet ds = obj.Display(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('THERE IS NO DATA')</script>");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            GridViewRow gr = (GridViewRow)btn.NamingContainer;
            Label lbl1 = (Label)gr.FindControl("Label2");
            string qry = " Update Banker Set Status ='Active' where BankerId='" + lbl1.Text + "'";
            int i = obj.InUpDel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('ACCOUNT HAS BEEN ADDED')</script>");
            }
            else
            {
                Response.Write("<script>alert('ACCOUNT HAS NOT ADDED')</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            GridViewRow gr = (GridViewRow)btn.NamingContainer;
            Label lbl1 = (Label)gr.FindControl("Label2");
            string qry = "Delete from Banker where BankerId='" + lbl1.Text + "'";
            int i = obj.InUpDel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('ACCOUNT HAS BEEN REJECTED')</script>");
                load();
            }
            else
            {
                Response.Write("<script>alert('ACCOUNT HAS NOT REJECTED')</script>");
            }

        }

        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}

