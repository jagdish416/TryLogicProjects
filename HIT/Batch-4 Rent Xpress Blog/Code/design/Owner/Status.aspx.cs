using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Owner_Status : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            load();
        }
    }
    public void load()
    {
        string qry = "select * from ResStatus where StuId='" + Session["id"].ToString() + "'";
        DataSet ds = obj.Select(qry);
        if(ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('There is NO data !!!')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            GridViewRow gr = (GridViewRow)btn.NamingContainer;
            Label lbl1 = (Label)gr.FindControl("Label2");
            Label lbl2 = (Label)gr.FindControl("Label3");
            Label lbl3 = (Label)gr.FindControl("Label4");
            Label lbl4 = (Label)gr.FindControl("Label5");
            Label lbl5 = (Label)gr.FindControl("Label10");
            Label lbl6 = (Label)gr.FindControl("Label11");
            string qry = "update ResStatus set status='Accept' where OwnerId='" + lbl5.Text + "'";
            int i = obj.inupdel(qry);
            if(i>0)
            {
                string qry2 = "insert into BackUp1 values('" + lbl5.Text + "','" + lbl6.Text + "','" + lbl4.Text + "','Accepetd','" + lbl2.Text + "','" + lbl3.Text + "')";
                int i2 = obj.inupdel(qry2);
                if (i2 > 0)
                {
                    Response.Write("<script>alert('Request Sent To Owner')</script>");
                    string qry1 = "delete from ResStatus where Address='" + lbl6.Text + "'";
                    int i1 = obj.inupdel(qry1);
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Completed ')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Not Completed !!!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Request Not sent to Owner')</script>");
                }

                
            }
            else
            {
                Response.Write("<script>alert('Not Updated !!!')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        
        }
    }
}