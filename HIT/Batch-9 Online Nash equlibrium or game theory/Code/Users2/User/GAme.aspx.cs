using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class User_GAme : System.Web.UI.Page
{
    Random rd;
    int q;
    public int bind6()
    {
      Random  rd = new Random();
        q = rd.Next(15);
            return q;
    }
    public int bind()
    {
        Random r = new Random();

        int i = r.Next(30);
        return i;

    }
    public int bind1()
    {
        Random r1 = new Random();
        int j = r1.Next(10);
        return j;

    }
    public int bind2()
    {
        Random r2 = new Random();
        int m = r2.Next(30);
        return m;
    }
    public int bind3()
    {
        Random r3 = new Random();
        int s = r3.Next(25);
        return s;
    }

    public void main()
    {

        int k, l, z, w;
        k = bind();
        l = bind1();
        z = bind2();
        w = bind3();

        int add = k + l - w * z;
        Session["add"] = add;
        Label1.Text = k + "+" + l + "-" + w + "*" + z + "=" + "?";
    }
    public void main1()
    {
        int k, l, z, w;
        k = bind();
        l = bind1();
        z = bind2();
        w = bind3();

        int add = k * l + w - z;
        Session["add"] = add;
        Label1.Text = k + "*" + l + "+" + w + "-" + z + "=" + "?";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int u=bind6();

            if (u < 7)
            {
                main();
            }
                else
                {
                main1();
                }
            }
        }


    protected void  Button1_Click(object sender, EventArgs e)
{
        int i = Convert.ToInt32(TextBox1.Text);

        if (i == Convert.ToInt32(Session["add"]))
        {


            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(Session["path"].ToString()));
            Response.WriteFile(Session["path"].ToString());
            Response.End();
        }
        else
        {

            Response.Write("<script>alert('Invalid Answer')</script>");
        }

    }
}

   