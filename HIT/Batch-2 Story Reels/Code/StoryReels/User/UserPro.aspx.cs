using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_UserPro : System.Web.UI.Page
{
    classprj cs=new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            load();
        }
    }
    
    public void load()
    {

        {
            try
            {
                string qry2 = "select * from Register where Id='" + Session["Id"].ToString() + "'";
                DataSet ds = cs.select(qry2);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtname.Text = ds.Tables[0].Rows[0][1].ToString();
                    txtdob.Text = ds.Tables[0].Rows[0][5].ToString();
                    //txtloc.Text = ds.Tables[0].Rows[0][9].ToString();
                    txtmail.Text = ds.Tables[0].Rows[0][2].ToString();
                    txtage.Text = ds.Tables[0].Rows[0][4].ToString();
                    txtpas.Text = ds.Tables[0].Rows[0][3].ToString();
                    TextBox1.Text = ds.Tables[0].Rows[0][6].ToString();

                    txtstate.Text = ds.Tables[0].Rows[0][7].ToString();

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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        {
            try
            {
                string qry = "update Register set Password='" + txtpas.Text + "',Age='" + txtage.Text + "',State='" + txtstate.Text + "' where StudId='" + Session["id"].ToString() + "'";
                int i = cs.inupdel(qry);
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
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        
            txtpas.ReadOnly = false;
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        
            txtage.ReadOnly = false;
        
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        
            txtstate.ReadOnly = false;

        
    }
}