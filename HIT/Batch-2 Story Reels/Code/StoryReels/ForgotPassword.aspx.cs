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

public partial class ForgotPassword : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "select Pass from Register where EmailID='" + TextBox1.Text + "'";
            DataSet ds = cs.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("mayorpharmacy3@gmail.com");
                msg.IsBodyHtml = true;
                msg.To.Add(new MailAddress(TextBox1.Text));
                msg.Subject = "A Mail Regarding  Password";
                msg.Body = "Your Password from RentalXpress Website is :  " + ds.Tables[0].Rows[0][0].ToString();
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