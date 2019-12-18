using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class YourCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsessionEmail.Text = Session["Pcardemail"].ToString();

        DataSet ds = DbConnection.FetchData("select * from tblPcard where emailid ='" + lblsessionEmail.Text + "'");
        if (ds.Tables[0].Rows.Count == 1)
        {

            lblCardno.Text = ds.Tables[0].Rows[0]["cardno"].ToString();
            lblCname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            lblIdate.Text= ds.Tables[0].Rows[0]["DOI"].ToString();
        }

       }


    protected void btnPrint_Click(object sender, ImageClickEventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Print", "Print()", true);
    }
}