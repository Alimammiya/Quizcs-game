<%@ WebHandler Language="C#" Class="upload" %>

using System;
using System.Web;
using System.Data.SqlClient;

public class upload : IHttpHandler 
{
    
  const string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\MyWorks\\QuizCS\\App_Data\\QUIZ.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True";
    public void ProcessRequest (HttpContext context) 
    {
        context.Response.ContentType = "application/msword";
        SqlConnection con = new SqlConnection(conString);

   
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "select data from fileupload where id=@id";
        cmd.Parameters.AddWithValue("@id", context.Request["id"]);
        byte[] file = (byte[])cmd.ExecuteScalar();
        context.Response.BinaryWrite(file);
    
     
    }
 
    public bool IsReusable 
    {
        get 
        {
            return false;
        }
    }

}    

