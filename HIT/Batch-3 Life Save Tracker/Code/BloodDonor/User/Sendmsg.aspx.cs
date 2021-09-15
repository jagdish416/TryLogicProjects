using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.IO;
using ASPSnippets;
using ASPSnippets.SmsAPI;
using System.Text;
using System.Net;
using System.IO;
using System.Text;
using System.Net.Mail;

using System.Collections.Specialized;

public partial class User_Sendmsg : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry = "select HospId,HosName,HosEmail,Landline,Address from HospReg where Locality='" + DropDownList3.SelectedItem.Text + "'";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('There is No Data !!!')</script>");
        }
    }
    //public void load()
    //{
    //    string qry = "SELECT  HosName FROM HospReg where Locality='" + DropDownList3.SelectedItem.Text + "'";
    //    DataSet ds = obj.select(qry);

    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        foreach (DataRow rd in ds.Tables[0].Rows)
    //        {


    //            DropDownList5.Items.Add(rd["HosName"].ToString());


    //        }
    //    }
    //}
    //protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    DropDownList5.Items.Clear();
    //    DropDownList5.Items.Insert(0, new ListItem("--Select--", "0"));
    //    load();
    //}
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
                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("--SELECT--");
                DropDownList6.Items.Add("Vishakapatnam");
                DropDownList6.Items.Add("Vijayawada");
                DropDownList6.Items.Add("Vijayanagaram");
                DropDownList6.Items.Add("Rajamandry");

            }
            else if (DropDownList2.SelectedIndex == 3)
            {
                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("--SELECT--");
                DropDownList6.Items.Add("Hyderabad");
                DropDownList6.Items.Add("Karimnagar");
                DropDownList6.Items.Add("Warangal");
                DropDownList6.Items.Add("Adhilabad");

            }
        }//if (DropDownList1.SelectedIndex == 1)
        //{
        //    if (DropDownList2.SelectedIndex == 1)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("A");
        //        DropDownList3.Items.Add("B");
        //        DropDownList3.Items.Add("C");

        //    }
        //    else if (DropDownList2.SelectedIndex == 2)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("D");
        //        DropDownList3.Items.Add("E");
        //        DropDownList3.Items.Add("F");
        //    }
        //    else if (DropDownList2.SelectedIndex == 3)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("AMEERPET");
        //        DropDownList3.Items.Add("SECUNDERABAD");
        //        DropDownList3.Items.Add("BONGULUR");
        //        DropDownList3.Items.Add("BEGUMPET");
        //        DropDownList3.Items.Add("LBNAGAR");
        //        DropDownList3.Items.Add("UPPAL");

        //    }
        //    else if (DropDownList2.SelectedIndex == 4)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("H");
        //        DropDownList3.Items.Add("I");
        //        DropDownList3.Items.Add("J");
        //        DropDownList3.Items.Add("K");
        //        DropDownList3.Items.Add("L");
        //        DropDownList3.Items.Add("M");

        //    }
        //    else if (DropDownList2.SelectedIndex == 5)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("N");
        //        DropDownList3.Items.Add("O");
        //        DropDownList3.Items.Add("P");
        //        DropDownList3.Items.Add("Q");
        //        DropDownList3.Items.Add("R");
        //        DropDownList3.Items.Add("S");

        //    }

        //}
        //else if (DropDownList1.SelectedIndex == 2)
        //{
        //    if (DropDownList2.SelectedIndex == 1)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("N");
        //        DropDownList3.Items.Add("O");
        //        DropDownList3.Items.Add("P");
        //    }
        //    else if (DropDownList2.SelectedIndex == 2)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("A");
        //        DropDownList3.Items.Add("B");
        //        DropDownList3.Items.Add("C");
        //    }
        //    else if (DropDownList2.SelectedIndex == 3)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("D");
        //        DropDownList3.Items.Add("E");
        //        DropDownList3.Items.Add("Q");
        //    }
        //}
        //else if (DropDownList1.SelectedIndex == 3)
        //{
        //    if (DropDownList2.SelectedIndex == 1)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("X");
        //        DropDownList3.Items.Add("Y");
        //        DropDownList3.Items.Add("Z");
        //    }
        //    else if (DropDownList2.SelectedIndex == 2)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("N");
        //        DropDownList3.Items.Add("O");
        //        DropDownList3.Items.Add("P");
        //    }
        //}
        //else if (DropDownList1.SelectedIndex == 4)
        //{
        //    if (DropDownList2.SelectedIndex == 1)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("A");
        //        DropDownList3.Items.Add("B");
        //        DropDownList3.Items.Add("C");
        //    }
        //    else if (DropDownList2.SelectedIndex == 2)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("N");
        //        DropDownList3.Items.Add("O");
        //        DropDownList3.Items.Add("P");
        //    }
        //}
        //else if (DropDownList1.SelectedIndex == 5)
        //{
        //    if (DropDownList2.SelectedIndex == 1)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("A");
        //        DropDownList3.Items.Add("B");
        //        DropDownList3.Items.Add("C");
        //    }
        //    else if (DropDownList2.SelectedIndex == 2)
        //    {
        //        DropDownList3.Items.Clear();
        //        DropDownList3.Items.Add("--SELECT--");
        //        DropDownList3.Items.Add("N");
        //        DropDownList3.Items.Add("O");
        //        DropDownList3.Items.Add("P");
        //    }
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gr = (GridViewRow)btn.NamingContainer;
        Label lbl = (Label)gr.FindControl("lblid");
        Label lbl1 = (Label)gr.FindControl("lblname");
        Label lbl2 = (Label)gr.FindControl("lblmobno");
        Label lbl3 = (Label)gr.FindControl("lblgroup");
        Label lbl4 = (Label)gr.FindControl("lbladd");

        string qry = "select * from Reg where UserId ='" + Session["Studid"].ToString() + "'";
        DataSet ds = obj.select(qry);
        string s = ds.Tables[0].Rows[0][1].ToString();
        string s1 = ds.Tables[0].Rows[0][3].ToString();
        string s3 = ds.Tables[0].Rows[0][2].ToString();
        string s2 = ds.Tables[0].Rows[0][11].ToString();
        string y = "From Life Saver Tracker Name of User is :" + s.ToString() + " and MobileNo is : " + s1.ToString() + " and Address is :" + s2.ToString();


        //string qry = "select HosName,Landline from HospReg where HosName='" +  + "'";
        //DataSet ds = obj.select(qry);
        //string s = ds.Tables[0].Rows[0][0].ToString();
        //string s1 = ds.Tables[0].Rows[0][1].ToString();

        //string y = "Hospital Name is : " + s.ToString() + " and LandLine Number is  : " + s1.ToString();
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("mayorpharmacy3@gmail.com");
        msg.IsBodyHtml = true;
        msg.To.Add(new MailAddress(s3));
        msg.Subject = "A Mail Regarding  Password";
        msg.Body = y;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        NetworkCredential nc = new NetworkCredential("mayorpharmacy3@gmail.com", "pharmacy333");
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = nc;
        smtp.EnableSsl = true;
        smtp.Send(msg);
        Response.Write("<script>alert('Mail Sent Successfully')</script>");

       


        //String message = HttpUtility.UrlEncode("This is your message");
        //using (var wb = new WebClient())
        //{
        //    byte[] response = wb.UploadValues("http://api.textlocal.in/send/", new NameValueCollection()
        //        {
        //        {"username" , "sumanth9609@gmail.com"},
        //        {"hash" , "d07548c786f1e37a2bb55883a790c61c7880efc1"},
        //        {"numbers" ,lbl2.Text},
        //        {"message" , y},
        //        {"sender" , "TXTLCL"}
        //        });
        //    string result = System.Text.Encoding.UTF8.GetString(response);

        //}



    }


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            if (DropDownList2.SelectedIndex == 3)
            {
                if (DropDownList6.SelectedIndex == 1)
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
                else if (DropDownList6.SelectedIndex == 2)
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

   