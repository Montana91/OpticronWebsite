using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IndexPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MetasysDb loadData = new MetasysDb();
            loadData.retrieveData("select * from ContentInfo");
            if (loadData.SqlTable.Rows.Count > 0)
            {
                ContentIMG.Src = loadData.SqlTable.Rows[0][1].ToString();
                txtTitle.Text = loadData.SqlTable.Rows[0][2].ToString();
                txtDesc.ToString() = loadData.SqlTable.Rows[0][3].ToString();
            }
        }
        catch (Exception ex)
        {
            Metasys.ErrorMessage("opps there is an Error: " + ex.Message);
        }
    }
}
