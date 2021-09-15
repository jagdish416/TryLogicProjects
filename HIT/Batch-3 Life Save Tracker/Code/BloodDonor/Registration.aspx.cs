using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Collections.Specialized;

public partial class Registration : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    int k;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
            {

                //string qry = "insert into Reg values('" + Session["name"].ToString() + "','" + Session["email"].ToString() + "','" + Session["mobile"].ToString() + "','" + Session["dob"].ToString() + "','" + Session["bloodgroup"].ToString() + "','" + Session["gender"].ToString() + "','" + Session["coun"].ToString() + "','" + Session["state"].ToString() + "','" + Session["City"].ToString() + "','" + Session["locality"].ToString() + "','" + Session["add"].ToString() + "','" + Session["lat"].ToString() + "','" + Session["lon"].ToString() + "','" + Session["pswd"].ToString() + "','" + Session["key"] + "')";
            string qry="insert into Reg values('"+txtname.Text+"','"+txtemail.Text+"','"+txtmobile.Text+"','"+txtdob.Text+"','"+DropDownList4.SelectedItem.Text+"','"+ddlgender.SelectedItem.ToString()+"','"+DropDownList1.SelectedItem.ToString()+"','"+DropDownList2.SelectedItem.ToString()+"','"+DropDownList5.SelectedItem.ToString()+"','"+DropDownList3.SelectedItem.ToString()+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox1.Text+"')";

                int i = obj.inupdel(qry);
                if (i > 0)
                {
                    Response.Write("<script>alert('Registration Completed Succesfully !!!')</script>");
                    Response.Redirect("~/Login.aspx");
                    txtname.Text = txtdob.Text = txtemail.Text = txtmobile.Text = TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Not Yet Registered !!!')</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        

        //Random rd2 = new Random();
        //k = rd2.Next(1000, 99999);
        //Session["key"] = k.ToString();
        //string aa = "Your OTP for BloodDonor registration is " + k.ToString();
        //String message = HttpUtility.UrlEncode("This is your message");
        //using (var wb = new WebClient())
        //{
        //    byte[] response = wb.UploadValues("http://api.textlocal.in/send/", new NameValueCollection()
        //        {
        //        {"username" , "sumanth9609@gmail.com"},
        //        {"hash" , "d07548c786f1e37a2bb55883a790c61c7880efc1"},
        //        {"numbers" ,txtmobile.Text},
        //        {"message" , aa},
        //        {"sender" , "TXTLCL"}
        //        });
        //    string result = System.Text.Encoding.UTF8.GetString(response);

        //}

        //Session["name"] = txtname.Text;
        //Session["email"] = txtemail.Text;
        //Session["mobile"] = txtmobile.Text;
        //Session["dob"] = txtdob.Text;
        //Session["bloodgroup"] = DropDownList4.SelectedItem.ToString();
        //Session["gender"] = ddlgender.SelectedItem.ToString();
        //Session["coun"] = DropDownList1.SelectedItem.ToString();
        //Session["state"] = DropDownList2.SelectedItem.ToString();
        //Session["locality"] = DropDownList3.SelectedItem.ToString();
        //Session["City"] = DropDownList5.SelectedItem.ToString();

        //Session["add"] = TextBox2.Text;
        //Session["lat"] = TextBox3.Text;
        //Session["lon"] = TextBox4.Text;
        //Session["pswd"] = TextBox1.Text;
        //Response.Write("<script>alert('OTP is sent to ur Mobile Number Please Enter')</script>");
        //Panel1.Visible = false;
        //Panel2.Visible = true;
       
    
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
            if (DropDownList2.SelectedIndex == 2)
            {
                DropDownList5.Items.Clear();
                DropDownList5.Items.Add("--SELECT--");
                       DropDownList5.Items.Add("Vishakapatnam");
                       DropDownList5.Items.Add("Vijayawada");
                       DropDownList5.Items.Add("Vijayanagaram");
                       DropDownList5.Items.Add("Rajamandry");

            }
            else if (DropDownList2.SelectedIndex == 3)
            {
                DropDownList5.Items.Clear();
                DropDownList5.Items.Add("--SELECT--");
                DropDownList5.Items.Add("Hyderabad");
                DropDownList5.Items.Add("Karimnagar");
                DropDownList5.Items.Add("Warangal");
                DropDownList5.Items.Add("Adhilabad");
            
            }
        }
       
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
            
       
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            if (DropDownList2.SelectedIndex == 3)
            {
                if (DropDownList5.SelectedIndex == 1)
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
                else if (DropDownList5.SelectedIndex == 2)
                {
                    DropDownList3.Items.Clear();
                    DropDownList3.Items.Add("--SELECT--");
                    DropDownList3.Items.Add("Vidyanagar");
                    DropDownList3.Items.Add("Ramnagar");
                    DropDownList3.Items.Add("SaiNagar");
                   
                }
            }
        }
    }
}