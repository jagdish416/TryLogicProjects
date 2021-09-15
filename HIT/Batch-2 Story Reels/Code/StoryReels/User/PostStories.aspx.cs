using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PostStories : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
          if(ddlstate.SelectedItem.Text=="Telangana")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Hyderabad");
            ddlcity.Items.Add("Warangal");
            ddlcity.Items.Add("Karimnagar");
            ddlcity.Items.Add("Nizambad");
            ddlcity.Items.Add("SuryaPet");
        }
        else if(ddlstate.SelectedItem.Text=="AndhraPradesh")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("VIZAG");
            ddlcity.Items.Add("Vijayawada");
            ddlcity.Items.Add("Tirupathi");
            
        }
        else if (ddlstate.SelectedItem.Text == "Kerala")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("kochin");
            ddlcity.Items.Add("thiruvananthapuram");
            ddlcity.Items.Add("aluva");
            
        }
        else if (ddlstate.SelectedItem.Text == "DELHI")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Agra");
            ddlcity.Items.Add("Aligarh");
            ddlcity.Items.Add("Allahabad");
        }
          else if (ddlstate.SelectedItem.Text == "TamilNadu")
          {
              ddlcity.Items.Clear();
              ddlcity.Items.Add("--SELECT--");
              ddlcity.Items.Add("Chennai");
              ddlcity.Items.Add("velluru");
              ddlcity.Items.Add("madhurai");
          }
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstate.SelectedItem.Text == "Telangana")
        {
            if (ddlcity.SelectedItem.Text == "Hyderabad")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("Ameerpet");
                ddllocation.Items.Add("Secunderabad");
                ddllocation.Items.Add("Uppal");
                ddllocation.Items.Add("Ghatkesar");
                ddllocation.Items.Add("LB Nagar");
            }
            else if (ddlcity.SelectedItem.Text == "Warangal")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("Huzurabad");
                ddllocation.Items.Add("Vijayawada");
                ddllocation.Items.Add("Tirupathi");

            }
            else if (ddlcity.SelectedItem.Text == "Karimnagar")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("kabham");
                ddllocation.Items.Add("srisailam");
                ddllocation.Items.Add("kajipet");

            }
        }
        else if (ddlstate.SelectedItem.Text == "AndhraPradesh")
        {
            if (ddlcity.SelectedItem.Text == "VIZAG")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("ABC");
                ddllocation.Items.Add("BCD");

            }
            else if (ddlcity.SelectedItem.Text == "Vijayawada")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("EFG");
                ddllocation.Items.Add("IJK");
                ddllocation.Items.Add("MNP");

            }
            else if (ddlcity.SelectedItem.Text == "Tirupathi")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("OPG ");
                ddllocation.Items.Add("ZZZ ");
                ddllocation.Items.Add("AAA ");

            }
        }
        else if (ddlstate.SelectedItem.Text == "Delhi")
        {
            if (ddlcity.SelectedItem.Text == "Agra")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("ABC");
                ddllocation.Items.Add("BCD");

            }
            else if (ddlcity.SelectedItem.Text == "Alighar")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("EFG");
                ddllocation.Items.Add("IJK");
                ddllocation.Items.Add("MNP");

            }
            else if (ddlcity.SelectedItem.Text == "Allahadabad")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("OPG ");
                ddllocation.Items.Add("ZZZ ");
                ddllocation.Items.Add("AAA ");

            }
        }
        else if (ddlstate.SelectedItem.Text == "Kerala")
        {
            if (ddlcity.SelectedItem.Text == "kochin")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("ABC");
                ddllocation.Items.Add("BCD");

            }
            else if (ddlcity.SelectedItem.Text == "thiruvananthapuram")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("EFG");
                ddllocation.Items.Add("IJK");
                ddllocation.Items.Add("MNP");

            }
            else if (ddlcity.SelectedItem.Text == "aluva")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("OPG ");
                ddllocation.Items.Add("ZZZ ");
                ddllocation.Items.Add("AAA ");

            }
        }
        else if (ddlstate.SelectedItem.Text == "TamilNadu")
        {
            if (ddlcity.SelectedItem.Text == "chennai")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("--SELECT--");
                ddllocation.Items.Add("ABC");
                ddllocation.Items.Add("BCD");

            }
            else if (ddlcity.SelectedItem.Text == "velluru")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("EFG");
                ddllocation.Items.Add("IJK");
                ddllocation.Items.Add("MNP");

            }
            else if (ddlcity.SelectedItem.Text == "madhurai")
            {
                ddllocation.Items.Clear();
                ddllocation.Items.Add("OPG ");
                ddllocation.Items.Add("ZZZ ");
                ddllocation.Items.Add("AAA ");

            }
        }
     
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string txt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (txt.ToUpper() == ".PNG" || txt.ToUpper() == ".JPG" || txt.ToUpper() == ".JPEG")
            {
                if (FileUpload1.HasFile)
                {
                     string filename1 = "~/Images1/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(filename1));
                string f1 = FileUpload1.FileName;
                string qry = "insert into post values('" + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + ddllocation.SelectedItem.Text + "','" + filename1 + "','" + TextBox1.Text + "','Follow','Empty','" + DateTime.Now.ToString("yyyy-mm-dd") + "')";
                int i = cs.inupdel(qry);
                if (i > 0)
                {
                    Response.Write("<script>alert('Posted')</script>");
                    TextBox1.Text = "";
                }

                }
                else
                {
                    Response.Write("<script>alert('plese uplode file')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('plese uplode only image file')</script>");
            }


        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}