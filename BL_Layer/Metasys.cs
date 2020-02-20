using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Metasys
/// </summary>


namespace CmsWbsite.BL_Layer
{
    public class Metasys
    {

        public static void ErrorMessage(string Message)
        {
            HttpContext.Current.Response.Write("<script>alert('" + Message + "')</script");
        }

        public Metasys()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}