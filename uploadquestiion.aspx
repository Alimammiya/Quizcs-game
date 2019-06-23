<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uploadquestiion.aspx.cs" Inherits="uploadquestiion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <div align="center">
                    <strong>
                    <font color="#006699" face="Verdana, Arial, Helvetica, sans-serif" 
                        size="4">REGISTRATION</font></strong></div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=E:\MyWorks\QuizCS\App_Data\QUIZ.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True" 
                    InsertCommand="INSERT INTO qusetion1(QusetionID, titel, answer1, answer2, answer3, answer4, correctanswer, answwerexplanation, questionorder, quizid) VALUES (@QusetionID, @titel, @answer1, @answer2, @answer3, @answer4, @correctanswer, @answwerexplanation,@questionorder,@quizid)" 
                    
                    SelectCommand="SELECT upquestionid, uptitel, upanswer1, upanswer2, upanswer3, upanswer4, upcorrectanswer, upanswwerexplanation, upquizid FROM qusetion1" 
                    oninserting="SqlDataSource1_Inserting1" 
                    ProviderName="System.Data.SqlClient">
                </asp:SqlDataSource>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <div align="right">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/images/ALL_TOP.GIF" />
                </div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="75%" 
                    style="height: 546px">
                    <tr>
                        <td colspan="2">
                            <u>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="3">Upload question</font></b></div>
                            </u>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="41%">
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Question Id :</font></b></div>
                        </td>
                        <td width="59%">
                            <div align="left">
                                <asp:TextBox ID="txtquestionid" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtquestionid" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Titel :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txttitel" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="4">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttitel" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td height="30" 
                            style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none">
                            &nbsp;</td>
                        <td height="30" 
                            style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none">
                            <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%>
&nbsp;
                            &nbsp;&nbsp;
                            <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <b><font color="#094e6f" face="Verdana" size="2">Answer 1 :</font></b></td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtanswer1" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtanswer1" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Answer 2:</font></b></div>
                        </td>
                        <td height="30" 
                            style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none" 
                            width="370">
                            <asp:TextBox ID="txtanswer2" runat="server"></asp:TextBox>
                            <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><font 
                                color="#094e6f">&nbsp; </font>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtanswer2" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Answer 3 :</font></b>
                            </div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtanswer3" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtanswer3" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Answer 4 :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtanswer4" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="3">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtanswer4" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Correct&nbsp; Answer</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                                         <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%>
                                                         <asp:TextBox ID="txtcorrectanswer" runat="server" Width="123px"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                             ControlToValidate="txtcorrectanswer" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                                     &nbsp;</td>
                        <td>
                                                     &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2"><br />Answer Explanation</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtanswerexplanation" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtanswerexplanation" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Question&nbsp; order:</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtquestionorder" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="txtquestionorder" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%>
                    <tr>
                        <td colspan="2" height="19">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <b><font color="#094e6f" face="Verdana" size="2">Quiz Id</font></b></td>
                        <td>
                            <asp:TextBox ID="txtquizid" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtquizid" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%>
                    <%--<tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <div align="left">
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font></div>
                        </td>
                    </tr>--%>
                </table>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                &nbsp;</td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <div align="left">
                    <div align="left">
                        <font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
                        <asp:Button 
                            ID="btnsave" runat="server" Text="Button" onclick="btnsave_Click" 
                            Height="16px" Width="16px" />
            </font>
                        <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/ADD.GIF" 
                            onclick="ImageButton9_Click" />
                    </div>
                </div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                &nbsp;</td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <div align="center">
        <!--  <input name="btnconti" type=submit id="btnconti" value="Continue"  onClick='return checktxt(this.form)' style="BACKGROUND-COLOR: #f8f8f8; BORDER-BOTTOM: #094e6f 1px solid; BORDER-LEFT: #094e6f 1px solid; BORDER-RIGHT: #094e6f 1px solid; BORDER-TOP: #094e6f 1px solid; FONT-FAMILY: Verdana; FONT-SIZE: 10pt; PADDING-BOTTOM: 1px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 1px" tabindex="16" >-->
&nbsp;</div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                valign="top">
                <div align="center">
                    <asp:ImageButton ID="ImageButton3" runat="server" 
                        ImageUrl="~/images/ALL_BOT.GIF" />
                </div>
            </td>
            </font>
        </tr>
    </table>


</asp:Content>

