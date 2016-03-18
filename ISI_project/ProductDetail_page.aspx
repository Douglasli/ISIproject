<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetail_page.aspx.cs" Inherits="_Default" %>

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
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 583px;
        }
        .style3
        {
            width: 583px;
            height: 20px;
        }
        .style4
        {}
        .style5
        {
            width: 384px;
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
                    <asp:button runat="server" id="Login" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Login" PostBackUrl="~/Login_page.html"/></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Signup_page.html"/></td>
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
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" style="text-align: center" 
                        Text="ProductName"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style5" rowspan="7">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="style2">
                    Category:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Price:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Connect vendor:<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Buy:<asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="style4" rowspan="4">
                    <asp:Panel ID="Panel2" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Paypal:<asp:ImageButton ID="ImageButton1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Visa:<asp:ImageButton ID="ImageButton2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    MasterCard:<asp:ImageButton ID="ImageButton3" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Add to cart:<asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel1" runat="server">
                        Payment:<asp:Button ID="Button3" runat="server" Text="Button" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Description:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
