using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Banker_Profile : System.Web.UI.Page
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
            string qry2 = "select * from Banker where BankerId='" + Session["id"].ToString() + "'";
            DataSet ds = obj.Display(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtun.Text = ds.Tables[0].Rows[0][1].ToString();
                txtadd.Text = ds.Tables[0].Rows[0][4].ToString();
                txtempid.Text = ds.Tables[0].Rows[0][6].ToString();
                txtpw.Text = ds.Tables[0].Rows[0][7].ToString();
                txtbankphone.Text = ds.Tables[0].Rows[0][8].ToString();

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
            string qry = "update Banker set Password='" + txtpw.Text + "',Bankphone='" + txtbankphone.Text + "',Address='" + txtadd.Text + "',EmployeeId='" + txtempid + "' where BankerId='" + Session["id"].ToString() + "'";
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
        txtadd.ReadOnly = false;
    }
    protected void lbemail_Click(object sender, EventArgs e)
    {
        txtempid.ReadOnly = false;
    }
    protected void lbpw_Click(object sender, EventArgs e)
    {
        txtpw.ReadOnly = false;
    }
    protected void lbmobile_Click(object sender, EventArgs e)
    {
        txtbankphone.ReadOnly = false;
    }
}
    
