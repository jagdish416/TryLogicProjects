using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Events : System.Web.UI.Page
{

    Sql obj = new Sql();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry = "select * from Events where EventName = '"+ DropDownList1.SelectedItem.Text +"' and Type ='"+ DropDownList2.SelectedItem.Text +"'";
        DataSet ds = obj.Display(qry);

        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][5].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][4].ToString();
        }
        else
        {
            Response.Write("<script>alert('No data found for selected Event...!!!')</script>");
        }

    }
}