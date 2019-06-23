using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class feesregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters.Add(new SqlParameter("@chequeno", txtcheuqe.Text));
        e.Command.Parameters.Add(new SqlParameter("@bankname", txtbankname.Text));
    }
    protected void btnsubmit_Click(object sender, ImageClickEventArgs e)
    {
        //SqlDataSource1.Insert();
        Response.Redirect("finalregister.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlDataSource1.Insert(); 
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.Insert(); 
    }
}
