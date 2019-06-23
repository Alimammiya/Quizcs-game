<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="registeration" Title="Untitled Page" Explicit="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <div align="center">
                    <strong><font color="#006699" face="Verdana, Arial, Helvetica, sans-serif" 
                        size="4">REGISTRATION</font></strong></div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    oninserting="SqlDataSource1_Inserting" 
                    
                    SelectCommand="SELECT [userid], [firstname], [lastname], [day], [month], [year], [address], [city], [pincode], [state], [country], [phoneno], [emailaddress] FROM [registration]" 
                    InsertCommand="INSERT INTO registration (firstname, lastname, day, month, year, address, city, pincode, state, country, phoneno, emailaddress) VALUES (@firstname,@lastname,@day,@month,@year,@address,@city,@pincode,@state,@country,@phoneno,@emailaddress)">
                </asp:SqlDataSource>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
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
                colspan="3" valign="top">
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="75%">
                    <tr>
                        <td colspan="2">
                            <u>
                            <div align="left">
                                <b><font color="#094e6f" face="Verdana" size="3">Personal Information :- </font>
                                </b>
                            </div>
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
                                <b><font color="#094e6f" face="Verdana" size="2">First Name :</font></b></div>
                        </td>
                        <td width="59%">
                            <div align="left">
                                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;<asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                </font>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="must enter char" 
                                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z'\s]+$"></asp:RegularExpressionValidator>
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
                                <b><font color="#094e6f" face="Verdana" size="2">Last Name :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="4">&nbsp;<asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                </font>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="must enter char" 
                                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z'\s]+$"></asp:RegularExpressionValidator>
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
                            <b><font color="#094e6f" face="Verdana" size="2">Birth Date</font></b></td>
                        <td height="30" 
                            style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none">
                            <%--<select name="day" size="1" 
                                style="BACKGROUND-COLOR: #edf3fa; BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid" 
                                tabindex="3" id="selectday">
                                <option selected="" value="Day">Day</option>
                                <option value="1">1</option>
                <SCRIPT>          
            for(var i=2;i<=31;i++)
            document.write("<option value="+ i +">"+ i +"</option>")
            
            </SCRIPT>
                            </select>--%>
                            <asp:DropDownList ID="cmbday" runat="server">
                            <asp:ListItem>Day</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                
                            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cmbday" 
                                ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
                            <asp:DropDownList ID="cmbmonth" runat="server" Height="16px" Width="68px">
                                <asp:ListItem>month</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cmbmonth" 
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            &nbsp;
                            <%--<select name="year" size="1" 
                                style="BACKGROUND-COLOR: #edf3fa; BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid" 
                                tabindex="5" id="selectyear">
                                <option selected="" value="Year">Year</option>
                <SCRIPT>
            for(var i=2100;i>=1990;i--)
            document.write("<option value="+ i +">"+ i +"</option>")
            
            </SCRIPT>
                            </select>--%><asp:DropDownList ID="cmbyear" runat="server">
                                            <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1999</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>2001</asp:ListItem>
                                <asp:ListItem>2002</asp:ListItem>
                                <asp:ListItem>2003</asp:ListItem>
                                <asp:ListItem>2004</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                                <asp:ListItem>2006</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                                <asp:ListItem>2027</asp:ListItem>
                                <asp:ListItem>2028</asp:ListItem>
                                <asp:ListItem>2029</asp:ListItem>
                                <asp:ListItem>2030</asp:ListItem>
                                <asp:ListItem>2031</asp:ListItem>
                                <asp:ListItem>2032</asp:ListItem>
                                <asp:ListItem>2033</asp:ListItem>
                                <asp:ListItem>2034</asp:ListItem>
                                <asp:ListItem>2035</asp:ListItem>
                                <asp:ListItem>2036</asp:ListItem>
                                <asp:ListItem>2037</asp:ListItem>
                                <asp:ListItem>2038</asp:ListItem>
                                <asp:ListItem>2039</asp:ListItem>
                                <asp:ListItem>2040</asp:ListItem>
                                <asp:ListItem>2041</asp:ListItem>
                                <asp:ListItem>2042</asp:ListItem>
                                         </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                runat="server" ControlToValidate="cmbyear" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                            <b><font color="#094e6f" face="Verdana" size="2">Address :</font></b></td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress" 
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
                                <b><font color="#094e6f" face="Verdana" size="2">City :</font></b></div>
                        </td>
                        <td height="30" 
                            style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none; BORDER-TOP: medium none" 
                            width="370">
                            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                            <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><font 
                                color="#094e6f">&nbsp; </font>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcity" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                                <b><font color="#094e6f" face="Verdana" size="2">Pincode :</font></b>
                            </div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpincode" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="must enter int" 
                                    SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
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
                                <b><font color="#094e6f" face="Verdana" size="2">State :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="3">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtstate" 
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
                                <b><font color="#094e6f" face="Verdana" size="2">Country</font></b></div>
                                                 </td>
                                                 <td>
                                                     <div align="left">
                                                         <%--<font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                                                         <select NAME="country" style="width: 128px; margin-left: 4px" 
                                                             id="selectcountry">
								
										<option  VALUE="US">USA
										<option  VALUE="CA">Canada
										<option  VALUE="AU">Australia
										<option  VALUE="GB">United Kingdom
										<option  VALUE="JP">Japan
										<option  VALUE="IN">India
										<option  VALUE="AF">Afghanistan
										<option  VALUE="AL">Albania
										<option  VALUE="DZ">Algeria
										<option  VALUE="AD">Andorra
										<option  VALUE="AO">Angola
										<option  VALUE="AI">Anguilla
										<option  VALUE="AQ">Antarctica
										<option  VALUE="AG">Antigua and Barbuda
										<option  VALUE="AR">Argentina
										<option  VALUE="AM">Armenia
										<option  VALUE="AW">Aruba
										<option  VALUE="AU">Australia
										<option  VALUE="AT">Austria
										<option  VALUE="AZ">Azerbaijan
										<option  VALUE="BS">Bahamas
										<option  VALUE="BH">Bahrain
										<option  VALUE="BD">Bangaldesh
										<option  VALUE="BB">Barbados
										<option  VALUE="BY">Belarus
										<option  VALUE="BE">Belgium
										<option  VALUE="BZ">Belize
										<option  VALUE="BJ">Benin
										<option  VALUE="BM">Bermuda
										<option  VALUE="BT">Bhutan
										<option  VALUE="BO">Bolivia
										<option  VALUE="BA">Bosnia &amp; Herzegovina
										<option  VALUE="BW">Botswana
										<option  VALUE="BR">Brazil
										<option  VALUE="BN">Brunei
										<option  VALUE="BG">Bulgaria
										<option  VALUE="BF">Burkina Faso
										<option  VALUE="BI">Burundi
										<option  VALUE="KH">Cambodia
										<option  VALUE="CM">Cameroon
										<option  VALUE="CA">Canada
										<option  VALUE="CV">Cape Verde
										<option  VALUE="KY">Cayman Islands
										<option  VALUE="CF">Central African Republic
										<option  VALUE="CL">Chile
										<option  VALUE="CX">Christmas Island
										<option  VALUE="CO">Colombia
										<option  VALUE="KM">Comoros
										<option  VALUE="CG">Congo
										<option  VALUE="CK">Cook Islands
										<option  VALUE="CR">Costa Rica
										<option  VALUE="CI">Cote D&#39;Ivoire
										<option  VALUE="HR">Croatia
										<option  VALUE="CU">Cuba
										<option  VALUE="CY">Cyprus
										<option  VALUE="CZ">Czech Republic
										<option  VALUE="CD">Democratic Republic of the Congo
										<option  VALUE="DK">Denmark
										<option  VALUE="DJ">Djibouti
										<option  VALUE="DM">Dominica
										<option  VALUE="DO">Dominican Republic
										<option  VALUE="EC">Ecuador
										<option  VALUE="EG">Egypt
										<option  VALUE="SV">El Salvador
										<option  VALUE="GQ">Equitorial Guinea
										<option  VALUE="ER">Eritrea
										<option  VALUE="EE">Estonia
										<option  VALUE="ET">Ethiopia
										<option  VALUE="FK">Falkland Islands
										<option  VALUE="FJ">Fiji
										<option  VALUE="FI">Finland
										<option  VALUE="FR">France
										<option  VALUE="GF">French Guiana
										<option  VALUE="PF">French Polynesia
										<option  VALUE="GA">Gabon
										<option  VALUE="GM">Gambia
										<option  VALUE="GE">Georgia
										<option  VALUE="DE">Germany
										<option  VALUE="GH">Ghana
										<option  VALUE="GR">Greece
										<option  VALUE="GL">Greenland
										<option  VALUE="GD">Grenada
										<option  VALUE="GP">Guadaloupe
										<option  VALUE="GU">Guam
										<option  VALUE="GT">Guatemala
										<option  VALUE="GN">Guinea
										<option  VALUE="GW">Guinea-Bissau
										<option  VALUE="GY">Guyana
										<option  VALUE="HT">Haiti
										<option  VALUE="HN">Honduras
										<option  VALUE="HK">Hong Kong
										<option  VALUE="HU">Hungary
										<option  VALUE="IS">Iceland
										<option  VALUE="IN">India
										<option  VALUE="ID">Indonesia
										<option  VALUE="IR">Iran
										<option  VALUE="IQ">Iraq
										<option  VALUE="IE">Ireland
										<option  VALUE="IL">Israel
										<option  VALUE="IT">Italy
										<option  VALUE="JM">Jamaica
										<option  VALUE="JP">Japan
										<option  VALUE="JO">Jordan
										<option  VALUE="KZ">Kazakhstan
										<option  VALUE="KE">Kenya
										<option  VALUE="KI">Kiribati
										<option  VALUE="KN">Kitts and Nevis
										<option  VALUE="KW">Kuwait
										<option  VALUE="KG">Kyrgyzstan
										<option  VALUE="LA">Laos
										<option  VALUE="LV">Latvia
										<option  VALUE="LB">Lebanon
										<option  VALUE="LS">Lesotho
										<option  VALUE="LR">Liberia
										<option  VALUE="LY">Libya
										<option  VALUE="LI">Liechtenstein
										<option  VALUE="LT">Lithuania
										<option  VALUE="LU">Luxembourg
										<option  VALUE="MO">Macau
										<option  VALUE="MK">Macedonia
										<option  VALUE="MG">Madagascar
										<option  VALUE="MW">Malawi
										<option  VALUE="MY">Malaysia
										<option  VALUE="MV">Maldives
										<option  VALUE="ML">Mali
										<option  VALUE="MT">Malta
										<option  VALUE="MH">Marshall Islands
										<option  VALUE="MQ">Martinique
										<option  VALUE="MR">Mauritania
										<option  VALUE="MU">Mauritius
										<option  VALUE="YT">Mayotte
										<option  VALUE="MX">Mexico
										<option  VALUE="FM">Micronesia
										<option  VALUE="MD">Moldova
										<option  VALUE="MN">Mongolia
										<option  VALUE="MS">Montserrat
										<option  VALUE="MA">Morocco
										<option  VALUE="MZ">Mozambique
										<option  VALUE="MM">Myanmar
										<option  VALUE="NA">Namibia
										<option  VALUE="NR">Nauru
										<option  VALUE="NP">Nepal
										<option  VALUE="NL">Netherlands
										<option  VALUE="AN">Netherlands Antilles
										<option  VALUE="NC">New Caledonia
										<option  VALUE="NZ">New Zealand
										<option  VALUE="NI">Nicaragua
										<option  VALUE="NE">Niger
										<option  VALUE="NG">Nigeria
										<option  VALUE="NU">Niue
										<option  VALUE="KP">North Korea
										<option  VALUE="MP">Northern Mariana Islands
										<option  VALUE="NO">Norway
										<option  VALUE="OM">Oman
										<option  VALUE="ZZ">Other (not listed)
										<option  VALUE="PK">Pakistan
										<option  VALUE="PW">Palau
										<option  VALUE="PA">Panama
										<option  VALUE="PG">Papua New Guinea
										<option  VALUE="PY">Paraguay
										<option  VALUE="CN">People&#39;s Rep. of China
										<option  VALUE="PE">Peru
										<option  VALUE="PH">Philippines
										<option  VALUE="PN">Pitcairn Island
										<option  VALUE="PL">Poland
										<option  VALUE="PT">Portugal
										<option  VALUE="PR">Puerto Rico
										<option  VALUE="QA">Qatar
										<option  VALUE="RE">Reunion
										<option  VALUE="RO">Romania
										<option  VALUE="RU">Russia
										<option  VALUE="RW">Rwanda
										<option  VALUE="GS">S. Georgia and the S. Sandwich Is.
										<option  VALUE="LC">Saint Lucia
										<option  VALUE="VC">Saint Vincent &amp; the Grenadines
										<option  VALUE="AS">Samoa-American
										<option  VALUE="WS">Samoa-Western
										<option  VALUE="SM">San Marino
										<option  VALUE="ST">Sao Tome and Principe
										<option  VALUE="SA">Saudi Arabia
										<option  VALUE="SN">Senegal
										<option  VALUE="SC">Seychelles
										<option  VALUE="SL">Sierra Leone
										<option  VALUE="SG">Singapore
										<option  VALUE="SK">Slovakie
										<option  VALUE="SI">Slovenia
										<option  VALUE="SB">Solomon Islands
										<option  VALUE="SO">Somalia
										<option  VALUE="ZA">South Africa
										<option  VALUE="KR">South Korea
										<option  VALUE="ES">Spain
										<option  VALUE="LK">Sri Lanka
										<option  VALUE="SD">Sudan
										<option  VALUE="SR">Suriname
										<option  VALUE="SZ">Swaziland
										<option  VALUE="SE">Sweden
										<option  VALUE="CH">Switzerland
										<option  VALUE="SY">Syria
										<option  VALUE="TW">Taiwan
										<option  VALUE="TJ">Tajikistan
										<option  VALUE="TZ">Tanzania
										<option  VALUE="TH">Thailand
										<option  VALUE="TG">Togo
										<option  VALUE="TO">Tonga
										<option  VALUE="TT">Trinidad and Tobago
										<option  VALUE="TN">Tunisia
										<option  VALUE="TR">Turkey
										<option  VALUE="TM">Turkmenistan
										<option  VALUE="TV">Tuvalu
										<option  VALUE="UG">Uganda
										<option  VALUE="UA">Ukraine
										<option  VALUE="AE">United Arab Emirates
										<option  VALUE="GB">United Kingdom
										<option  VALUE="UY">Uruguay
										<option  VALUE="US">USA
										<option  VALUE="UZ">Uzbekistan
										<option  VALUE="VU">Vanuatu
										<option  VALUE="VA">Vatican City
										<option  VALUE="VE">Venezuela
										<option  VALUE="VN">Viet Nam
										<option  VALUE="VI">Virgin Islands
										<option  VALUE="EH">Western Sahara
										<option  VALUE="YE">Yemen
										<option  VALUE="YU">Yugoslavia
										<option  VALUE="ZM">Zambia
										<option  VALUE="ZW">Zimbabwe
							</select>
                                                         </font>--%>
                                                         <asp:DropDownList ID="cmbcountry" runat="server" Height="18px" Width="128px">
                                                         <asp:ListItem>India </asp:ListItem>
<asp:ListItem>USA </asp:ListItem>
<asp:ListItem>Canada </asp:ListItem>
<asp:ListItem>Australia </asp:ListItem>
<asp:ListItem>United Kingdom </asp:ListItem>
<asp:ListItem>Japan </asp:ListItem>
<asp:ListItem>Afghanistan </asp:ListItem>
<asp:ListItem>Albania </asp:ListItem>
<asp:ListItem>Algeria </asp:ListItem>
<asp:ListItem>Andorra </asp:ListItem>
<asp:ListItem>Angola </asp:ListItem>
<asp:ListItem>Anguilla </asp:ListItem>
<asp:ListItem>Antarctica </asp:ListItem>
<asp:ListItem>Antigua and Barbuda </asp:ListItem>
<asp:ListItem>Argentina </asp:ListItem>
<asp:ListItem>Armenia </asp:ListItem>
<asp:ListItem>Aruba </asp:ListItem>
<asp:ListItem>Australia </asp:ListItem>
<asp:ListItem>Austria </asp:ListItem>
<asp:ListItem>Azerbaijan </asp:ListItem>
<asp:ListItem>Bahamas </asp:ListItem>
<asp:ListItem>Bahrain </asp:ListItem>
<asp:ListItem>Bangaldesh </asp:ListItem>
<asp:ListItem>Barbados </asp:ListItem>
<asp:ListItem>Belarus </asp:ListItem>
<asp:ListItem>Belgium </asp:ListItem>
<asp:ListItem>Belize </asp:ListItem>

<asp:ListItem>Bermuda </asp:ListItem>
<asp:ListItem>Bhutan </asp:ListItem>
<asp:ListItem>Bolivia </asp:ListItem>
<asp:ListItem>Bosnia </asp:ListItem>
<asp:ListItem>Herzegovina </asp:ListItem>
<asp:ListItem>Botswana </asp:ListItem>
<asp:ListItem>Brazil </asp:ListItem>
<asp:ListItem>Brunei </asp:ListItem>
<asp:ListItem>Bulgaria </asp:ListItem>
<asp:ListItem>Burkina Faso </asp:ListItem>
<asp:ListItem>Burundi </asp:ListItem>
<asp:ListItem>Cambodia </asp:ListItem>
<asp:ListItem>Cameroon </asp:ListItem>
<asp:ListItem>Canada </asp:ListItem>
<asp:ListItem>Cape Verde </asp:ListItem>
<asp:ListItem>Cayman Islands </asp:ListItem>
<asp:ListItem>Central African Republic </asp:ListItem>
<asp:ListItem>Chile </asp:ListItem>
<asp:ListItem>Christmas Island </asp:ListItem>
<asp:ListItem>Colombia </asp:ListItem>
<asp:ListItem>Comoros </asp:ListItem>
<asp:ListItem>Congo </asp:ListItem>
<asp:ListItem>Cook Islands </asp:ListItem>
<asp:ListItem>Costa Rica </asp:ListItem>
										
<asp:ListItem>Ivoire </asp:ListItem>
									

  <asp:ListItem>Croatia </asp:ListItem>
  <asp:ListItem>Cuba </asp:ListItem>
  <asp:ListItem>Cyprus </asp:ListItem>
  <asp:ListItem>Czech Republic </asp:ListItem>
  <asp:ListItem>Democratic Republic of the Congo </asp:ListItem>
  <asp:ListItem>Denmark </asp:ListItem>
  <asp:ListItem>Djibouti </asp:ListItem>
  <asp:ListItem>Dominica </asp:ListItem>
  <asp:ListItem>Dominican Republic </asp:ListItem>
  <asp:ListItem>Ecuador </asp:ListItem>
  <asp:ListItem>Egypt </asp:ListItem>
<asp:ListItem>El Salvador </asp:ListItem>
<asp:ListItem>Eritrea </asp:ListItem>
<asp:ListItem>Estonia </asp:ListItem>
<asp:ListItem>Ethiopia </asp:ListItem>
<asp:ListItem>Falkland Islands </asp:ListItem>
<asp:ListItem>Fiji </asp:ListItem>
<asp:ListItem>Finland </asp:ListItem>
<asp:ListItem>France </asp:ListItem>
<asp:ListItem>French Guiana </asp:ListItem>
<asp:ListItem>French Polynesia </asp:ListItem>
<asp:ListItem>Gabon </asp:ListItem>
<asp:ListItem>Gambia </asp:ListItem>
<asp:ListItem>Georgia </asp:ListItem>
<asp:ListItem>Germany </asp:ListItem>
<asp:ListItem>Ghana </asp:ListItem>
<asp:ListItem>Greece </asp:ListItem>
<asp:ListItem>Greenland </asp:ListItem>
<asp:ListItem>Grenada </asp:ListItem>
<asp:ListItem>Guadaloupe </asp:ListItem>
<asp:ListItem>Guam </asp:ListItem>
<asp:ListItem>Guatemala </asp:ListItem>
<asp:ListItem>Guinea </asp:ListItem>
<asp:ListItem>Guinea-Bissau </asp:ListItem>
<asp:ListItem>Guyana </asp:ListItem>
<asp:ListItem>Haiti </asp:ListItem>
<asp:ListItem>Honduras </asp:ListItem>
<asp:ListItem>Hong Kong </asp:ListItem>
<asp:ListItem>Hungary </asp:ListItem>
<asp:ListItem>Iceland </asp:ListItem>
<asp:ListItem>India </asp:ListItem>
<asp:ListItem>Indonesia </asp:ListItem>
<asp:ListItem>Iran </asp:ListItem>
<asp:ListItem>Iraq </asp:ListItem>
<asp:ListItem>Ireland </asp:ListItem>
<asp:ListItem>Israel </asp:ListItem>
<asp:ListItem>Italy </asp:ListItem>
<asp:ListItem>Jamaica </asp:ListItem>
<asp:ListItem>Japan </asp:ListItem>
<asp:ListItem>Jordan </asp:ListItem>
<asp:ListItem>Kazakhstan </asp:ListItem>
<asp:ListItem>Kenya </asp:ListItem>
<asp:ListItem>Kiribati </asp:ListItem>
<asp:ListItem>Kitts and Nevis </asp:ListItem>
<asp:ListItem>Kuwait </asp:ListItem>
<asp:ListItem>Kyrgyzstan </asp:ListItem>
<asp:ListItem>Laos </asp:ListItem>
<asp:ListItem>Latvia </asp:ListItem>
<asp:ListItem>Lebanon </asp:ListItem>
<asp:ListItem>Lesotho </asp:ListItem>
<asp:ListItem>Liberia </asp:ListItem>
<asp:ListItem>Libya </asp:ListItem>
<asp:ListItem>Liechtenstein </asp:ListItem>
<asp:ListItem>Lithuania </asp:ListItem>
<asp:ListItem>Luxembourg </asp:ListItem>
<asp:ListItem>Macau </asp:ListItem>
<asp:ListItem>Macedonia </asp:ListItem>
<asp:ListItem>Madagascar </asp:ListItem>
<asp:ListItem>Malawi </asp:ListItem>
<asp:ListItem>Malaysia </asp:ListItem>
<asp:ListItem>Maldives </asp:ListItem>
<asp:ListItem>Mali </asp:ListItem>
<asp:ListItem>Malta </asp:ListItem>
<asp:ListItem>Marshall Islands </asp:ListItem>
<asp:ListItem>Martinique </asp:ListItem>
<asp:ListItem>Mauritania </asp:ListItem>
<asp:ListItem>Mauritius </asp:ListItem>
<asp:ListItem>Mayotte </asp:ListItem>
<asp:ListItem>Mexico </asp:ListItem>
<asp:ListItem>Micronesia </asp:ListItem>
<asp:ListItem>Moldova </asp:ListItem>
<asp:ListItem>Mongolia </asp:ListItem>
<asp:ListItem>Montserrat </asp:ListItem>
<asp:ListItem>Morocco </asp:ListItem>
<asp:ListItem>Mozambique </asp:ListItem>
<asp:ListItem>Myanmar </asp:ListItem>
<asp:ListItem>Namibia </asp:ListItem>
<asp:ListItem>Nauru </asp:ListItem>
<asp:ListItem>Nepal </asp:ListItem>
<asp:ListItem>Netherlands </asp:ListItem>
<asp:ListItem>Netherlands Antilles </asp:ListItem>
<asp:ListItem>New Caledonia </asp:ListItem>
<asp:ListItem>New Zealand </asp:ListItem>
<asp:ListItem>Nicaragua </asp:ListItem>
<asp:ListItem>Niger </asp:ListItem>
<asp:ListItem>Nigeria </asp:ListItem>
<asp:ListItem>Niue </asp:ListItem>
<asp:ListItem>North Korea </asp:ListItem>
<asp:ListItem>Northern Mariana Islands </asp:ListItem>
<asp:ListItem>Oman </asp:ListItem>
<asp:ListItem>Other (not listed) </asp:ListItem>
<asp:ListItem>Pakistan </asp:ListItem>
<asp:ListItem>Palau </asp:ListItem>
<asp:ListItem>Panama </asp:ListItem>
<asp:ListItem>Papua New Guinea </asp:ListItem>
<asp:ListItem>Paraguay </asp:ListItem>
<asp:ListItem>Rep. of China </asp:ListItem>
<asp:ListItem>Peru </asp:ListItem>
<asp:ListItem>Philippines </asp:ListItem>
<asp:ListItem>Pitcairn Island </asp:ListItem>
<asp:ListItem>Poland </asp:ListItem>
<asp:ListItem>Portugal </asp:ListItem>
<asp:ListItem>Puerto Rico </asp:ListItem>
<asp:ListItem>Qatar </asp:ListItem>
<asp:ListItem>Reunion </asp:ListItem>
<asp:ListItem>Romania </asp:ListItem>
<asp:ListItem>Russia </asp:ListItem>
<asp:ListItem>Rwanda </asp:ListItem>
<asp:ListItem>S. Georgia and the S. Sandwich Is. </asp:ListItem>
<asp:ListItem>Saint Lucia </asp:ListItem>
<asp:ListItem>Saint Vincent </asp:ListItem>
<asp:ListItem>Samoa-American </asp:ListItem>
<asp:ListItem>Samoa-Western </asp:ListItem>
<asp:ListItem>San Marino </asp:ListItem>
<asp:ListItem>Sao Tome and Principe </asp:ListItem>
<asp:ListItem>Saudi Arabia </asp:ListItem>
<asp:ListItem>Senegal </asp:ListItem>
<asp:ListItem>Seychelles </asp:ListItem>
<asp:ListItem>Sierra Leone </asp:ListItem>
<asp:ListItem>Singapore </asp:ListItem>
<asp:ListItem>Slovakie </asp:ListItem>
<asp:ListItem>Slovenia </asp:ListItem>
<asp:ListItem>Solomon Islands </asp:ListItem>
<asp:ListItem>Somalia </asp:ListItem>
<asp:ListItem>South Africa </asp:ListItem>
<asp:ListItem>South Korea </asp:ListItem>
<asp:ListItem>Spain </asp:ListItem>
<asp:ListItem>Sri Lanka </asp:ListItem>
<asp:ListItem>Sudan </asp:ListItem>
<asp:ListItem>Suriname </asp:ListItem>
<asp:ListItem>Swaziland </asp:ListItem>
<asp:ListItem>Sweden </asp:ListItem>
<asp:ListItem>Switzerland </asp:ListItem>
<asp:ListItem>Syria </asp:ListItem>
<asp:ListItem>Taiwan </asp:ListItem>
<asp:ListItem>Tajikistan </asp:ListItem>
<asp:ListItem>Tanzania </asp:ListItem>
<asp:ListItem>Thailand </asp:ListItem>
<asp:ListItem>Togo </asp:ListItem>
<asp:ListItem>Tonga </asp:ListItem>
<asp:ListItem>Trinidad and Tobago </asp:ListItem>
<asp:ListItem>Tunisia </asp:ListItem>
<asp:ListItem>Turkey </asp:ListItem>
<asp:ListItem>Turkmenistan </asp:ListItem>
<asp:ListItem>Tuvalu </asp:ListItem>
<asp:ListItem>Uganda </asp:ListItem>
<asp:ListItem>Ukraine </asp:ListItem>
<asp:ListItem>United Arab Emirates </asp:ListItem>
<asp:ListItem>United Kingdom </asp:ListItem>
<asp:ListItem>Uruguay </asp:ListItem>
<asp:ListItem>USA </asp:ListItem>
<asp:ListItem>Uzbekistan </asp:ListItem>
<asp:ListItem>Vanuatu </asp:ListItem>
<asp:ListItem>Vatican City </asp:ListItem>
<asp:ListItem>Venezuela </asp:ListItem>
<asp:ListItem>Viet Nam </asp:ListItem>
<asp:ListItem>Virgin Islands </asp:ListItem>
<asp:ListItem>Western Sahara </asp:ListItem>
<asp:ListItem>Yemen </asp:ListItem>
<asp:ListItem>Yugoslavia </asp:ListItem>
<asp:ListItem>Zambia </asp:ListItem>
<asp:ListItem>Zimbabwe </asp:ListItem>
                                                         </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                             ControlToValidate="cmbcountry" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                                                         <b><font color="#094e6f" face="Verdana" size="2">Phone/<br />
                                                         Mobile Number </font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtphone" 
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
                                <b><font color="#094e6f" face="Verdana" size="2">Email Address :</font></b></div>
                        </td>
                        <td>
                            <div align="left">
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;</font><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemail" 
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
                        <td colspan="2" height="19">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
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
                            &nbsp;</td>
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
                colspan="3" valign="top">
                &nbsp;</td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <div align="left">
                    <div align="left">
                        <font color="#094e6f" face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div>
                </div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                &nbsp;</td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <div align="center">
        <!--  <input name="btnconti" type=submit id="btnconti" value="Continue"  onClick='return checktxt(this.form)' style="BACKGROUND-COLOR: #f8f8f8; BORDER-BOTTOM: #094e6f 1px solid; BORDER-LEFT: #094e6f 1px solid; BORDER-RIGHT: #094e6f 1px solid; BORDER-TOP: #094e6f 1px solid; FONT-FAMILY: Verdana; FONT-SIZE: 10pt; PADDING-BOTTOM: 1px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 1px" tabindex="16" >-->
		            <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/ADD.GIF" 
                        onclick="ImageButton9_Click" />
		            <asp:ImageButton ID="btncontinue" runat="server" 
                        ImageUrl="~/images/CONTI.GIF" 
                        onclick="btncontinue_Click" />
&nbsp;</div>
            </td>
            </font>
        </tr>
        <tr>
            <font face="Verdana, Arial, Helvetica, sans-serif" size="4">
            <td background="../../ONLINE%20EXAM%20(WEB%20APPLICATION)/images/bg_all.gif" 
                colspan="3" valign="top">
                <div align="center">
                    <asp:ImageButton ID="ImageButton3" runat="server" 
                        ImageUrl="~/images/ALL_BOT.GIF" />
                </div>
            </td>
            </font>
        </tr>
    </table>
</asp:Content>

