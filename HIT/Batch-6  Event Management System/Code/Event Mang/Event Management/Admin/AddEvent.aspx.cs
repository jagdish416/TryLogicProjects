using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_AddEvent : System.Web.UI.Page
{
    Sql obj = new Sql();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                if (ext.ToUpper() == ".PNG" || ext.ToUpper() == ".JPEG" || ext.ToUpper() == ".JPG")
                {
                    string path = "~/Images/" + FileUpload1.PostedFile.FileName;

                    string qry = "insert into Events values('" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + path + "','" + TextBox3.Text + "')";
                    int i = obj.InUpDel(qry);

                    if (i == 1)
                    {
                        FileUpload1.SaveAs(Server.MapPath(path));
                        Response.Write("<script>alert('Event Added Sucessfully...!!!')</script>");
                        TextBox1.Text = TextBox3.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Event is not Added...!!!')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Please Enter only Image file having extension .JPEG , .PNG or .JPG')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Please select the Image...!!!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}