using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Profile : System.Web.UI.Page
{
    Class1 obj = new Class1();
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
            string qry2 = "select * from Reg where UserId='" + Session["Studid"].ToString() + "'";
            DataSet ds = obj.select(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtdob.Text = ds.Tables[0].Rows[0][4].ToString();
                //txtloc.Text = ds.Tables[0].Rows[0][9].ToString();
                txtmail.Text = ds.Tables[0].Rows[0][2].ToString();
                txtmobile.Text = ds.Tables[0].Rows[0][3].ToString();
                txtpas.Text = ds.Tables[0].Rows[0][14].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0][11].ToString();
                txtcountry.Text = ds.Tables[0].Rows[0][7].ToString();
                txtstate.Text = ds.Tables[0].Rows[0][8].ToString();
                txtlat.Text = ds.Tables[0].Rows[0][12].ToString();
                txtlong.Text = ds.Tables[0].Rows[0][13].ToString();
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
            string qry = "update Reg set Password='" + txtpas.Text + "',MobileNo='" + txtmobile.Text + "',Address='" + TextBox1.Text + "',latiitude='" + txtlat.Text + "',longitude='" + txtlong.Text + "' where UserId='" + Session["Studid"].ToString() + "'";
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
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        txtlat.ReadOnly = false;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        txtlong.ReadOnly = false;
    }
}