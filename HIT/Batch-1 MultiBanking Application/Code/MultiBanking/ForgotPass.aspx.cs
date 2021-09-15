using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedItem.Text == "Banker")
            {
                string qry = "select Password from Banker where Email='" + txtemail.Text + "'";
                DataSet ds = obj.Display(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("mayorpharmacy3@gmail.com");
                    msg.IsBodyHtml = true;
                    msg.To.Add(new MailAddress(txtemail.Text));
                    msg.Subject = "A Mail Regarding  Password";
                    msg.Body = "Your Password from MBA Website is :  " + ds.Tables[0].Rows[0][0].ToString();
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    NetworkCredential nc = new NetworkCredential("mayorpharmacy3@gmail.com", "pharmacy333");
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = nc;
                    smtp.EnableSsl = true;
                    smtp.Send(msg);
                    Response.Write("<script>alert('Mail Sent Successfully')</script>");

                    txtemail.Text = "";

                }
                else
                {
                    //lblmsg.Text = "MailId Doesn't Exist";
                    Response.Write("<script>alert('MailId not existed')</script>");
                }
            }

            else if (DropDownList1.SelectedItem.Text == "Customer")
            {
                string qry = "select Password from Banker where Email='" + txtemail.Text + "'";
                DataSet ds = obj.Display(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("mayorpharmacy3@gmail.com");
                    msg.IsBodyHtml = true;
                    msg.To.Add(new MailAddress(txtemail.Text));
                    msg.Subject = "A Mail Regarding  Password";
                    msg.Body = "Your Password from MBA Website is :  " + ds.Tables[0].Rows[0][0].ToString();
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    NetworkCredential nc = new NetworkCredential("mayorpharmacy3@gmail.com", "pharmacy333");
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = nc;
                    smtp.EnableSsl = true;
                    smtp.Send(msg);
                    Response.Write("<script>alert('Mail Sent Successfully')</script>");

                    txtemail.Text = "";

                }
                else
                {
                    //lblmsg.Text = "MailId Doesn't Exist";
                    Response.Write("<script>alert('MailId not existed')</script>");
                }
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        

    }
}