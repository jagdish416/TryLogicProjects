using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class User_Upload : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = Path.GetExtension(FileUpload1.FileName);
            string filename = Path.GetFileName(FileUpload1.FileName);
            string query = "insert into tbl_File values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + filename + "', '" +(Session["USerId"]).ToString() + "')";
            int i = c.InsUpDelete(query);
            if (i > 0)
            {
                FileUpload1.SaveAs(Server.MapPath("~/files/" + filename));
                Response.Write("<script>alert('File Uploaded Successfully')</script>");
                string input = Server.MapPath("~/files/" + filename);
                string output = Server.MapPath("~/Efiles/" + "_enc" + filename);
                string EncryptionKey = TextBox2.Text.Trim();
                c.Encrypt(input, output, EncryptionKey);
            }
            else
            {
                Response.Write("<script>alert('File Uploaded Failure')</script>");
            }

        }
    }
}