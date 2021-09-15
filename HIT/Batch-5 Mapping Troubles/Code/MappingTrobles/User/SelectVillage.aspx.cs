using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_SelectVillage : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UpdatePanel1.Visible = false;
            UpdatePanel2.Visible = false;
            UpdatePanel3.Visible = false;
        }

    }
    Class1 obj = new Class1();
    protected void ddlss_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlss.SelectedItem.Text == "AndhraPradesh")
        {
            ddlsd.Items.Clear();
            ddlsd.Items.Add("--Select");
            ddlsd.Items.Add("Krishna");
            ddlsd.Items.Add("Anathapur");
            ddlsd.Items.Add("EastGodavari");
        }
        else if (ddlss.SelectedItem.Text == "Telangana")
        {
            ddlsd.Items.Clear();
            ddlsd.Items.Add("--Select");
            ddlsd.Items.Add("Nalgonda");
            ddlsd.Items.Add("Warangal");
            ddlsd.Items.Add("Karimnagar");

        }

        else if (ddlss.SelectedItem.Text == "Karnataka")
        {
            ddlsd.Items.Clear();
            ddlsd.Items.Add("--Select");
            ddlsd.Items.Add("Kolar");
            ddlsd.Items.Add("Raichur");
            ddlsd.Items.Add("Haveri");

        }
    }
    protected void lnkb1_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Visible = true;
        UpdatePanel2.Visible = true;
        UpdatePanel3.Visible = false;
    }
    protected void ddlsd_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlss.SelectedItem.Text == "AndhraPradesh")
        {
            if (ddlsd.SelectedItem.Text == "Krishna")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Gudivada");
                ddlsv.Items.Add("Nuzvid");
                ddlsv.Items.Add("Vijayawada");
                ddlsv.Items.Add("Gannavaram");
            }
            else if (ddlsd.SelectedItem.Text == "Anathapur")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Alamuru");
                ddlsv.Items.Add("Obulampally");
                ddlsv.Items.Add("Kurumamidi");
                ddlsv.Items.Add("Malliraeddypalli");
            }
            else if (ddlsd.SelectedItem.Text == "EastGodavari")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Amalapuram");
                ddlsv.Items.Add("Rajamandry");
                ddlsv.Items.Add("Tuni");
                ddlsv.Items.Add("Thallarevu");
            }
        }
        else if (ddlss.SelectedItem.Text == "Telangana")
        {
            if (ddlsd.SelectedItem.Text == "Nalgonda")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Aler");
                ddlsv.Items.Add("Bhongir");
                ddlsv.Items.Add("Vemulakonda");
                ddlsv.Items.Add("Yadadri");
            }
            else if (ddlsd.SelectedItem.Text == "Warangal")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Jangon");
                ddlsv.Items.Add("Bhupalapally");
                ddlsv.Items.Add("Hanmakonda");
                ddlsv.Items.Add("Parakala");
            }
            else if (ddlsd.SelectedItem.Text == "Karimnagar")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Kancharla");
                ddlsv.Items.Add("Siricilla");
                ddlsv.Items.Add("Ramagundam");
                ddlsv.Items.Add("Gopalpur");
            }

        }
        else if (ddlss.SelectedItem.Text == "Karnataka")
        {
            if (ddlsd.SelectedItem.Text == "Kolar")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Ahanya");
                ddlsv.Items.Add("Mulluru");
                ddlsv.Items.Add("PalarNagar");
                ddlsv.Items.Add("Tayalur");
            }
            else if (ddlsd.SelectedItem.Text == "Raichur")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Jalahalli");
                ddlsv.Items.Add("Galaga");
                ddlsv.Items.Add("Arkera");
                ddlsv.Items.Add("Hosur");
            }
            else if (ddlsd.SelectedItem.Text == "Haveri")
            {
                ddlsv.Items.Clear();
                ddlsv.Items.Add("Kaginale");
                ddlsv.Items.Add("Hanagal");
                ddlsv.Items.Add("Belur");
                ddlsv.Items.Add("Kalasur");
            }

        }
    }


    protected void ddlsv_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string qry = "select * from vlglist where village ='" + ddlsv.SelectedItem.Text + "'";
            DataSet ds = obj.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtviewvillage.Text = ds.Tables[0].Rows[0][4].ToString();
            }
            else
            {
                Response.Write("<script>alert('No Data Found !!')</script>");
            }
        
    }
   
    protected void txtviewvillage_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lnkbtn2_Click(object sender, EventArgs e)
    {
        if (ddlsv.SelectedItem.Text == "" || ddlsd.SelectedItem.Text == "")
        {
            Response.Write("<script>alert('Please Select Village or City !!')</script>");
        }
        else
        {
            UpdatePanel1.Visible = false;
            string qry = "select * from vlgprblm  where village ='" + ddlsv.SelectedItem.Text + "'";
            DataSet ds = obj.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                UpdatePanel3.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('No Data Found !!')</script>");
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        UpdatePanel1.Visible = false;
        UpdatePanel3.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       

        try
        {

            String qry = "insert into vlgprblm values('" + Session["username"].ToString() + "','" + ddlss.SelectedItem.Text + "','" + ddlsd.SelectedItem.Text + "','" + ddlsv.SelectedItem.Text + "','" + txtsub.Text + "','" + txtprblm.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                String message ="alert('New Problem Succesfuuly added')";
                ScriptManager.RegisterClientScriptBlock((sender as Control),this.GetType(),"alert",message,true);
                
            }
            else
            {
                String message = "alert('New Problem Not Yet  added')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }

        }

        catch (Exception ex)
        {

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Visible = false;
        UpdatePanel3.Visible = true;
        UpdatePanel2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {

            String qry = "insert into prblmresponce values('" + Session["Id"].ToString() + "','" + Session["username"].ToString() + "','" + ddlss.SelectedItem.Text + "','" + ddlsd.SelectedItem.Text + "','" + ddlsv.SelectedItem.Text + "','" + txtsub.Text + "','" + restxt.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                String message = "alert('Problems Respond Succesfuuly Added')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                 }
            else
            {
                String message = "alert('Problems Respond Not Yet Added')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);   
            }

        }

        catch (Exception ex)
        {

        }
    }
}
    
