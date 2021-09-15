using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UpdateInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }
    Class1 obj = new Class1();
    public void Bind()
    {
        String qry = "select * from vlglist";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridviewfeedbck.DataSource = ds;
            gridviewfeedbck.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No Data Found !!')</script>");
        }
    }


    protected void gridviewfeedbck_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            Label lbl1 = (Label)gridviewfeedbck.Rows[e.RowIndex].FindControl("Label1");
            TextBox txt1 = (TextBox)gridviewfeedbck.Rows[e.RowIndex].FindControl("TextBox1");
            string qry = "update vlglist set discription='" + txt1.Text + "' where vid='" + lbl1.Text + "'";
            int j1 = obj.inupdel(qry);
            if (j1 > 0)
            {
                Response.Write("<script>alert('Updated Succesfully')</script>");
                gridviewfeedbck.EditIndex = -1;
                Bind();
             
            }
            else
            {
                Response.Write("<script>alert('Not Yet Updated')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void gridviewfeedbck_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridviewfeedbck.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void gridviewfeedbck_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridviewfeedbck.EditIndex = -1;
        Bind();
    }
}