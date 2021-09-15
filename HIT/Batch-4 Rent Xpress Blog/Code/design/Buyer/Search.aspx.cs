using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buyer_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstate.SelectedItem.Text == "TG")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Hyderabad");
            ddlcity.Items.Add("Warangal");
            ddlcity.Items.Add("Karimnagar");
            ddlcity.Items.Add("Nizambad");
            ddlcity.Items.Add("SuryaPet");
        }
        else if (ddlstate.SelectedItem.Text == "AP")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("VIZAG");
            ddlcity.Items.Add("Vijayawada");
            ddlcity.Items.Add("Tirupathi");

        }
        else if (ddlstate.SelectedItem.Text == "BIHAR")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Patna ");
            ddlcity.Items.Add("Badalpura ");
            ddlcity.Items.Add("Nohsa ");

        }
        else if (ddlstate.SelectedItem.Text == "DELHI")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Agra");
            ddlcity.Items.Add("Aligarh");
            ddlcity.Items.Add("Allahabad");
        }
        else if (ddlstate.SelectedItem.Text == "MAHARASHTRA")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Mumbai");
            ddlcity.Items.Add("Pune");
            ddlcity.Items.Add("Nagpur");
        }
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstate.SelectedItem.Text == "TG")
        {
            if (ddlcity.SelectedItem.Text == "Hyderabad")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("--SELECT--");
                ddllocality.Items.Add("Ameerpet");
                ddllocality.Items.Add("Secunderabad");
                ddllocality.Items.Add("Uppal");
                ddllocality.Items.Add("Ghatkesar");
                ddllocality.Items.Add("LB Nagar");
            }
            else if (ddlcity.SelectedItem.Text == "Warangal")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("--SELECT--");
                ddllocality.Items.Add("Huzurabad");
                ddllocality.Items.Add("Vijayawada");
                ddllocality.Items.Add("Tirupathi");

            }
            else if (ddlcity.SelectedItem.Text == "Karimnagar")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("--SELECT--");
                ddllocality.Items.Add("Patna ");
                ddllocality.Items.Add("Badalpura ");
                ddllocality.Items.Add("Nohsa ");

            }
        }
        else if (ddlstate.SelectedItem.Text == "AP")
        {
            if (ddlcity.SelectedItem.Text == "VIZAG")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("--SELECT--");
                ddllocality.Items.Add("ABC");
                ddllocality.Items.Add("BCD");

            }
            else if (ddlcity.SelectedItem.Text == "Vijayawada")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("EFG");
                ddllocality.Items.Add("IJK");
                ddllocality.Items.Add("MNP");

            }
            else if (ddlcity.SelectedItem.Text == "Tirupathi")
            {
                ddllocality.Items.Clear();
                ddllocality.Items.Add("OPG ");
                ddllocality.Items.Add("ZZZ ");
                ddllocality.Items.Add("AAA ");

            }
        }
        
    }
    Class1 obj = new Class1();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "select * from Residency where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Locality='" + ddllocality.SelectedItem.Text + "'and HomeFor='" + DropDownList1.SelectedItem.Text + "'";
            DataSet ds = obj.Select(qry);
            if(ds.Tables[0].Rows.Count>0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Data Found !!')</script>");
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
            Button btn = (Button)sender;
            GridViewRow gr = (GridViewRow)btn.NamingContainer;
            Label lbl1 = (Label)gr.FindControl("Label6");
            Label lbl2 = (Label)gr.FindControl("Label7");
            Label lbl3 = (Label)gr.FindControl("Label8");
            Label lbl4 = (Label)gr.FindControl("Label9");
            Label lbl5 = (Label)gr.FindControl("Label21");
            TextBox txt1 = (TextBox)gr.FindControl("TextBox1");
            TextBox txt2 = (TextBox)gr.FindControl("TextBox2");
            string qry = "insert into ResStatus values('" + lbl5.Text + "','" + lbl1.Text + "','" + lbl2.Text + "','" + lbl3.Text + "','" + lbl4.Text + "','" + txt1.Text + "','" + txt2.Text + "','EMPTY','" + Session["name"].ToString() + "','" + Session["pno"].ToString() + "','" + Session["id"].ToString() + "')";
            int i = obj.inupdel(qry);
            if(i>0)
            {
                Response.Write("<script>alert('Request Sent To Owner')</script>");
            }
            else
            {
                Response.Write("<script>alert('Request Not sent to Owner')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
    }
}