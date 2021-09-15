using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;

public partial class Admin_Uploadfile : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        if (!IsPostBack)
        {
            Random rd = new Random();
            int i = rd.Next(9999);
            string x = i.ToString();
            txtid.Text = x;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".txt")
            {
                string filename = Path.Combine(Server.MapPath("~/Text"), FileUpload1.FileName);
                Session["f"] = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(filename);
                string temp = "";
                string[] keyword = txtkeypoint.Text.Split(',');
                for (int i = 0; i < keyword.Length; i++)
                {
                    string s = keyword[i];
                    FileStream file = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
                    StreamReader sr = new StreamReader(file);
                    while (!sr.EndOfStream)
                    {
                        temp = sr.ReadToEnd();
                        if (temp.Contains(s))
                        {
                            Regex r = new Regex(s);
                            temp = r.Replace(temp, "<a href='../User/" + s + ".aspx'>" + s + "</a>");
                            //string g = filename + temp;
                            break;
                        }

                    }
                    sr.Close();
                    File.WriteAllText(filename, temp);
                    TextBox5.Text = File.ReadAllText(filename);
                    Panel2.Visible = true;
                }
            }
            else
            {
                Response.Write("<script>alert('Please Upload Only Text Files')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Upload The File')</script>");
        }
       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //string f = Path.GetFileName(FileUpload1.FileName);
        string f1 = Session["f"].ToString();
        try
        {
            string qry = "insert into Filedetails values('" + txtid.Text + "','" + txtfname.Text + "','" + txtdate.Text + "','" + f1 + "','" + txtkeypoint.Text + "')";
            int j = obj.inupdel(qry);
            if (j > 0)
            {
                clear();
                Response.Write("<script>alert('File Has been Uploded Succesfully')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Not Yet Uploaded')</script>");
            }
        }
        catch (Exception ex1)
        {

            Response.Write(ex1.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        txtdate.Text = txtfname.Text = txtid.Text = txtkeypoint.Text = "";
    }
}