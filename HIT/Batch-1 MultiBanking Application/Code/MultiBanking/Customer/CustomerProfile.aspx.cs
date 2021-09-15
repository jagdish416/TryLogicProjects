using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_CustomerProfile : System.Web.UI.Page
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
        try
        {
            string qry2 = "select * from Customer where CustomerId='" + Session["id"].ToString() + "'";
            DataSet ds = obj.Display(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtun.Text = ds.Tables[0].Rows[0][1].ToString();
                txtdob.Text = ds.Tables[0].Rows[0][3].ToString();
                txtadd.Text = ds.Tables[0].Rows[0][5].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][6].ToString();
                txtpw.Text = ds.Tables[0].Rows[0][7].ToString();
                txtmobile.Text = ds.Tables[0].Rows[0][8].ToString();

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
            string qry = "update Customer set Password='" + txtpw.Text + "',Mobile='" + txtmobile.Text + "',Address='" + txtadd.Text + "',Email='" + txtemail + "' where CustomerId='" + Session["id"].ToString() + "'";
            int i = obj.InUpDel(qry);
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

    protected void lbadd_Click(object sender, EventArgs e)
    {
        txtadd.ReadOnly=false;
    }
    protected void lbemail_Click(object sender, EventArgs e)
    {
        txtemail.ReadOnly = false;
    }
    protected void lbpw_Click(object sender, EventArgs e)
    {
        txtpw.ReadOnly = false;
    }
    protected void lbmobile_Click(object sender, EventArgs e)
    {
        txtmobile.ReadOnly = false;
    }
}
