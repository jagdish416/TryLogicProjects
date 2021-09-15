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
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MBA;Integrated Security=True");
    SqlCommand cmd;
    public int InUpDel(string qry)
    {
        int i = 0;

        con.Open();
        cmd = new SqlCommand(qry, con);
        i = cmd.ExecuteNonQuery();
        con.Close();



        return i;

    }
    public DataSet Display(string qry)
    {
        DataSet ds = new DataSet();

        cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

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

