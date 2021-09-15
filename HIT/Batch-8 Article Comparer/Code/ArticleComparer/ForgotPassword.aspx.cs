using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=MOHANKUMAR-PC;Initial Catalog=Project;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from Article_Comparer where Mobile='" + TextBox1.Text + "'", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox2.Text = ds.Tables[0].Rows[0][7].ToString();
        }
        else
        {
            Response.Write("<script>alert('Mobile Number Not Valid')</script>");
        }
    }
}