﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewPosts : System.Web.UI.Page
{
    classprj cs = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        string qry = "select * from post";
        DataSet ds = cs.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No Queries Present')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button img = (Button)sender;
        GridViewRow gr = (GridViewRow)img.NamingContainer;
        Label lbl = (Label)gr.FindControl("Label2");
        string qry = "delete from post where FieldId='" + lbl.Text + "'";
        int i = cs.inupdel(qry);
        if (i > 0)
        {
            Response.Write("<script>alert('Deleted Sucesfully !!')</script>");
            bind();
        }
        else
        {
            Response.Write("Not Yet Deleted !!");
        }
    }
}