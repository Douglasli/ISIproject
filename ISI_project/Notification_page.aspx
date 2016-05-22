<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notification_page.aspx.cs" Inherits="_Default" %>

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

        .auto-style33 {
            width: 167px;
            height: 23px;
        }

        .auto-style34 {
            width: 167px;
            height: 51px;
        }

        .auto-style36 {
        }

        .auto-style37 {
            height: 23px;
            }
         .rtable {
            border-bottom: thin solid #000000; 
            font-family: Arial; 
            width: 80%; 
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
    </style>
</head>
<body style="background-image: url('/images/backlogin.jpg'); height:  100%;">
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
        <div style="width: 100%; height:  100%; background-color: rgba(255,255,255,0.5);">
            <hr />
            <br />
            <br />
            <br />
            <div>
                <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                    <tr>
                        <td class="auto-style34">
                            <asp:Button runat="server" ID="User_Profile" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile" /></td>
                        <td class="auto-style36" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: center; font-size: x-large; border-left-style: double; border-left-width: medium; vertical-align: top;" rowspan="4"><asp:Button runat="server" ID="read_noti" Style="border: 0px solid #FFFFFF; width: 80%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Read all notification" OnClick="read_noti_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Repeater ID="Repeater1" runat="server" >
                                <HeaderTemplate>
                                    <table class="rtable" id="nofity">
                                        <th>Notification_id</th>
                                        <th>Content</th>
                                        <th>Status</th>
                                        
                                </HeaderTemplate>

                                <ItemTemplate> 
                                    
                                    <tr>
                                    <td class="rtd"><%#Eval("nid") %></td>
                                    <td class="rtd"><%#Eval("content") %></td>
                                    <td class="rtd"><%# GetStatus(Eval("status")) %></td>
                                     
                                    </tr>
                                </ItemTemplate> 
                                <FooterTemplate>
                                    </table id="notify">
                                </FooterTemplate>
                                </asp:Repeater>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34">
                            <asp:Button runat="server" ID="Shopping_Cart" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style34">
                            <asp:Button runat="server" ID="Purchase_Tracking" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style33">
                            <asp:Button runat="server" ID="Homepage3" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ChangePW_Page.aspx" Text="Change Password" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style33">
                            <asp:Button runat="server" ID="notify" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Notification" /></td>
                        <td class="auto-style37" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: right; font-size: x-large; border-left-style: double; border-left-width: medium;">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
