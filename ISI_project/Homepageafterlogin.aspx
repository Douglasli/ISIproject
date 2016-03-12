<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepageafterlogin.aspx.cs" Inherits="_Default" %>

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
        .auto-style25 {
            height: 54px;
        }
        </style>
    </head>
<body style="background-image:url('/images/backlogin.jpg'); height: 565px;">
    <form id="form1" runat="server">
    <div style="width:100%; height: 50px; background-color: rgba(255,255,255,0.5); text-align: justify;">
        <table style="width:100%; height: 100%;">
            <tr>
                <td class="auto-style1" style="text-align: center">
        <table class="auto-style4" style="width:100%; height:100%">
            <tr>
                <td class="auto-style23">
                    <asp:button runat="server" id="Homepage" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Homepage.aspx" Text="Homepage"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Product" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Vendor" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Customer" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx"/></td>
                <td class="auto-style24" style="text-align: right">
                    <asp:button runat="server" id="Login" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Logout" OnClick="Login_Click" /></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"/>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr style="text-align: center">
                <td rowspan="3">
                    <div style="width:100%;height: 100%; background-color: rgba(255,255,255,0.7);">

                    </div>
                </td>
                <td>
        <asp:Label ID="Label1" runat="server" Text="ISI Online Shopping mall" Font-Bold="True" Font-Italic="False" Font-Names="Buxton Sketch" Font-Size="XX-Large" ForeColor="#4B4B4B" Height="100%" Width="100%" style="margin-right: 0px"></asp:Label>
                </td>
                <td rowspan="3">
                    <div style="width:100%;height: 100%; background-color: rgba(255,255,255,0.7);">
                    </div>
                </td>
            </tr>
            <tr style="text-align: right">
                <td class="auto-style25" style="text-align: center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="400px" Height="34px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; font-family: 'Buxton Sketch'; font-size: x-large;">
                    Click 
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" ImageUrl="~/images/ali.png" Width="105px" />
                    me</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
