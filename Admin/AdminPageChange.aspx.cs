using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_AdminPageChange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {

        try
        {
            string fileName = "";
            HttpPostedFile postedFile = ContentIMG.PostedFile;
            if (ContentIMG.PostedFile.FileName.Trim() != "")
            {
                fileName = Path.GetFileName(ContentIMG.PostedFile.FileName);
                string path = Server.MapPath("../img") + "/" + fileName;
                //ContentIMG.PostedFile.SaveAs()

            }

            MetasysDb loadData = new MetasysDb();
            loadData.retrieveData("select * from ContentInfo");
            if(loadData.SqlTable.Rows.Count > 0)
            {
                MetasysDb updateData = new MetasysDb();
                updateData.commandExec("update ContentInfo set ContentIMG=N'" + fileName
                    + "',Title=N'" + txtTitle.Text.Trim() + "',Description=N'" + txtDesc.ToString().Trim() + "'", true);

            }

            else
            {
                MetasysDb SaveData = new MetasysDb();
                SaveData.commandExec("insert into ContentInfo values(N'"+fileName+"'N'"+txtTitle.Text.Trim()+"'N'"+txtDesc.ToString().Trim()+"')", true);

            }
        }
        catch (Exception ex)
        {
            Metasys.ErrorMessage("Something has gone wrong:Error is: " + ex.Message);
        }
    }
}