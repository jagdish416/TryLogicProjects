using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BookHistory : System.Web.UI.Page
{
    Sql obj = new Sql();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BookingDetails();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    void BookingDetails()
    {
        string qry = "select * from Booking";
        DataSet ds = obj.Display(qry);

        if (ds.Tables[0].Rows.Count > 0)
        {
            //Session["fname"] = ds.Tables[0].Rows[0][1].ToString();
            //Session["email"] = ds.Tables[0].Rows[0][2].ToString();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Booking Dteails Not Available...!!!')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
            try
            {
                Button btn = (Button)sender;
                GridViewRow gr = (GridViewRow)btn.NamingContainer;
                Label lbl1 = (Label)gr.FindControl("Label1");

                string qry = "update Booking set Status ='Accepted' where Id = '" + lbl1.Text + "'";
                int i = obj.InUpDel(qry);

                if (i == 1)
                {
                    Response.Write("<script>alert('Status Updated Sucessfully...!!!')</script>");
                    BookingDetails();
                }
                else
                {
                    Response.Write("<script>alert('Status Not Updated...!!!')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        


    }
}