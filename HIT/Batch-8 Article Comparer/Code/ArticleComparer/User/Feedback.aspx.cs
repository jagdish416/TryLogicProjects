using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Feedback : System.Web.UI.Page
{
    Class1 o = new Class1();
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
            string qry2 = "select * from Article_Comparer where Id='" + Session["id"].ToString() + "'";
            DataSet ds = o.select(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
               
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            string qry = "insert into Feedback values('" + TextBox1.Text + "','"+TextBox2.Text+"')";
            TextBox2.Text = "";
            int i = o.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Thank You..!!')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}