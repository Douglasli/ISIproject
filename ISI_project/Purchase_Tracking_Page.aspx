<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase_Tracking_Page.aspx.cs" Inherits="_Default" %>

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

        .rtable {
            border-bottom: thin solid #000000; 
            font-family: Arial; 
            width: 120%; 
            font-size: large;
        }

        .rtable th {
            border-bottom-width: 1px;
	        border-bottom-style: solid;
	        border-color: #666666;
	        background-color: rgba(	0,191,255,0.1);
            
        }

        .rtable tr {
            border-bottom-width: 1px;
	        border-bottom-style: solid;
	        border-color: #666666;
            
        }

        .rtd{
            padding-bottom: 8px;
            padding-top: 8px;
            
        }

                .button {
            border: 0px solid #FFFFFF; 
            width: 100%; height: 100%; 
            background-color: rgba(255,255,255,0.1);
            font-family: Arial;        
        }
        .auto-style47 {
            height: 23px;
            width: 650px;
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
                                    <asp:Button runat="server" ID="Logout" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Logout" OnClick="Logout_Click" /></td>
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
        <hr />
        <div style="width: 100%; height: 511px; background-color: rgba(255,255,255,0.5);">
            <br />
            <br />
            <br />
            <div>
                <table id="User_pro" class="auto-style26" style="margin-top: 0px; vertical-align: top;">
                    <tr>
                        <td class="auto-style43" rowspan="2">
                            <asp:Button runat="server" ID="User_Profile" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile" /></td>
                        <td class="auto-style36" style="font-family: 'Arial Unicode MS'; vertical-align: top;" rowspan="7" colspan="2">
                            <%--<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" Height="27px" Width="519px">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFormatString="Purchase_Tracking_Detail_Page.aspx?p={0}" DataTextField="poNum" HeaderText="Purchase Number" NavigateUrl="~/Purchase_Tracking_Detail_Page.aspx" DataNavigateUrlFields="poNum" />
                                    <asp:BoundField DataField="purchaseDate" HeaderText="Purchase Date" />
                                    <asp:BoundField DataField="status" HeaderText="Status" />
                                    <asp:BoundField DataField="total" HeaderText="Total price" HtmlEncode="False" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <table>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" Height="27px" Width="519px" Visible="False">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFormatString="Purchase_Tracking_Detail_Page.aspx?p={0}" DataTextField="poNum" HeaderText="Purchase Number" NavigateUrl="~/Purchase_Tracking_Detail_Page.aspx" DataNavigateUrlFields="poNum" />
                                    <asp:BoundField DataField="purchaseDate" HeaderText="Purchase Date" />
                                    <asp:BoundField DataField="status" HeaderText="Status" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <table>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                            </asp:GridView>--%>
                            <br />
                            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                <HeaderTemplate>
                                    <table class="rtable" id="tracking1">
                                        <th>Detail</th>
                                        <th>Purchase Number</th>
                                        <th>Purchase Date</th>
                                        <th>Status</th>
                                        <th>Total</th>
                                        
                                </HeaderTemplate>

                                <ItemTemplate> 
                                    
                                    <tr>
                                    <td class="rtd"><asp:Button class="button" ID="detail1" CommandName="detail" CommandArgument='<%#Eval("poNum") %>' runat="server" Text="Detail" /></td>
                                    <td class="rtd"><%#Eval("poNum") %></td>
                                    <td class="rtd"><%#Eval("purchaseDate") %></td>
                                    <td class="rtd"><%#Eval("status") %></td>
                                    <td class="rtd"><%#Eval("total") %></td> 
                                    </tr>
                                </ItemTemplate> 
                                <FooterTemplate>
                                    </table id="tracking1">
                                </FooterTemplate>
                                </asp:Repeater>
                            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                                <HeaderTemplate>
                                    <table class="rtable" id="tracking2">
                                        <th>Detail</th>
                                        <th>Purchase Number</th>
                                        <th>Purchase Date</th>
                                        <th>Status</th>
                                        
                                        
                                </HeaderTemplate>

                                <ItemTemplate> 
                                    
                                    <tr>
                                    <td class="rtd"><asp:Button class="button" ID="detail2" CommandName="detail" CommandArgument='<%#Eval("poNum") %>' runat="server" Text="Detail" /></td>
                                    <td class="rtd"><%#Eval("poNum") %></td>
                                    <td class="rtd"><%#Eval("purchaseDate") %></td>
                                    <td class="rtd"><%#Eval("status") %></td>
                                     
                                    </tr>
                                </ItemTemplate> 
                                <FooterTemplate>
                                    </table id="tracking2">
                                </FooterTemplate>
                                </asp:Repeater>
                                    
                            <br />
                            <br />
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
                            <asp:Button runat="server" ID="Shopping_Cart" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart" /></td>
                        <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;" class="auto-style45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43" rowspan="2">
                            <asp:Button runat="server" ID="Purchase_Tracking" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking" /></td>
                        <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style39" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style46"></td>
                        <td class="auto-style46" style="font-family: 'Arial Unicode MS';">
                            <asp:Button runat="server" ID="c_p" Style="border: 0px solid #FFFFFF; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large; margin-left: 0px;" Text="Current Purchase" Height="100%" OnClick="c_p_Click" Width="100%" />
                        </td>
                        <td class="auto-style47" style="font-family: 'Arial Unicode MS';">
                            <asp:Button runat="server" ID="p_p" Style="border: 0px solid #FFFFFF; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large; margin-left: 0px;" Text="Past Purchase" Height="100%" OnClick="p_p_Click" Width="100%" />
                        </td>
                        <td class="auto-style38" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left"></td>
                    </tr>
                    <tr>
                        <td class="auto-style46"></td>
                        <td class="auto-style37" style="font-family: 'Arial Unicode MS';" colspan="2">&nbsp;</td>
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
