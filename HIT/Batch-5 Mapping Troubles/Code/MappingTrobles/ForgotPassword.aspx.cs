using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         String qry = "select * from Regi where username='" +txtfp.Text+"'" ;
                DataSet ds = obj.select(qry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = ds.Tables[0].Rows[0][3].ToString();
                    Session["password"] = ds.Tables[0].Rows[0][4].ToString();
                    Response.Redirect("RecoverPassword.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName !! Please check Your Username once')</script>");
                }
            }
       
    }
