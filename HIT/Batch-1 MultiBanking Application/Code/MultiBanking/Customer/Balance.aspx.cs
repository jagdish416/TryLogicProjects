﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Balance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        


    }


    Class1 obj = new Class1();
    protected void ibsubmit_Click(object sender, ImageClickEventArgs e)
    {
        load();
    }
    public void load()
    {
        string qry = "select * from Transcation where Bank='" + ddselect.SelectedItem.Text + "'";
        DataSet ds = obj.Display(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('THERE IS NO DATA')</script>");
        }
    }
}
   





