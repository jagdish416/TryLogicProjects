using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for bal
/// </summary>
public class bal
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    public bal()
    {
       // con = new SqlConnection("Trusted_connection=true;Database=blockingserviceattacks;Datasource=.");
        con = new SqlConnection("Data Source=.;Initial Catalog=Blockingservice;Integrated Security=True");
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet GetDetalis(String query)
    {
        da = new SqlDataAdapter(query, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int InsUpDel(String query)
    {
        cmd = new SqlCommand(query, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
}