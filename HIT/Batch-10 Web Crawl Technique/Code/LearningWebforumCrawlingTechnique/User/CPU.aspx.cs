using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class User_CPU : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }
    private void BindData()
    {
        string query = "Select * from Filedetails where filename='CPU'";
        Class1 c = new Class1();
        DataSet ds = new DataSet();
        ds = c.select(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblHeader.Text = ds.Tables[0].Rows[0][2].ToString();
            string filepath = ds.Tables[0].Rows[0][4].ToString();
            string filename = Server.MapPath("~/Text/" + filepath);
            lblContent.Text = File.ReadAllText(filename);
        }
    }
}