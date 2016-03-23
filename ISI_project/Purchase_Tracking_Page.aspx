<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase_Tracking_Page.aspx.cs" Inherits="_Default" %>

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
            width: 860px;
            height: 297px;
        }
        .auto-style36 {
            width: 688px;
        }
        .auto-style31 {
            width: 214px;
            height: 30px;
        }
        .auto-style37 {
            height: 23px;
            width: 688px;
        }
        .auto-style38 {
            height: 23px;
            width: 215px;
        }
        .auto-style39 {
            height: 30px;
            width: 215px;
        }
        .auto-style43 {
            width: 214px;
            height: 51px;
        }
        .auto-style44 {
            height: 29px;
            width: 215px;
        }
        .auto-style45 {
            width: 215px;
        }
        .auto-style46 {
            width: 214px;
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
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <br />
        <br />
        <br />
        <div>
            <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                <tr>
                    <td class="auto-style43" rowspan="2">
                    <asp:button runat="server" id="User_Profile" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile"/></td>
                    <td class="auto-style36" style="font-family: 'Arial Unicode MS'; " rowspan="7" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True"  AutoGenerateColumns="False" Height="27px" Width="519px">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFormatString="Purchase_Tracking_Detail_Page.aspx?p={0}" DataTextField="poNum" HeaderText="Purchase Number" NavigateUrl="~/Purchase_Tracking_Detail_Page.aspx" DataNavigateUrlFields="poNum" />
                                <asp:BoundField DataField="purchaseDate" HeaderText="Purchase Date" />
                                <asp:BoundField DataField="status" HeaderText="Status" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                <tr><td></td><td></td><td></td></tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                    <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;" class="auto-style45">&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style43" rowspan="2">
                    <asp:button runat="server" id="Shopping_Cart" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart"/></td>
                    <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;" class="auto-style45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style43" rowspan="2">
                    <asp:button runat="server" id="Purchase_Tracking" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking"/></td>
                    <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        &nbsp;</td>
                    <td class="auto-style39" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style46"></td>
                    <td class="auto-style46" style="font-family: 'Arial Unicode MS'; ">
                        <asp:button runat="server" id="c_p" style="border: 0px solid #FFFFFF; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large; margin-left: 0px;" Text="Current Purchase" Height="100%" OnClick="c_p_Click" Width="100%"/>
                        </td>
                    <td class="auto-style38" style="font-family: 'Arial Unicode MS'; ">
                        <asp:button runat="server" id="p_p" style="border: 0px solid #FFFFFF; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large; margin-left: 0px;" Text="Past Purchase" Height="100%" OnClick="p_p_Click" Width="100%"/>
                        </td>
                    <td class="auto-style38" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left"></td>
                </tr>
                <tr>
                    <td class="auto-style46"></td>
                    <td class="auto-style37" style="font-family: 'Arial Unicode MS'; " colspan="2">&nbsp;</td>
                    <td class="auto-style38" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left"></td>
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
