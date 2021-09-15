using Microsoft.Office.Interop.Word;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UpdateFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    Class1 obj=new Class1();
    protected void Button1_Click(object sender, EventArgs e)
    {
           try
        {
            string txt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (txt.ToUpper() == ".TXT")
            {
                if (FileUpload1.HasFile)
                {

                    string filename1 = "~/Files/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(filename1));
                    string f1 = FileUpload1.FileName;
                    string sr = File.ReadAllText(Server.MapPath("~/Files/" + FileUpload1.FileName));
                    if (sr != null)
                    {
                        string qry1 = "select Content1 from FileUpload";
                        DataSet ds = obj.select(qry1);
                        if (ds != null)
                        {
                            int h = ds.Tables[0].Rows.Count;
                            int dm = 0;
                            Boolean am = true;
                            for (int i = 0; i < h; i++)
                            {
                                string a = ds.Tables[0].Rows[i][0].ToString();




                                if (a.ToString() == sr.ToString())
                                {

                                    Response.Write("<script>alert(' Already Exit !!!')</script>");
                                    dm++;
                                    am = false;
                                }


                            }
                            if (dm != 1)
                                if (am != false)
                                {
                                    string s1 = sr.ToString();
                                    string qry = "insert into FileUpload values('" + f1.ToString() + "','" + filename1.ToString() + "','" + TextBox1.Text + "','" + s1 + "')";
                                    int j = obj.inupdel(qry);
                                    if (j > 0)
                                    {
                                        Response.Write("<script>alert('File Uploaded Succesfully')</script>");
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Not Yet Uploaded !!!')</script>");
                                    }
                                    //TextBox1.Text = sr.ToString();
                                    //string qry = "insert into Dedup values('" + ss + "','" + TextBox1.Text + "')";
                                    //int x = obj.inupdel(qry);
                                }



                        }
                    }
                }
            }


            else if (txt.ToUpper() == ".DOCX" || txt.ToUpper() == ".DOC")
            {
                if (FileUpload1.HasFile)
                {

                    string filename2 = "~/Files/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(filename2));
                    string f2 = FileUpload1.FileName;
                    ApplicationClass wordApp = new ApplicationClass();
                    object file = Server.MapPath(filename2);

                    object nullobj = System.Reflection.Missing.Value;
                    Document doc = wordApp.Documents.Open(ref file,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj,
                                                              ref nullobj);
                    Document doc1 = wordApp.ActiveDocument;
                    string sr1 = doc1.Content.Text;

                    if (sr1 != null)
                    {
                        string qry1 = "select Content1 from FileUpload";
                        DataSet ds = obj.select(qry1);
                        if (ds != null)
                        {
                            int h = ds.Tables[0].Rows.Count;
                            int dm = 0;
                            Boolean am = true;
                            for (int i = 0; i < h; i++)
                            {
                                string a = ds.Tables[0].Rows[i][0].ToString();




                                if (a.ToString() == sr1.ToString())
                                {

                                    Response.Write("<script>alert(' Already Exit !!!')</script>");
                                    dm++;
                                    am = false;
                                }


                            }
                            if (dm != 1)
                                if (am != false)
                                {
                                    string s1 = sr1.ToString();
                                    string qry = "insert into FileUpload values('" + f2.ToString() + "','" + filename2.ToString() + "','" + TextBox1.Text + "','" + s1 + "')";
                                    int j = obj.inupdel(qry);
                                    if (j > 0)
                                    {
                                        Response.Write("<script>alert('File Uploaded Succesfully')</script>");
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Not Yet Uploaded !!!')</script>");
                                    }
                                    //TextBox1.Text = sr.ToString();
                                    //string qry = "insert into Dedup values('" + ss + "','" + TextBox1.Text + "')";
                                    //int x = obj.inupdel(qry);
                                }

                        }

                    }
                }
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }

    }
