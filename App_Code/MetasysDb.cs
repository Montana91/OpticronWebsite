using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public class MetasysDb
{
    SqlConnection SqlCon = new SqlConnection();
    public DataTable SqlTable = new DataTable();

    public MetasysDb()
    {
        SqlCon.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
     }

    public static void readData()
    {
        throw new NotImplementedException();
    }

    ///<summary></summary>
    /// Select From SQL Server
    /// <param name="command"></param>
    /// <returns</returns>
    public DataTable retrieveData(string command)
    {
        try
        {
            SqlCon.Open();
            SqlDataAdapter db = new SqlDataAdapter(command, SqlCon);
            db.Fill(SqlTable);
            return SqlTable;
        }
        catch(Exception ex)
        {
            Metasys.ErrorMessage("Erro Databse did not connect to DB :" + ex.Message);
            return null;
        }
        finally
        {
            SqlCon.Close();
        }
    }

    ///<summary></summary>
    /// Select From SQL Server
    /// <param name="command">INSERT, DELETE, UPDATE</param>
    /// <returns</returns>
    public void commandExec(string command, bool ShowMessage)
    {
        try
        {
            SqlCon.Open();
            SqlCommand sqlcomm = new SqlCommand (command, SqlCon);
            int returnNo = sqlcomm.ExecuteNonQuery();

            if (ShowMessage)
            {
                if (returnNo > 0)
                {
                    Metasys.ErrorMessage("Operation has done");
                }
                else
                {
                    Metasys.ErrorMessage("something has gone wromg visit your DB ");
                }
            }
            
        }
        catch(Exception ex)
        {
            Metasys.ErrorMessage("Erro Databse did not connect to DB :" + ex.Message);
            
        }
        finally
        {
            SqlCon.Close();
        }
    }


}