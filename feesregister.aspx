<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feesregister.aspx.cs" Inherits="feesregister" Title="Untitled Page" %>

<script runat="server">

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 67%;
    }
p.MsoTitle
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	text-align:center;
	text-autospace:none;
	font-size:16.0pt;
	font-family:"Arial","sans-serif";
	font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <div align="left">
                    <b><font color="#094e6f" face="Verdana" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource 
                        ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QUIZConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:QUIZConnectionString.ProviderName %>" 
                        InsertCommand="INSERT INTO registration(chequeno, bankname) VALUES (@chequeno,@bankname)" 
                        oninserting="SqlDataSource1_Inserting">
                        </asp:SqlDataSource>
                    <br />
                    &nbsp;Payment Details :-:SqlDataSource>
                    <br />
                    &nbsp;Payment Details :-</font></b>
                                         </div>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                                         colspan="3" valign="top">
                                         &nbsp;
                                         <div align="left">
                                             <b><font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The 
                                             membership fee for one month is Rs. 1000 and during that time a member can 
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; give any number of tests</font></b>&nbsp;
                </div>
            </td>
        </tr>
        <tr>
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="75%">
                    <tr>
                        <td colspan="2">
                            <hr color="#094e6f" size="1" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="40%">
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;Enter your Cheuqe no. :-</font></b></div>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="txtcheuqe" runat="server"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" ControlToValidate="txtcheuqe" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtcheuqe" Display="Dynamic" ErrorMessage="must enter int" 
                                SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                                                 </td>
                    </tr>
                    <tr>
                        <td height="21">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">&nbsp;&amp;nbspEnter your Bank Name :-</font></b></div>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" ControlToValidate="txtbankname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtbankname" ErrorMessage="must enterchar" 
                                SetFocusOnError="True" ValidationExpression="^[a-zA-Z'\s]+$"></asp:RegularExpressionValidator>
                                                 </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;(Note feilds marked with * 
                            must not be left empty )</font></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr color="#094e6f" size="1" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="2">Your Cheque or Draft should 
                                reach us in favour of M &amp; C U Shah College OF ENGG & TECH  at the following address :-</font></b>
                            </div>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center">
                                <p class="MsoTitle" style="line-height:115%">
                                    M.&amp;N. VIRANI SCIENCE COLLEGE</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center">
                                <p align="center" class="MsoNormal">
                                    KALAVAD ROAD,</p>
                            </div>
                            <div align="center">
                                <p align="center" class="MsoNormal">
                                    RAJKOT-360005</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center">
                                </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center">
             <!--   <input name="btnsubmit" onClick='return checks1(this.form)' type=submit id="btnsubmit" style="BACKGROUND-COLOR: #f8f8f8; BORDER-BOTTOM: #094e6f 1px solid; BORDER-LEFT: #094e6f 1px solid; BORDER-RIGHT: #094e6f 1px solid; BORDER-TOP: #094e6f 1px solid; FONT-FAMILY: Verdana; FONT-SIZE: 10pt; PADDING-BOTTOM: 1px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 1px" tabindex=29  value=Submit >-->
			                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/ADD.GIF" 
                                    onclick="ImageButton9_Click" />
			                    <asp:ImageButton ID="btnsubmit" runat="server" 
                                    ImageUrl="~/images/CONTI.GIF" 
                                    onclick="btnsubmit_Click" />
&nbsp;</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

