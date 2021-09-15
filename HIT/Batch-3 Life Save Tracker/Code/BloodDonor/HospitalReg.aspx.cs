using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class HospitalReg : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into HospReg values('" + txtname.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txtlandline.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            int i = obj.inupdel(qry);
            if (i > 0)
            {
                Response.Write("<script>alert('Hospital registration Completed Succesfully !!!')</script>");
                txtname.Text = txtemail.Text = txtmobile.Text = txtlandline.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Not Yet Completed !!!')</script>");
            }
        }
        catch (Exception ex)
        {
            
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--SELECT--");
            DropDownList2.Items.Add("DELHI");
            DropDownList2.Items.Add("ANDHRA");
            DropDownList2.Items.Add("TELANGANA");
            DropDownList2.Items.Add("PUNE");
            DropDownList2.Items.Add("BANGLORE");
            DropDownList2.Items.Add("CHENNAI");
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--SELECT--");
            DropDownList2.Items.Add("A");
            DropDownList2.Items.Add("B");
            DropDownList2.Items.Add("C");
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--SELECT--");
            DropDownList2.Items.Add("D");
            DropDownList2.Items.Add("E");
        }
        else if (DropDownList1.SelectedIndex == 4)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--SELECT--");
            DropDownList2.Items.Add("F");
            DropDownList2.Items.Add("G");
        }
        else if (DropDownList1.SelectedIndex == 5)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--SELECT--");
            DropDownList2.Items.Add("H");
            DropDownList2.Items.Add("I");

        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            if (DropDownList2.SelectedIndex == 1)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("A");
                DropDownList3.Items.Add("B");
                DropDownList3.Items.Add("C");

            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("D");
                DropDownList3.Items.Add("E");
                DropDownList3.Items.Add("F");
            }
            else if (DropDownList2.SelectedIndex == 3)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("AMEERPET");
                DropDownList3.Items.Add("SECUNDERABAD");
                DropDownList3.Items.Add("BONGULUR");
                DropDownList3.Items.Add("BEGUMPET");
                DropDownList3.Items.Add("LBNAGAR");
                DropDownList3.Items.Add("UPPAL");

            }
            else if (DropDownList2.SelectedIndex == 4)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("H");
                DropDownList3.Items.Add("I");
                DropDownList3.Items.Add("J");
                DropDownList3.Items.Add("K");
                DropDownList3.Items.Add("L");
                DropDownList3.Items.Add("M");

            }
            else if (DropDownList2.SelectedIndex == 5)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("N");
                DropDownList3.Items.Add("O");
                DropDownList3.Items.Add("P");
                DropDownList3.Items.Add("Q");
                DropDownList3.Items.Add("R");
                DropDownList3.Items.Add("S");

            }

        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            if (DropDownList2.SelectedIndex == 1)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("N");
                DropDownList3.Items.Add("O");
                DropDownList3.Items.Add("P");
            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("A");
                DropDownList3.Items.Add("B");
                DropDownList3.Items.Add("C");
            }
            else if (DropDownList2.SelectedIndex == 3)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("D");
                DropDownList3.Items.Add("E");
                DropDownList3.Items.Add("Q");
            }
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            if (DropDownList2.SelectedIndex == 1)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("X");
                DropDownList3.Items.Add("Y");
                DropDownList3.Items.Add("Z");
            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("N");
                DropDownList3.Items.Add("O");
                DropDownList3.Items.Add("P");
            }
        }
        else if (DropDownList1.SelectedIndex == 4)
        {
            if (DropDownList2.SelectedIndex == 1)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("A");
                DropDownList3.Items.Add("B");
                DropDownList3.Items.Add("C");
            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("N");
                DropDownList3.Items.Add("O");
                DropDownList3.Items.Add("P");
            }
        }
        else if (DropDownList1.SelectedIndex == 5)
        {
            if (DropDownList2.SelectedIndex == 1)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("A");
                DropDownList3.Items.Add("B");
                DropDownList3.Items.Add("C");
            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("--SELECT--");
                DropDownList3.Items.Add("N");
                DropDownList3.Items.Add("O");
                DropDownList3.Items.Add("P");
            }
        }
        
    }
}