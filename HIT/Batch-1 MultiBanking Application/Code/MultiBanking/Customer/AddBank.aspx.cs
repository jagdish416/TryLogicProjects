using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_AddBank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            string qry = "insert into Addbank values('"+Session["id"].ToString()+"','" + DropDownList1.SelectedItem.Text + "','" + txtaccno.Text + "','" + txtacchname.Text + "','" + txtcustid.Text + "')";

            int i = obj.InUpDel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Added Sucessfully')</script>");
                string qry1 = "insert into Transcation values('" + Session["id"].ToString() + "','" + DropDownList1.SelectedItem.Text + "','" + txtaccno.Text + "','0')";
                int j = obj.InUpDel(qry1);
                if (j > 0)
                {
                   // Response.Write("<script>alert('Added successfully')");
                    string message = "alert('answered')";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }
                else
                {
                    Response.Write("<script>alert('Not Yet Added')</script>");
                }
                txtaccno.Text = txtacchname.Text = txtcustid.Text= " ";
            }
            else
            {
                Response.Write("<script>alert('Not Yet Added')</script>");
            }
        }
        catch (Exception ex)
        {


            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        txtaccno.Text = txtacchname.Text = txtcustid.Text = " ";
    }
}