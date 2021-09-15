using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=Crawlingweb;Integrated Security=True");
    public int inupdel(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int i = cmd.ExecuteNonQuery();
        cn.Close();
        return i;
    }
    public DataSet select(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
    public int login(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int i = (int)cmd.ExecuteScalar();
        cn.Close();
        return i;
    }

}