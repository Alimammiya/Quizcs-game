using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class material1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //SqlDataSource1.Insert();
       
    }
    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        {
            e.Command.Parameters.Add(new SqlParameter("@name", FileUpload1.FileName));
            e.Command.Parameters.Add(new SqlParameter("@data", FileUpload1.FileBytes));
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            SqlDataSource2.Insert();
        }
    }
    protected void SqlDataSource2_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters.Add(new SqlParameter("@ainame", FileUpload2.FileName));
        e.Command.Parameters.Add(new SqlParameter("@aidata", FileUpload2.FileBytes));
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            SqlDataSource3.Insert();
        }
    }
    protected void SqlDataSource3_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters.Add(new SqlParameter("@aspname", FileUpload3.FileName));
        e.Command.Parameters.Add(new SqlParameter("@aspdata", FileUpload3.FileBytes));
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            SqlDataSource1.Insert();
        }

        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            SqlDataSource4.Insert();
        }

    }
    protected void SqlDataSource4_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters.Add(new SqlParameter("@extraname", FileUpload4.FileName));
        e.Command.Parameters.Add(new SqlParameter("@extradata", FileUpload4.FileBytes));

    }
}
