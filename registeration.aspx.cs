using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {


      //  e.Command.Parameters.Add(new SqlParameter("@userid", txtfname.Text));
        e.Command.Parameters.Add(new SqlParameter("@firstname", txtfname.Text));
        e.Command.Parameters.Add(new SqlParameter("@lastname", txtlname.Text));
        e.Command.Parameters.Add(new SqlParameter("@address", txtaddress.Text));
        e.Command.Parameters.Add(new SqlParameter("@city", txtcity.Text));
        e.Command.Parameters.Add(new SqlParameter("@day", cmbday.Text));
        e.Command.Parameters.Add(new SqlParameter("@month", cmbmonth.Text));
        e.Command.Parameters.Add(new SqlParameter("@year", cmbyear.Text));
        e.Command.Parameters.Add(new SqlParameter("@pincode", txtpincode.Text));
        e.Command.Parameters.Add(new SqlParameter("@state", txtstate.Text));
        e.Command.Parameters.Add(new SqlParameter("@country", cmbcountry.Text));
        e.Command.Parameters.Add(new SqlParameter("@phoneno",txtphone.Text));
        e.Command.Parameters.Add(new SqlParameter("@emailaddress", txtemail.Text));
        
}
    protected void btncontinue_Click(object sender, ImageClickEventArgs e)
    {
        //SqlDataSource1.Insert();
       Response.Redirect("feesregister.aspx");
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
