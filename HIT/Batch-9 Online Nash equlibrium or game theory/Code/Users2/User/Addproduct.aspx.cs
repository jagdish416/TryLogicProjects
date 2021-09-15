using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class User_Addproduct : System.Web.UI.Page
{
    bal obj = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "~/img/" + FileUpload1.FileName;
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/img/" + filename));
            string query = "insert into tbl_file values('" + txtfilename.Text + "', '" + txtdescription.Text + "', '" + path + "')";
            int i = obj.InsUpDel(query);
            if (i > 0)
            {
                Response.Write("<script>alert('File Uploaded Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('File Uploading Failure')</script>");
            }

        }
    }
}