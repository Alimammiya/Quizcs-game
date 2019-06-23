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

public partial class uploadquestiion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    //{
        
       
    //}
    protected void btnsave_Click(object sender, EventArgs e)
    {
    //    //SqlDataSource1.Insert();
    //    //SqlDataSource1.Insert();
        
    }
    protected void SqlDataSource1_Inserting1(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters.Add(new SqlParameter("@QusetionID", txtquestionid.Text));
        e.Command.Parameters.Add(new SqlParameter("@titel", txttitel.Text));
        e.Command.Parameters.Add(new SqlParameter("@answer1", txtanswer1.Text));
        e.Command.Parameters.Add(new SqlParameter("@answer2", txtanswer2.Text));
        e.Command.Parameters.Add(new SqlParameter("@answer3", txtanswer3.Text));
        e.Command.Parameters.Add(new SqlParameter("@answer4", txtanswer4.Text));
        e.Command.Parameters.Add(new SqlParameter("@correctanswer", txtcorrectanswer.Text));
        e.Command.Parameters.Add(new SqlParameter("@answwerexplanation", txtanswerexplanation.Text));
        e.Command.Parameters.Add(new SqlParameter("@questionorder", txtquestionorder.Text));
        e.Command.Parameters.Add(new SqlParameter("@quizid", txtquizid.Text));
       

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.Insert();
    }
    
}
