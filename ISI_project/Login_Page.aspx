﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Page.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        .auto-style26 {
            width: 319px;
        }
        .auto-style27 {
            height: 43px;
            width: 129px;
        }
        </style>
    </head>
<body style="background-image:url('/images/backlogin.jpg'); height: 565px;">
    <form id="form1" runat="server" style="width:100%;">
    <div style="width:100%; height: 50px; background-color: rgba(255,255,255,0.5); text-align: justify;">
        <table style="width:100%; height: 100%;">
            <tr>
                <td class="auto-style1" style="text-align: center">
        <table class="auto-style4" style="width:100%; height:100%">
            <tr>
                <td class="auto-style23">
                    <asp:button runat="server" id="Homepage" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Homepageafterlogin.aspx" Text="Homepage"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Product" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Vendor" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Customer" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx"/></td>
                <td class="auto-style27" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style24" style="text-align: left">
                    &nbsp;</td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <br />
        <div >
        <table style="border-style: inherit; border-color: #8BC6ED; width:auto; height: 166px; margin-left:20%; margin-right:20%; margin-bottom:auto; margin-top:10%">
            <tr>
                <td class="auto-style26">User Name<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="142px" Height="24px"></asp:TextBox>
                </td>
                <td rowspan="2">
                    Do not have a account? Just click <a href="Register_Page.aspx">here</a> to registe.</td>
            </tr>
            <tr>
                <td class="auto-style26">Password<br />
                    <asp:TextBox ID="TextBox2" TextMode="password"  runat="server" Width="141px" Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style =" text-align: right;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Log in" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <asp:Label ID="lb1" runat="server" Font-Bold="true" ForeColor="#FF3300"></asp:Label>
        
        </div>
    </form>
</body>
</html>
