using System;
using System.Web;

public class Metasys
{
    public static void ErrorMessage(string Message)
    {
        HttpContext.Current.Response.Write("<script>alert('" + Message + "')</script");
    }

    internal static void ErrorMessage(object p)
    {
        throw new NotImplementedException();
    }
}