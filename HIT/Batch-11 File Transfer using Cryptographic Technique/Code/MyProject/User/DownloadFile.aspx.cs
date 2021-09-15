using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class User_DownloadFile : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        if (txtKey.Text.Trim() != "")
        {
            int fileId = Convert.ToInt32(Session["Fid"]);
            string userId = Session["Uid"].ToString();

            string query = "select FilePath from tbl_File where FileId=" + fileId + " and UserId='" + userId + "' and EncryptionKey=" + txtKey.Text;
            DataSet ds = new DataSet();
            ds = c.GetDetails(query);
            if (ds.Tables[0].Rows.Count > 0)
            {


                string input = Server.MapPath("~/Efiles/" + "_enc" + ds.Tables[0].Rows[0][0].ToString());
                string output = Server.MapPath("~/files/" + ds.Tables[0].Rows[0][0].ToString());
                string EncryptionKey = txtKey.Text;
                c.Decrypt(input, output, EncryptionKey);
                Response.ContentType = ContentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
                Response.WriteFile(output);
                Response.End();
            }
            else
            {
                Response.Write("<script>alert('Data not found')</script>");
            }
        }
    }
}