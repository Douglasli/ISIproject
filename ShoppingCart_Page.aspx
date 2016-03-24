<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart_Page.aspx.cs" Inherits="_Default" %>

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
            width: 594px;
            height: 20px;
        }

        .auto-style31 {
            width: 938px;
            height: 44px;
        }

        .auto-style36 {
            width: 587px;
        }

        .auto-style39 {
            height: 30px;
            width: 204px;
        }

        .auto-style37 {
            height: 23px;
            width: 587px;
        }

        .auto-style48 {
            width: 938px;
            height: 51px;
        }

        .auto-style49 {
            height: 29px;
            width: 204px;
        }

        .auto-style50 {
            width: 204px;
        }

        .auto-style51 {
            height: 41px;
        }

        .auto-style52 {
            height: 23px;
            width: 204px;
        }

        .auto-style53 {
            height: 23px;
            width: 938px;
        }

        .auto-style54 {
            height: 41px;
            width: 938px;
        }

        .auto-style55 {
            height: 41px;
            width: 204px;
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
                                    <asp:Button ID="Button1" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/ChangePW_Page.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <div style="width: 100%; height: 617px; background-color: rgba(255,255,255,0.5);">
            <hr />
            <div id="container">
                <br />
                <table id="User_pro" class="auto-style26" style="margin-top: 0px;">
                    <tr>
                        <td class="auto-style48" rowspan="2">
                            <asp:Button runat="server" ID="User_Profile0" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Customer_Page.aspx" Text="Profile" /></td>
                        <td class="auto-style36" style="font-family: 'Arial Unicode MS';" rowspan="7">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="12px" Width="599px"
                                OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand"
                                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="itemid" DataNavigateUrlFormatString="ProductDetail_page.aspx?id={0}" DataTextField="itemid" HeaderText="Show Detail" DataTextFormatString="Show {0}'s Detail" />
                                    <asp:BoundField DataField="name" HeaderText="Item name" ReadOnly="true" />
                                    <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="true" />
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" HtmlEncode="False" />
                                    <asp:BoundField DataField="total" HeaderText="total" ReadOnly="true" />
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="true" />
                                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="true"></asp:CommandField>

                                </Columns>
                                <EmptyDataTemplate>
                                    <table>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <HeaderStyle Font-Size="12px" HorizontalAlign="Center" />
                                <RowStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/images/System Box Empty.png" Width="187px" />
                            <asp:Label ID="Total" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style49" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;" class="auto-style50">&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style48" rowspan="2">
                            <asp:Button runat="server" ID="Shopping_Cart0" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/ShoppingCart_Page.aspx" Text="Shopping Cart" /></td>
                        <td class="auto-style49" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;" class="auto-style50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style48" rowspan="2">
                            <asp:Button runat="server" ID="Purchase_Tracking0" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Purchase_Tracking_Page.aspx" Text="Purchase Tracking" /></td>
                        <td class="auto-style49" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style49" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style39" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left;">&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style54"></td>
                        <td class="auto-style51" style="font-family: 'Arial Unicode MS';">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Check out" Style="background-color: rgba(255,255,255,0.1);" BorderStyle="None" Font-Bold="True" Height="100%" Width="100%" />
                        </td>
                        <td class="auto-style55" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left"></td>
                    </tr>
                    <tr>
                        <td class="auto-style53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style37" style="font-family: 'Arial Unicode MS';">&nbsp;</td>
                        <td class="auto-style52" style="font-family: 'Buxton Sketch'; font-weight: normal; text-align: left"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
