using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_BookEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select * from Regi where EmailId = '"+ Session["id"].ToString() +"' and Password  = '"+ Session["pwd"].ToString() +"'";
        DataSet ds = obj.Display(qry);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["fname"] = ds.Tables[0].Rows[0][1].ToString();
            Session["mno"] = ds.Tables[0].Rows[0][6].ToString();
            Session["add"] = ds.Tables[0].Rows[0][7].ToString();
        }
        
    }
    Sql obj = new Sql();

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            string qry = "select * from Events where EventName = '" + DropDownList1.SelectedItem.Text + "' and Type = '" + DropDownList2.SelectedItem.Text + "'";
            DataSet ds = obj.Display(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][3].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0][4].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][5].ToString();
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Booking values('" + Session["fname"].ToString() + "','" + Session["id"].ToString() + "','" + Session["mno"].ToString() + "','" + Session["add"].ToString() + "','"+ DropDownList1.SelectedItem.Text +"','"+ DropDownList2.SelectedItem.Text +"','"+ TextBox1.Text +"','"+ TextBox3.Text +"','Not Accepted')";
            int i = obj.InUpDel(qry);

            if (i == 1)
            {
                Response.Write("<script>alert('Event Booked Sucessfully...!!!')</script>");
                TextBox1.Text = TextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Event not Booked...!!!')</script>"); 
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}