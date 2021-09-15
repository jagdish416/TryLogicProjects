using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_OtherTransfer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();
    protected void imgsubmit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "select * from Transcation where Accountno='" + txtfromaccount.Text + "'";
            DataSet ds = obj.Display(qry);
            double d1 = double.Parse(ds.Tables[0].Rows[0][4].ToString());
            string qry1 = "select * from Transcation where Accountno='" + txttoaccount.Text + "'";
            DataSet ds1 = obj.Display(qry1);
            double d2 = double.Parse(ds1.Tables[0].Rows[0][4].ToString());
            double d3 = double.Parse(txtamount.Text);
            if (d1 > d3)
            {
                string qry2 = "insert into Other values('"+ddlsb.SelectedItem.Text+"','" + txtfromaccount.Text + "','" + txttoaccount.Text + "','" + txtamount.Text + "')";
                int i = obj.InUpDel(qry2);
                if (i > 0)
                {
                    double d4 = d1 - d3;
                    double d5 = d2 + d3;
                    string qry3 = "update Transcation set Amount='" + d4.ToString() + "' where Accountno='" + txtfromaccount.Text + "'";
                    int j = obj.InUpDel(qry3);
                    if (j > 0)
                    {
                        Response.Write("<script>alert('Amount Debited Sucessfully')</script>");
                        string qry4 = "update Transcation set Amount='" + d5.ToString() + "' where Accountno='" + txttoaccount.Text + "'";
                        int k = obj.InUpDel(qry4);

                        if (k > 0)
                        {
                            Response.Write("<script>alert('Amount Credited Sucessfully')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Amount Not Credited')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Amount Not Credited')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Transcation Failed ')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('You Don't have Sufficent Amount To Transfer')</script>");
            }
            txttoaccount.Text = txtamount.Text = txttoaccount.Text = "";
        }



        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }

    }
    protected void ddlsb_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry5 = "select * from Transcation where Bank='" + ddlsb.SelectedItem.Text + "' and CustomerId='" + Session["id"].ToString() + "'";
        DataSet ds = obj.Display(qry5);
        txtfromaccount.Text = ds.Tables[0].Rows[0][3].ToString();
    }
}