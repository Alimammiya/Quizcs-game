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
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // txtusername.Text = "";
        //txtpassword.Text = "";
    }
    
    //protected void Button1_Click(object sender, EventArgs e)
    //{
        
    //}
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (txtusername.Text == "admin" && txtpassword.Text == "savan")
        {
            Response.Redirect("adminuse.aspx");
        }
        
        
    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
}
