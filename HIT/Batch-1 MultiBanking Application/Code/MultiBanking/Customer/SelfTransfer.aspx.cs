using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_SelfTransfer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();
    protected void imgselect_Click(object sender, ImageClickEventArgs e)
    {

        try
        {

            string qry = "select * from Transcation where CustomerId='" + Session["id"].ToString() + "' and Bank='" + drpselect.SelectedItem.Text + "' and Accountno='" + txtaccno.Text + "'";
            DataSet ds = obj.Display(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {

                double i = double.Parse(ds.Tables[0].Rows[0][4].ToString());
                double j = double.Parse(txtamount.Text);
                double z = i + j;
                string qry1 = "update Transcation set Amount='" + z.ToString() + "' where CustomerId='" + Session["id"].ToString() + "' and Bank='" + drpselect.SelectedItem.Text + "' and Accountno='" + txtaccno.Text + "'";
                int k = obj.InUpDel(qry1);
                if (k > 0)
                {
                    Response.Write("<script>alert('Added Sucessfully')</script>");
                }
                    
                else
                {
                    Response.Write("<script>alert('Not Yet Added')</script>");
                }
                txtaccno.Text = txtamount.Text = " ";
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}