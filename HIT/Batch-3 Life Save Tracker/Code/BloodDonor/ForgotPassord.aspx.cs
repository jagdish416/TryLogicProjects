using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassord : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "select Password from Reg where Email='" + TextBox1.Text + "'";
            DataSet ds = obj.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("mayorpharmacy3@gmail.com");
                msg.IsBodyHtml = true;
                msg.To.Add(new MailAddress(TextBox1.Text));
                msg.Subject = "A Mail Regarding  Password";
                msg.Body = "Your Password from Blood Donor Tarcker Website is :  " + ds.Tables[0].Rows[0][0].ToString();
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential nc = new NetworkCredential("mayorpharmacy3@gmail.com", "pharmacy333");
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = nc;
                smtp.EnableSsl = true;
                smtp.Send(msg);
                Response.Write("<script>alert('Mail Sent Successfully')</script>");

                TextBox1.Text = "";

            }
            else
            {
                //lblmsg.Text = "MailId Doesn't Exist";
                Response.Write("<script>alert('MailId not existed')</script>");

            }
        }
        catch (Exception)
        {

            //lblmsg.Text = "Failure in sending Mail";
            Response.Write("<script>alert('Failure in sending Mail')</script>");
        }
    }
}