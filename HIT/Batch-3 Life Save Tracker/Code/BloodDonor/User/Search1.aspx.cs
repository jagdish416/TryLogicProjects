using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Net.Mail;

public partial class User_Search1 : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string markers = GetMarkers1();
        Literal1.Text = @"
     <script type='text/javascript'>
     function initialize() {
 
     var mapOptions = {
     center: new google.maps.LatLng(21.0000,78.0000),
     zoom: 5,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     };
 
     var myMap = new google.maps.Map(document.getElementById('mapArea'),
     mapOptions);"
        + markers +
        @"}
     </script>";
        string qry1 = "select Name,Email,Address,MobileNo from Reg where Locality='" + DropDownList3.SelectedItem.ToString() + "'";
        DataSet ds = obj.select(qry1);
            if(ds.Tables[0].Rows.Count>0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
               
            }
        else
            {
                Response.Write("<script>alert('There is NO Data ')</script>");
            }

    }
    protected string GetMarkers1()
    {
        string markers = "";
        using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BloodDonor;Integrated Security=True"))
        {
            SqlCommand cmd = new SqlCommand("select Locality,latiitude,longitude,Address from Reg where Locality='" + DropDownList3.SelectedItem.Text + "' and BloodGroup='" + DropDownList4.SelectedItem.Text + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;

            while (reader.Read())
            {
                i++;
                markers +=
                @"var marker" + i.ToString() + @" = new google.maps.Marker({
              position: new google.maps.LatLng(" + reader["latiitude"].ToString() + ", " +
                reader["longitude"].ToString() + ")," +
                @"map: myMap,
title:'" + reader["Address"].ToString() + "' });";


            }
        }
        return markers;
    }
    protected string GetMarkers()
    {
        string markers = "";
        using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BloodDonor;Integrated Security=True"))
        {
            SqlCommand cmd = new SqlCommand("select Locality,latiitude,longitude,Address,HosName from HospReg where Locality='" + DropDownList3.SelectedItem.Text + "' ", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;

            while (reader.Read())
            {
                i++;
                markers +=
                @"var marker" + i.ToString() + @" = new google.maps.Marker({
              position: new google.maps.LatLng(" + reader["latiitude"].ToString() + ", " +
                reader["longitude"].ToString() + ")," +
                @"map: myMap,
title:'" + reader["HosName"].ToString() + "' });";


            }
        }
        return markers;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string markers = GetMarkers();
        Literal1.Text = @"
     <script type='text/javascript'>
     function initialize() {
 
     var mapOptions = {
     center: new google.maps.LatLng(21.0000,78.0000),
     zoom: 5,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     };
 
     var myMap = new google.maps.Map(document.getElementById('mapArea'),
     mapOptions);"
        + markers +
        @"}
     </script>";

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
        //if (DropDownList1.SelectedIndex == 1)
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn=(Button)sender;
        GridViewRow gr=(GridViewRow)btn.NamingContainer;
        Label lbl=(Label)gr.FindControl("Label6");

        string y = " From Life Saver Tracker , Name is : " + Session["name"].ToString() + " and  Number is  : " + Session["pno"].ToString()+", Address is :"+Session["add"].ToString();
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("mayorpharmacy3@gmail.com");
        msg.IsBodyHtml = true;
        msg.To.Add(new MailAddress(lbl.Text));
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
        //        {"numbers" ,lbl.Text},
        //        {"message" , y},
        //        {"sender" , "TXTLCL"}
        //        });
        //    string result = System.Text.Encoding.UTF8.GetString(response);

        //}

    }
}

