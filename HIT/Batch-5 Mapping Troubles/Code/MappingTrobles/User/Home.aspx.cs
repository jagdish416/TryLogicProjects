using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = Session["username"].ToString();
        if (!IsPostBack)
        {
            load();

        }
    }
    Class1 obj = new Class1();
    public void load()
    {
        try
        {
            string qry2 = "select * from Regi where username='" + Session["username"].ToString() + "'";
            DataSet ds = obj.select(qry2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                firstname.Text = ds.Tables[0].Rows[0][1].ToString();
                lastname.Text = ds.Tables[0].Rows[0][2].ToString();
                username.Text = ds.Tables[0].Rows[0][3].ToString();
                password.Text = ds.Tables[0].Rows[0][4].ToString();
                dob.Text = ds.Tables[0].Rows[0][5].ToString();
                location.Text = ds.Tables[0].Rows[0][7].ToString();
              pincode.Text = ds.Tables[0].Rows[0][8].ToString();


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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "update Regi set firstname='" + firstname.Text + "',lastname='" + lastname.Text + "',username='" + username.Text + "',password='" + password.Text + "', dob='" +dob.Text + "',location='"+location.Text+"',pincode='"+pincode.Text+"' where username='"+ Session["username"].ToString()+"'";
            int i = obj.inupdel(qry);
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
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        firstname.ReadOnly = false;
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        lastname.ReadOnly = false;
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        username.ReadOnly = false;
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        password.ReadOnly = false;
    }
  
      protected void LinkButton15_Click(object sender, EventArgs e)
    {
        location.ReadOnly = false;
    }

    protected void LinkButton16_Click(object sender, EventArgs e)
    {
        pincode.ReadOnly = false;
    }
}