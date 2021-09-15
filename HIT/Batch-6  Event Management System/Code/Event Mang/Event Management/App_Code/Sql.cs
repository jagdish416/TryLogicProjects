using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Sql
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=EventManagment;Integrated Security=True");
    SqlCommand cmd;
    public int InUpDel(string qry)
    {
        con.Open();
        cmd = new SqlCommand(qry, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataSet Display(string qry)
    {
        cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public int Login(string qry)
    {
        cmd = new SqlCommand(qry, con);
        con.Open();
        int i = (int)cmd.ExecuteScalar();
        con.Close();

        return i;
    }
}