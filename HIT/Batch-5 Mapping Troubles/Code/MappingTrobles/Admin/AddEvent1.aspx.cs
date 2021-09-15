using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddEvent1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj = new Class1();
    protected void addeventimgbtn(object sender, ImageClickEventArgs e)
    {
        try
        {
            string txt=System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (txt.ToUpper() == ".PNG" || txt.ToUpper() == ".JPEG" || txt.ToUpper() == ".JPG")
            {
                if(FileUpload1.HasFile)
                {
                    string filename1 = "~/Images/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(filename1));
                    string f1 = FileUpload1.FileName;
                    string qry = "insert into events values('" + vlg.Text + "','" + district.Text + "','" + state.Text + "','" + subject.Text + "','" + date.Text + "','" + filename1 + "','" + discription.Text + "')";
                    int i = obj.inupdel(qry);
                    if (i > 0)
                    {
                        Response.Write("<script>alert(' Insereted Succesfully !! ')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert(' Not Inserted !!  ')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('  Please Upload a file  ')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert(' Please Upload a image file  ')</script>");
            }
        }
        catch (Exception ex)
        {
            
            Response.Write("<script>alert('" + ex.Message + "')</script>");
 
        }
    }
}