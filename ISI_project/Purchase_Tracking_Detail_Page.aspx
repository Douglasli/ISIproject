<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase_Tracking_Detail_Page.aspx.cs" Inherits="_Default" %>

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
            width: 100%;
            height: 257px;
        }
        .auto-style34 {
            width: 167px;
            height: 51px;
        }
        .auto-style36 {
        }
        .auto-style35 {
            height: 29px;
        }
        .auto-style31 {
            width: 167px;
            height: 29px;
        }
        .auto-style33 {
            width: 167px;
            height: 23px;
        }
        .auto-style37 {
            height: 23px;
            width: 216px;
        }
        .auto-style30 {
            height: 23px;
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
                    <asp:button runat="server" id="Homepage" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Homepageafterlogin.aspx" Text="Homepage"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Product" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Vendor" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx"/></td>
                <td class="auto-style23">
                    <asp:button runat="server" id="Customer" style="border: 0px solid #FFFFFF;width:100%;height:100%; background-color: rgba(255,255,255,0.1);font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx"/></td>
                <td class="auto-style24" style="text-align: right">
                    <asp:button runat="server" id="Login" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Login" PostBackUrl="~/Login_page.aspx"/></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"/></td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
        <hr />
    <div style="width:100%;height: 1019px; background-color: rgba(255,255,255,0.5);">
        <br />
        <br />
        <br />
        <div>
            <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="User_Profile" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile"/></td>
                    <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" Height="60%" Width="73%" Font-Names="Arial" Font-Size="Medium" >
                        </asp:GridView>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="Shopping_Cart" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart"/></td>
                    <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                        <asp:GridView ID="GridView2" runat="server" Height="100%" Width="73%" Font-Bold="False" Font-Names="Arial" Font-Size="Medium">
                        </asp:GridView>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="Purchase_Tracking" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking"/></td>
                    <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        </td>
                    <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">Total:</td>
                    <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" Text="Label" style="text-align: left"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style37" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">
                    <asp:button runat="server" id="Cancel_btn" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Cancel Order" OnClick="Cancel_btn_Click"/></td>
                    <td class="auto-style30" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style37" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">&nbsp;</td>
                    <td class="auto-style30" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left">&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
