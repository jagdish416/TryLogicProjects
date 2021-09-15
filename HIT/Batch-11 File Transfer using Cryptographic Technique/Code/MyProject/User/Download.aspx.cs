using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class User_Download : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "select * from tbl_File where UserId='" + Session["USerId"].ToString() + "'";
            DataSet ds = c.GetDetails(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Session["FileKey"] = ds.Tables[0].Rows[0][2];
                gvDownload.DataSource = ds.Tables[0];
                gvDownload.DataBind();
            }
        }
    }
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)lnk.NamingContainer;
        Label lblFileID = (Label)gr.FindControl("lblFileID");
        Label lblEKey = (Label)gr.FindControl("lblEKey");
        Label lblUserName = (Label)gr.FindControl("lblUserName");
        Session["FileKey"] = lblEKey.Text;
        Session["Fid"] = lblFileID.Text;
        Session["Uid"] = lblUserName.Text;
         string qry = "select * from tbl_File where UserId='"+Session["Uid"]+"' ";

        DataSet ds = c.GetDetails(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
           // int i=Convert.ToInt32(Session["FileKey"].ToString();
            
            //string email = ds.Tables[0].Rows[0][4].ToString();
            string email = Session["username"].ToString();
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("mayorpharmacy3@gmail.com");
            msg.To.Add(new MailAddress(email));
            msg.Subject = "Regarding The Encryption key";
            msg.Body = " Your Encryption Key is : "+Session["FileKey"];
            SmtpClient mysmtpclient = new SmtpClient();
            System.Net.NetworkCredential mycredential = new System.Net.NetworkCredential("mayorpharmacy3@gmail.com", "pharmacy333");
            mysmtpclient.Host = "smtp.gmail.com";
            mysmtpclient.Port = 25;
            mysmtpclient.EnableSsl = true;
            mysmtpclient.UseDefaultCredentials = false;
            mysmtpclient.Credentials = mycredential;
            mysmtpclient.Send(msg);
            msg.Dispose();
            Response.Redirect("~/User/DownloadFile.aspx");
            //btn.Text = "Completed";
        }
    
    }
}