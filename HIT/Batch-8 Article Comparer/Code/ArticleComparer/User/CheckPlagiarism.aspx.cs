using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;
using Microsoft.Office.Interop.Word;

public partial class User_CheckPlagiarism : System.Web.UI.Page
{
    public float co, co1;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {
            string txt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (txt.ToUpper() == ".TXT")
            {
                if (FileUpload1.HasFile)
                {

                    string jag = "";
                    string jag1 = "";

                    string fname = "~/Files/" + FileUpload1.FileName;
                    string ss = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(fname));
                    string mystring = File.ReadAllText(Server.MapPath("~/Files/" + FileUpload1.FileName));
                    int count = 0;
                    string kk = Regex.Matches(mystring.Trim(), "[a-zA-Z]").Count.ToString();

                    float u12 = Convert.ToInt64(kk);
                    //int u13 = mystring.Trim().Count();
                    //float u12 = (float)u13;
                    foreach (char c in mystring)
                    {
                        if (char.IsLetter(c))
                        {
                            count++;
                        }
                    }
                    string u11 = count.ToString();
                    int u = Convert.ToInt32(u11);
                    string o = "";
                    string[] sentences1 = Regex.Split(mystring.Trim(), @"(?<=[\.!\?])+");
                    foreach (string sentence2 in sentences1)
                    {
                        o = sentence2;

                        string x = "";
                        string qry = "select Content1 from FileUpload";

                        DataSet ds = obj.select(qry);
                        int h = ds.Tables[0].Rows.Count;

                        for (int i = 0; i < h; i++)
                        {
                            x += " " + ds.Tables[0].Rows[i][0].ToString();

                        }
                        string j = "";
                        string[] sentences = Regex.Split(x.Trim(), @"(?<=[\.!\?])+");
                        foreach (string sentence in sentences)
                        {

                            j = sentence;



                            if (o.Trim() == j.Trim())
                            {
                                jag += " " + o.ToString();

                                //co =Convert.ToInt16( jag.Trim().Count());
                                string kk1 = Regex.Matches(jag.Trim(), "[a-zA-Z]").Count.ToString();
                                co1 = Convert.ToInt64(kk1);

                            }
                            else
                            {
                                jag1 += "" + o.ToString();

                            }

                           // TextBox2.Text = jag1;



                        }
                        float j7 = Convert.ToInt64((co1 / u12) * 100);
                        //int j7 = (co / u13) ;
                        TextBox1.Text = jag;
                        lblper.Text = j7.ToString();


                    }

                }
                else
                {
                    Response.Write("<script>alert('Please Upload The File !!!!')</script>");
                }
            }
            else if (txt.ToUpper() == ".DOCX" || txt.ToUpper() == ".DOC")
            {
                if (FileUpload1.HasFile)
                {
                    string fname = "~/Files/" + FileUpload1.FileName;
                    string ss = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath(fname));
                    ApplicationClass wordApp = new ApplicationClass();
                    object file = Server.MapPath(fname);

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
                    string mystring = doc1.Content.Text;

                    doc.Close(ref nullobj, ref nullobj, ref nullobj);


                    string jag = "";
                    string jag1 = "";

                    //string mystring = File.ReadAllText(Server.MapPath("~/temp/" + FileUpload1.FileName));
                    int count = 0;
                    string kk = Regex.Matches(mystring.Trim(), "[a-zA-Z]").Count.ToString();

                    float u12 = Convert.ToInt64(kk);
                    //int u13 = mystring.Trim().Count();
                    //float u12 = (float)u13;
                    foreach (char c in mystring)
                    {
                        if (char.IsLetter(c))
                        {
                            count++;
                        }
                    }
                    string u11 = count.ToString();
                    int u = Convert.ToInt32(u11);
                    string o = "";
                    string[] sentences1 = Regex.Split(mystring.Trim(), @"(?<=[\.!\?])+");
                    foreach (string sentence2 in sentences1)
                    {
                        o = sentence2;

                        string x = "";
                        string qry = "select Content1 from FileUpload";

                        DataSet ds = obj.select(qry);
                        int h = ds.Tables[0].Rows.Count;

                        for (int i = 0; i < h; i++)
                        {
                            x += " " + ds.Tables[0].Rows[i][0].ToString();

                        }
                        string j = "";
                        string[] sentences = Regex.Split(x.Trim(), @"(?<=[\.!\?])+");
                        foreach (string sentence in sentences)
                        {

                            j = sentence;



                            if (o.Trim() == j.Trim())
                            {
                                jag += " " + o.ToString();

                                //co =Convert.ToInt16( jag.Trim().Count());
                                string kk1 = Regex.Matches(jag.Trim(), "[a-zA-Z]").Count.ToString();
                                co1 = Convert.ToInt64(kk1);

                            }
                            else
                            {
                                jag1 += "" + o.ToString();

                            }

                           // TextBox2.Text = jag1;



                        }
                        float j7 = Convert.ToInt64((co1 / u12) * 100);
                        //int j7 = (co / u13) ;
                        TextBox1.Text = jag;
                        lblper.Text = j7.ToString();


                    }

                }
                else
                {
                    Response.Write("<script>alert('Please Upload The File !!!!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Upload The File !!!!')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}
    
