using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buyer_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            load();
        }
    }
    Class1 obj = new Class1();
    public void load()
    {
        try
        {
            string qry2 = "select * from Reg where StudId='" + Session["id"].ToString() + "'";
            DataSet ds = obj.Select(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtdob.Text = ds.Tables[0].Rows[0][4].ToString();
                //txtloc.Text = ds.Tables[0].Rows[0][9].ToString();
                txtmail.Text = ds.Tables[0].Rows[0][2].ToString();
                txtmobile.Text = ds.Tables[0].Rows[0][5].ToString();
                txtpas.Text = ds.Tables[0].Rows[0][8].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0][7].ToString();

                txtstate.Text = ds.Tables[0].Rows[0][6].ToString();

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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "update Reg set Pass='" + txtpas.Text + "',Pno='" + txtmobile.Text + "',Addr='" + TextBox1.Text + "' where StudId='" + Session["id"].ToString() + "'";
            int i = obj.inupdel(qry);
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtpas.ReadOnly = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        txtmobile.ReadOnly = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = false;
    }
}