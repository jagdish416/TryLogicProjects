using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_StoriesSrch : System.Web.UI.Page
{
    classprj obj = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstate.SelectedItem.Text == "Telangana")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--SELECT--");
            ddlcity.Items.Add("Hyderabad");
            ddlcity.Items.Add("Warangal");
            ddlcity.Items.Add("Karimnagar");
            ddlcity.Items.Add("Nizambad");
            ddlcity.Items.Add("SuryaPet");
        }
        else if (ddlstate.SelectedItem.Text == "AndhraPradesh")
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
            string qry1 = "select * from post where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Location='" + ddllocation.SelectedItem.Text + "' and Status='" + Session["Id"].ToString() + "'";
            DataSet ds1 = obj.select(qry1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                string qry = "select * from post where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Location='" + ddllocation.SelectedItem.Text + "' and Follow='Follow'and Status='" + Session["Id"].ToString() + "'";
                DataSet ds = obj.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string qry6 = "select * from post where Location='" + ddllocation.SelectedItem.Text + "' and Status='Empty'";
                    DataSet ds6 = obj.select(qry6);
                    if (ds6.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds6;
                        GridView1.DataBind();
                        lblmsg.Text = ddllocation.SelectedItem.Text;
                        Button2.Text = "Unfollow";
                    }
                    else
                    {

                    }
                }
                else
                {
                    string qry7 = "select * from post where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Location='" + ddllocation.SelectedItem.Text + "' and Follow='Unfollow'and Status='" + Session["Id"].ToString() + "'";
                    DataSet ds7 = obj.select(qry7);
                    if (ds7.Tables[0].Rows.Count > 0)
                    {
                        string qry6 = "select * from post where Location='" + ddllocation.SelectedItem.Text + "' and Status='Empty'";
                        DataSet ds6 = obj.select(qry6);
                        if (ds6.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds6;
                            GridView1.DataBind();
                            lblmsg.Text = ddllocation.SelectedItem.Text;
                            Button2.Text = "Follow";
                        }
                    }

                }
            }
            else
            {
                string qry = "select * from post where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Location='" + ddllocation.SelectedItem.Text + "' ";
                DataSet ds = obj.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblmsg.Text = ddllocation.SelectedItem.Text;
                    Button2.Text = "Follow";
                }
                else
                {

                    Response.Write("<script>alert('There is NO Data !!')</script>");
                }
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry1 = "select * from post where State='" + ddlstate.SelectedItem.Text + "' and City='" + ddlcity.SelectedItem.Text + "' and Location='" + ddllocation.SelectedItem.Text + "' and Status='" + Session["Id"].ToString() + "'";
        DataSet ds1 = obj.select(qry1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            string a = ds1.Tables[0].Rows[0][6].ToString();
            if (a == "Unfollow")
            {
                string qry2 = "update post set Follow='Follow' where Status='" + Session["Id"].ToString() + "' and Location='" + ddllocation.SelectedItem.Text + "' ";
                int j = obj.inupdel(qry2);
                if (j > 0)
                {
                    Button2.Text = "Unfollow";
                }
                else
                {

                }

            }
            else
            {
                string qry2 = "update post set Follow='Unfollow' where Status='" + Session["Id"].ToString() + "' and Location='" + ddllocation.SelectedItem.Text + "' ";
                int j = obj.inupdel(qry2);
                if (j > 0)
                {
                    Button2.Text = "Follow";
                }
                else
                {

                }
            }



        }
        else
        {
            string qry = "insert into post values('" + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + ddllocation.SelectedItem.Text + "','','','Unfollow','" + Session["Id"].ToString() + "','" + DateTime.Now.ToString("yyy-mm-dd") + "')";


            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Button2.Text = "Unfollow";
            }
            else
            {

            }


        }
    }
}