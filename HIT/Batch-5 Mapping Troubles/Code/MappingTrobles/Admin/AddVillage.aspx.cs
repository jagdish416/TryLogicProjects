using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddVillage : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlss_SelectedIndexChanged(object sender, EventArgs e)
    {

        {
            if (ddlss.SelectedItem.Text == "AndhraPradesh")
            {
                ddlsd.Items.Clear();
                ddlsd.Items.Add("--Select--");
                ddlsd.Items.Add("Krishna");
                ddlsd.Items.Add("Anathapur");
                ddlsd.Items.Add("EastGodavari");
            }
            else if (ddlss.SelectedItem.Text == "Telangana")
            {
                ddlsd.Items.Clear();
                ddlsd.Items.Add("--Select--");
                ddlsd.Items.Add("Nalgonda");
                ddlsd.Items.Add("Warangal");
                ddlsd.Items.Add("karimnagar");

            }

            else if (ddlss.SelectedItem.Text == "Karnataka")
            {
                ddlsd.Items.Clear();
                ddlsd.Items.Add("--Select--");
                ddlsd.Items.Add("Kolar");
                ddlsd.Items.Add("Raichur");
                ddlsd.Items.Add("Haveri");

            }
        }
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {

        try
        {
            String qry = "insert into vlglist values('" + ddlss.Text + "','" + ddlsd.Text + "','" + ddlsv.Text + "','" + txt1.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<Script>alert('New village Information  Succesfully Added')</script>");
                         }
            else
            {
                Response.Write("<Script>alert('No information added')</script>");
            }

        }

        catch (Exception ex)
        {

        }
    }
    protected void ddlsd_SelectedIndexChanged(object sender, EventArgs e)
    {

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
                else if (ddlsd.SelectedItem.Text == "karimnagar")
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
    }
    protected void ddlsv_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txt1_TextChanged(object sender, EventArgs e)
    {

    }
}