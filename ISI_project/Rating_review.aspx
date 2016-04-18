<%@ Page Language="C#" AutoEventWireup="true"    CodeFile="Rating_review.aspx.cs" Inherits="_Default"%>

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
            width: 806px;
            height: 257px;
        }
        .auto-style34 {
            width: 86px;
            height: 51px;
        }
        .auto-style36 {
        }
        .auto-style35 {
        }
        .auto-style31 {
            width: 86px;
            height: 29px;
        }
        .auto-style33 {
            width: 86px;
            height: 23px;
        }
        .auto-style38 {
            width: 100%;
        }
        .auto-style39 {
            width: 230px;
            text-align: left;
        }
        .auto-style40 {
            text-align: left;
        }
        .auto-style41 {
            width: 357px;
        }
        .auto-style43 {
            height: 23px;
            width: 339px;
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
                                       <asp:button runat="server" id="Logout" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Logout"  /></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"/>
                    <asp:Button ID="Button1" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/Customer_Page.aspx" />
                </td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
        <hr />
    <div style="width:100%;height: 100%; background-color: rgba(255,255,255,0.5);">
        <br />
        <br />
        <br />
        <div>
            <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="User_Profile" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile"/></td>
                    <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                        <table class="auto-style38">
                            <tr>
                                <td class="auto-style39">Purchase number</td>
                                <td class="auto-style40">item id</td>
                            </tr>
                            <tr>
                                <td class="auto-style39">
                                    <asp:Label ID="Label1" runat="server" Text="PoNum"></asp:Label>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="Label2" runat="server" Text="itemid"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="Shopping_Cart" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart"/></td>
                    <td class="auto-style41" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left; font-size: x-large; border-left-style: double; border-left-width: medium;">
                        &nbsp;&nbsp;Rating this product:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style41" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left; font-size: x-large; border-left-style: none; border-left-width: medium;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" style="margin-left: 0px" Width="145px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                    <asp:button runat="server" id="Purchase_Tracking" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking"/></td>
                    <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="158px" style="margin-left: 0px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        </td>
                    <td class="auto-style35" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                    <asp:button runat="server" id="Submit" style="border: 0px solid #FFFFFF; width:100%; height:100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal;font-size: large;" Text="Submit" OnClick="Submit_Click"/></td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style43" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style43" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;" colspan="2">&nbsp;</td>
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
