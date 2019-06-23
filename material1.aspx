<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="material1.aspx.cs" Inherits="material1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 593px;
        }
        .style7
        {
            width: 330px;
        }
        .style9
        {
            width: 292px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 600px">
     <tr>
     
     <td class="style7">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ALL_TOP.GIF" />
     <font color="#094e6f"  align="absmiddle" >
         <br />
         
         <br />
         Upload Software Engineering  Material!.............. 
                <br />
                </font> 
     
     </td>
     </tr>
     <td class="style7">
         
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            InsertCommand="INSERT INTO fileupload(name, data) VALUES (@name, @data)" 
            oninserting="SqlDataSource1_Inserting">
             
            </asp:SqlDataSource>
     
     
         <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Button" />
     
     
         <br />
         <asp:Image ID="Image2" runat="server" ImageUrl="~/images/ALL_BOT.GIF" />
                  
         
         <asp:FileUpload ID="FileUpload1" runat="server"  />
     <td>
         &nbsp;<td>
         <br />
         <br />
         <br />
         <br />
         
         
     </td>
     
    </tr>
        </tr>
    </table>
                             <br />
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/ALL_TOP.GIF" />
    <table>
    <tr>
    <td>
     <font color="#094e6f"  align="absmiddle" >Upload AI  Material!.............. 
                <br />
                </font> 
        <td class="style7">
            &nbsp;</td>
    </td>
    </tr>
    
    <tr>
    <td class="style6">
        <asp:FileUpload ID="FileUpload2" runat="server" />
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            InsertCommand="INSERT INTO aiupload(ainame, aidata) VALUES (@ainame, @aidata)" 
            oninserting="SqlDataSource2_Inserting" 
            SelectCommand="select * from aiupload">
            
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button2_Click" />
        <br />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/ALL_BOT.GIF" />
        <br />
        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/ALL_TOP.GIF" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <font color="#094e6f"  align="absmiddle" >Upload Extra Material Material!..</font><br />
        <br />
        <asp:FileUpload ID="FileUpload4" runat="server" />
&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Button" onclick="Button6_Click" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=E:\QuizCS\App_Data\QUIZ.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True" 
            InsertCommand="INSERT INTO extraupload(extraname, extradata) VALUES (@extraname, @extradata)" 
            oninserting="SqlDataSource4_Inserting" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        
        <br />
        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/ALL_BOT.GIF" />
        <br />
    </td>
    <td>
        <br />
    </td>
    </tr>
    </table>
    <table>
    <tr>
    
    <td class="style9">
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/ALL_TOP.GIF" />
     <font color="#094e6f"  align="absmiddle" >
        <br />
        Upload ASP.NET  Material!.............. 
                </font> 
        
    </td>
         
        <td>
        
        <asp:FileUpload ID="FileUpload3" runat="server" /> 
        <td>
        <tr>
        <asp:Button ID="Button3" runat="server" Text="Button" />
        </tr>
        <td class="style9">
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                InsertCommand="INSERT INTO aspupload(aspname, aspdata) VALUES (@aspname, @aspdata)" 
                ProviderName="System.Data.SqlClient" 
                oninserting="SqlDataSource3_Inserting"></asp:SqlDataSource>
        
            <asp:Button ID="Button4" runat="server" Text="Button" onclick="Button4_Click" />
            
            
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/ALL_BOT.GIF" />
        </td>
    
    </tr>
    </table>
    
</asp:Content>

