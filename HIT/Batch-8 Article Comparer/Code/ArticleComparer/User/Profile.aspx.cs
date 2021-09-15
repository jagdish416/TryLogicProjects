using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Profile : System.Web.UI.Page
{
    Class1 o = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load();
        }
    }
    public void load()
    {
        try
        {
            string qry2 = "select * from Article_Comparer where Id='" + Session["id"].ToString() + "'";
            DataSet ds = o.select(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();

                TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0][4].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0][5].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0][7].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0][8].ToString();

            }
            else
            {
                Response.Write("<script>alert('There is No Data')</script>");
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
            string qry = "update Article_Comparer set Address='" + TextBox3.Text + "',Mobile='" + TextBox4.Text + "',Email='" + TextBox5.Text + "',D_O_B='"+TextBox6.Text+"',Password='"+TextBox7.Text+"',State='"+TextBox8.Text+"' where Id='" + Session["id"].ToString() + "'";
            int i = o.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Updated Succesfully')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        TextBox3.ReadOnly = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox4.ReadOnly = false;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        TextBox5.ReadOnly = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox7.ReadOnly = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        TextBox8.ReadOnly = false;
    }
}
   