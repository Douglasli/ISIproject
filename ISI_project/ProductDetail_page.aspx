<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetail_page.aspx.cs" Inherits="_Default" %>

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

        .style1 {
            width: 100%;
        }

        .style2 {
            width: 583px;
        }

        .style3 {
            width: 583px;
            height: 20px;
        }

        .style4 {
        }

        .style5 {
            width: 384px;
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
                                    <asp:Button runat="server" ID="Logout" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Logout" OnClick="Logout_Click" />
                                    <asp:Button runat="server" ID="Login" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Login" PostBackUrl="~/Login_page.aspx" /></td>
                                <td class="auto-style24" style="text-align: left">
                                    <asp:Button runat="server" ID="Register" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx" />
                                    <asp:Button ID="Button4" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/Customer_Page.aspx" />
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
            <table class="style1">
                <tr>
                    <td>
                        <asp:Label ID="pname" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="style1">
                <tr>
                    <td class="style5" rowspan="7">
                        <asp:Image ID="Image1" runat="server" Height="240px" Width="251px" />
                    </td>
                    <td class="style2">Category:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td rowspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">Price:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">Add to cart:</td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" Text="BUY" BorderStyle="None" Height="50px" Width="100px" Style="background-color: rgba(255,255,255,0.1);" Font-Bold="True" Font-Names="Arial" Font-Size="Large" OnClick="Button2_Click" />
                        <asp:Label ID="Label5" runat="server" Font-Size="XX-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">Description:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
