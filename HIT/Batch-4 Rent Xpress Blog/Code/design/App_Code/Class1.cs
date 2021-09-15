using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=RentXpress;Integrated Security=True");
    SqlCommand cmd;
    public int inupdel(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;

    }
    public DataSet Select(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int Login(string qry)
    {
        int i = 0;

        cmd = new SqlCommand(qry, con);
        con.Open();
        i = (int)cmd.ExecuteScalar();
        con.Close();



        return i;
    }	
}