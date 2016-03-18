<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_Page.aspx.cs" Inherits="_Default" %>



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
        {}
        .style3
        {
            height: 20px;
            width: 367px;
        }
        .style4
        {
            height: 20px;
            width: 115px;
        }
        .style5
        {
            width: 115px;
        }
        .style8
        {
            height: 20px;
            width: 127px;
        }
        .style9
        {
            width: 127px;
        }
        .style10
        {}
        .style11
        {
            height: 20px;
            width: 148px;
        }
        .style12
        {
            height: 20px;
            width: 116px;
        }
        .style13
        {
            width: 116px;
        }
        .style14
        {
            width: 148px;
        }
        .style15
        {
            width: 414px;
        }
        .style17
        {
            height: 20px;
            width: 121px;
        }
        .style18
        {
            width: 121px;
        }
        .style20
        {
            width: 333px;
        }
        .style21
        {
            width: 414px;
            height: 20px;
        }
        .style22
        {
            width: 333px;
            height: 20px;
        }
        .style23
        {
            height: 20px;
        }
        .style24
        {
            width: 784px;
        }
        .style25
        {
            width: 778px;
        }
        .style26
        {
            width: 434px;
        }
        .style27
        {
            width: 444px;
        }
        .style28
        {
            width: 445px;
        }
        .style29
        {
            width: 443px;
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
                    <asp:button runat="server" id="Login" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Login" PostBackUrl="~/Login_page.html"/></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Signup_page.html"/></td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height: 123px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="Fashion" />
                    </asp:Panel>
                </td>
                <td class="style21">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Button ID="Button2" runat="server" Text="Electronics" />
                    </asp:Panel>
                </td>
                <td class="style22">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Button ID="Button3" runat="server" Text="Sports" />
                    </asp:Panel>
                </td>
                <td class="style23">
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Button ID="Button4" runat="server" Text="Art" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Panel ID="Panel5" runat="server">
                        <table class="style1">
                            <tr>
                                <td class="style4">
                                    Top category:</td>
                                <td class="style8">
                                    Another category:</td>
                                <td class="style2" rowspan="6">
                                    <asp:Image ID="Image1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:LinkButton ID="LinkButton5" runat="server">Man</asp:LinkButton>
                                </td>
                                <td class="style8">
                               
                                    <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Decorations
                                    </asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:LinkButton ID="LinkButton6" runat="server">Woman</asp:LinkButton>
                                </td>
                                <td class="style8">
                                    <asp:LinkButton ID="LinkButton10" runat="server">SportSwear</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:LinkButton ID="LinkButton7" runat="server">Boy</asp:LinkButton>
                                </td>
                                <td class="style8">
                                    <asp:LinkButton ID="LinkButton11" runat="server">LeisureSwear</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    <asp:LinkButton ID="LinkButton8" runat="server">Girl</asp:LinkButton>
                                </td>
                                <td class="style9">
                                    <asp:LinkButton ID="LinkButton12" runat="server">Shoes</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style9">
                                    <asp:LinkButton ID="LinkButton13" runat="server">Sales/Event</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:CollapsiblePanelExtender ID="Panel5_CollapsiblePanelExtender" 
                        runat="server" Enabled="True" TargetControlID="Panel5">
                    </asp:CollapsiblePanelExtender>
                </td>
                <td class="style15">
                    <asp:Panel ID="Panel6" runat="server" Width="410px">
                        <table class="style1">
                            <tr>
                                <td class="style12">
                                    Top category:</td>
                                <td class="style11">
                                    Another category:</td>
                                <td class="style10" rowspan="7">
                                    <asp:Image ID="Image2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:LinkButton ID="LinkButton1" runat="server">SmartPhone</asp:LinkButton>
                                </td>
                                <td class="style11">
                                    <asp:LinkButton ID="LinkButton14" runat="server">Apple</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:LinkButton ID="LinkButton2" runat="server">Computer</asp:LinkButton>
                                </td>
                                <td class="style11">
                                    <asp:LinkButton ID="LinkButton15" runat="server">Samsung</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:LinkButton ID="LinkButton3" runat="server">Camera</asp:LinkButton>
                                </td>
                                <td class="style14">
                                    <asp:LinkButton ID="LinkButton16" runat="server">BlackBerry</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:LinkButton ID="LinkButton4" runat="server">Accessory</asp:LinkButton>
                                </td>
                                <td class="style14">
                                    <asp:LinkButton ID="LinkButton17" runat="server">Philiph</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="style14">
                                    <asp:LinkButton ID="LinkButton18" runat="server">Tv</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="style14">
                                    <asp:LinkButton ID="LinkButton19" runat="server">Sales/Event</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style20">
                    <asp:Panel ID="Panel7" runat="server">
                        <table class="style1">
                            <tr>
                                <td class="style17">
                                    Top category:</td>
                                <td class="style4">
                                    Another category:</td>
                                <td rowspan="6">
                                    <asp:Image ID="Image3" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="LinkButton20" runat="server">Ball</asp:LinkButton>
                                </td>
                                <td class="style5">
                                    <asp:LinkButton ID="LinkButton24" runat="server">Fishing</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="LinkButton21" runat="server">Swimming</asp:LinkButton>
                                </td>
                                <td class="style5">
                                    <asp:LinkButton ID="LinkButton25" runat="server">Outdoor</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="LinkButton22" runat="server">Cycling</asp:LinkButton>
                                </td>
                                <td class="style5">
                                    <asp:LinkButton ID="LinkButton26" runat="server">Fitness</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="LinkButton23" runat="server">Boxing</asp:LinkButton>
                                </td>
                                <td class="style5">
                                    <asp:LinkButton ID="LinkButton27" runat="server">Sales/Event</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="LinkButton36" runat="server">Tools</asp:LinkButton>
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style2">
                    <asp:Panel ID="Panel8" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Top category:</td>
                                <td>
                                    Another category:</td>
                                <td rowspan="6">
                                    <asp:Image ID="Image7" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton28" runat="server">Draw</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton32" runat="server">Teaching material</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton29" runat="server">Singing</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton33" runat="server">CourseLink</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton30" runat="server">Guitar</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton34" runat="server">Tools</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton31" runat="server" onclick="LinkButton31_Click">Piano</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton35" runat="server">Sales/Event</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton37" runat="server">String</asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    Today&#39;s recommemd</td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style24">
                    <asp:Panel ID="Panel9" runat="server" Width="780px">
                        <table class="style1">
                            <tr>
                                <td rowspan="5" class="style26">
                                    <asp:Image ID="Image4" runat="server" />
                                </td>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Add to cart" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Price range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style23">
                                    <asp:LinkButton ID="LinkButton38" runat="server">Detail</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td class="style23">
                                    Description:</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel10" runat="server">
                        <table class="style1">
                            <tr>
                                <td rowspan="5" class="style27">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button6" runat="server" Text="Add to cart" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Price range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton39" runat="server">Detail</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td>
                                    Description:</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style25">
                    <asp:Panel ID="Panel11" runat="server" Width="780px">
                        <table class="style1">
                            <tr>
                                <td rowspan="5" class="style28">
                                    <asp:Image ID="Image5" runat="server" />
                                </td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" Text="Add to cart" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style23">
                                    <asp:Label ID="Label3" runat="server" Text="Price range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton40" runat="server">Detail</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td>
                                    Description:</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel12" runat="server">
                        <table class="style1">
                            <tr>
                                <td rowspan="5" class="style29">
                                    <asp:Image ID="Image6" runat="server" />
                                </td>
                                <td>
                                    <asp:Button ID="Button8" runat="server" Text="Add to cart" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Price range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton41" runat="server" onclick="LinkButton41_Click">Detail</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td>
                                    Description:</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
