using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Owner_AddResidency : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string qry = "insert into Residency values('"+Session["id"].ToString()+"','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + ddllocality.SelectedItem.Text + "')";
            int i = obj.inupdel(qry);
            if(i>0)
            {
                Response.Write("<script>alert('Inserted Succesfully !!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not Yet Inseretd !!')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlstate.SelectedItem.Text=="TG")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Hyderabad");
            ddlcity.Items.Add("Warangal");
            ddlcity.Items.Add("Karimnagar");
            ddlcity.Items.Add("Nizambad");
            ddlcity.Items.Add("SuryaPet");
        }
        else if(ddlstate.SelectedItem.Text=="AP")
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
        else if(ddlstate.SelectedItem.Text=="AP")
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
}