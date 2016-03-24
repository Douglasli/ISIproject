<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Page.aspx.cs" Inherits="_Default" %>

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

        .auto-style26 {
            width: 100%;
            height: 257px;
        }

        .auto-style30 {
            height: 23px;
        }

        .auto-style31 {
            width: 167px;
            height: 29px;
        }

        .auto-style33 {
            width: 167px;
            height: 23px;
        }

        .auto-style34 {
            width: 167px;
            height: 51px;
        }

        .auto-style35 {
            height: 29px;
        }

        .auto-style36 {
            height: 29px;
            width: 216px;
        }

        .auto-style37 {
            height: 23px;
            width: 216px;
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
                                    <asp:Button runat="server" ID="Logout" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Logout" PostBackUrl="~/Login_page.aspx" OnClick="Logout_Click" /></td>
                                <td class="auto-style24" style="text-align: left">
                                    <asp:Button runat="server" ID="Register" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx" />
                                    <asp:Button ID="Button1" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/Customer_Page.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <div style="width: 100%; height: 511px; background-color: rgba(255,255,255,0.5);">
            <hr />
            <br />
            <br />
            <br />
            <div>
                <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                    <tr>
                        <td class="auto-style34" rowspan="2">
                            <asp:Button runat="server" ID="User_Profile" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile" /></td>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">User ID:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">User Name:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34" rowspan="2">
                            <asp:Button runat="server" ID="Shopping_Cart" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart" /></td>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">First Name:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">Last Name:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34" rowspan="2">
                            <asp:Button runat="server" ID="Purchase_Tracking" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking" /></td>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">Email:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">Address:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">
                            <asp:Button runat="server" ID="Homepage3" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ChangePW_Page.aspx" Text="Change Password" /></td>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">Type:</td>
                        <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33">&nbsp;</td>
                        <td class="auto-style37" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">&nbsp;</td>
                        <td class="auto-style30" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style33">&nbsp;</td>
                        <td class="auto-style37" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">&nbsp;</td>
                        <td class="auto-style30" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
