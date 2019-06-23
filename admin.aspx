<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table>
    <tr>
    <td class="style6">
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name :</font></b></div>
                        </td>
                        <td width="59%">
                            <div align="left">
                                <asp:TextBox ID="txtusername" runat="server" 
                                    ontextchanged="txtusername_TextChanged"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp; :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                                    ontextchanged="txtpassword_TextChanged"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="4">&nbsp;</font></div>
                        </td>
    </tr>
    <tr>
    <td>
    </td>
    <td>
    </td>
    </tr>
    <tr>
    <td>
    <td>
        <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/CONTI.GIF" 
            onclick="ImageButton9_Click" />
    </td>
    </td>
    </tr>
    </table>
</asp:Content>

