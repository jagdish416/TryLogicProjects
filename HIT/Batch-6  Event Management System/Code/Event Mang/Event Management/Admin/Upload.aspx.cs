using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        Sql obj = new Sql();
        string filename = System.IO.Path.GetFileName(e.FileName);
        string path = "~/Img/" + filename;
        AjaxFileUpload1.SaveAs(Server.MapPath(path));
       
        string qry = "insert into Gallery values('" + path + "')";
        int i = obj.InUpDel(qry);
        if (i > 0)
        {
            lblmsg.Text = "Images Inserted Succesfully";
            //Response.Write("<script>alert('Image Uploaded Sucessfully...')</script>");
        }
        else
        {
            lblmsg.Text = "Image Not Uploaded";
            // Response.Write("<script>alert('Image Not Uploaded...')</script>");

        }
    }
}