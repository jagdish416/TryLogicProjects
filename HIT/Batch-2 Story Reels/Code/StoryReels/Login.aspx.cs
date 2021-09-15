using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
   
{
    classprj cs = new classprj();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedItem.Text=="User")
        {
            string qry = "select * from register where EmailId='" + txtuname.Text+ "' and Password='" + txtpass.Text+ "'";
            DataSet ds = cs.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Id"] = ds.Tables[0].Rows[0][0].ToString();
                Session["Name"] = ds.Tables[0].Rows[0][1].ToString();
                Session["Email"] = ds.Tables[0].Rows[0][2].ToString();
                Session["Password"] = ds.Tables[0].Rows[0][3].ToString();
                
               
                Response.Redirect("~/User/UserHome.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Login')</script>");
                txtuname.Text = txtpass.Text = "";
            }
        }
        else if (DropDownList1.SelectedItem.Text == "Admin")
        {
            if(txtuname.Text=="admin"&&txtpass.Text=="admin")
            {
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
        }
        }
   
}
