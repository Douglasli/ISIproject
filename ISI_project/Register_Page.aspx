﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_Page.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            width: 785px;
        }

        .auto-style4 {
            width: 845px;
            height: 51px;
        }

        .auto-style23 {
            width: 125px;
            height: 43px;
        }

        .auto-style24 {
            height: 43px;
        }

        .auto-style25 {
            width: 418px;
        }

        .auto-style26 {
            width: 598px;
        }
    </style>
</head>
<body style="background-image: url('/images/backlogin.jpg'); height: 565px;">
    <form id="form1" runat="server">
        <div style="width: 100%; height: 50px; background-color: rgba(255,255,255,0.5); text-align: justify;">
            <table style="width: 100%; height: 100%;">
                <tr>
                    <td class="auto-style1" style="text-align: center">
                        <table class="auto-style4" style="width: 100%; height: 100%">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Homepage" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Homepageafterlogin.aspx" Text="Homepage" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Product" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Vendor" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Customer" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx" /></td>
                                <td class="auto-style24" style="text-align: right">
                                    <asp:Button runat="server" ID="Login" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Login" PostBackUrl="~/Login_page.aspx" /></td>
                                <td class="auto-style24" style="text-align: left">
                                    <asp:Button runat="server" ID="Register" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <div style="width: 100%; height: 100%s; background-color: rgba(255,255,255,0.5);">
            <hr />
            <br />
            <br />
            <br />
            <br />

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style25">Firsr name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox1"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">Lastname<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox2"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td>Email<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox3"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Address<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox4"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">User name<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox5"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">Passward<asp:TextBox ID="TextBox5" TextMode="password" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">Password confirm
                    <asp:TextBox ID="TextBox6" TextMode="password" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToValidate="TextBox6"
                            CssClass="ValidationError"
                            ControlToCompare="TextBox5"
                            ErrorMessage="No Match"
                            ToolTip="Password must be the same" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox6"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>customer</asp:ListItem>
                            <asp:ListItem Value="vender ">vender</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:RegularExpressionValidator ID="Regex" runat="server" ControlToValidate="Textbox5"
                            ValidationExpression="^(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$"
                            ErrorMessage="Password must contain: Minimum 6 characters atleast 1 UpperCase Alphabet and 1 Number" ForeColor="Red" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ErrorMessage="&laquo; (Required)"
                            ControlToValidate="TextBox5"
                            CssClass="ValidationError"
                            ToolTip="Compare Password is a REQUIRED field">
                        </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            <asp:Button ID="Button1" runat="server" Text="Regist" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
