using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Collections;
public partial class User_UserHome : System.Web.UI.Page
{
    classprj obj = new classprj();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["name"].ToString();
        bind();
    }
    public ArrayList al = new ArrayList();
    public void bind()
    {

        string qry = "select Location from post where Status='" + Session["id"].ToString() + "' and Follow='Follow'";
        DataSet ds = obj.select(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string c = ds.Tables[0].Rows[i][0].ToString();
                string qry1 = "select TOP 3 * from post where Location='" + c.ToString() + "' and Status='Empty' order by Date1 DESC";
                DataSet ds2 = obj.select(qry1);
                if (ds2.Tables[0].Rows.Count > 0)
                {
                    //DataTable dt = new DataTable();
                    //DataRow dr;
                    //dt.TableName = "post";
                    //dt.Columns.Add(new DataColumn("Path", typeof(string)));
                    //dt.Columns.Add(new DataColumn("Description", typeof(string)));
                    //dr = dt.NewRow();
                    //dt.Rows.Add(dr);
                    ////saving databale into viewstate   
                    //ViewState["AuthorBooks"] = dt;
                    ////bind Gridview  
                    //GridView1.DataSource = dt;
                    //GridView1.DataBind();  
                    

                    GridView1.DataSource = ds2;
                    GridView1.DataBind();



                }


                else
                {
                    // GridView1.Visible = false;
                    //Response.Write("<script>alert('There is NO Data !!')</script>");
                }

            }
        }
        else
        {
            // GridView1.Visible = false;
        }
    }
}