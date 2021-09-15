using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter da;
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
        con = new SqlConnection("Data Source=.;Initial Catalog=FiletransferCryptography;Integrated Security=True");

	}
    public DataSet GetDetails(String query)
    {
        da = new SqlDataAdapter(query, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int InsUpDelete(string query)
    {
        cmd = new SqlCommand(query, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public void Encrypt(string inputFilepath, string outputFilepath, string EncryptionKey)
    {

        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsoutput = new FileStream(outputFilepath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsoutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsinput = new FileStream(inputFilepath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsinput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
    public void Decrypt(string inputFilePath, string outputfilePath, string EncryptionKey)
    {
        // string EncryptionKey = "MAKV2SPBNI99212";
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
            {
                using (CryptoStream cs = new CryptoStream(fsInput, encryptor.CreateDecryptor(), CryptoStreamMode.Read))
                {
                    using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
                    {
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOutput.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
}