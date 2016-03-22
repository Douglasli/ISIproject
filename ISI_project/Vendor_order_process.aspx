<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vendor_order_process.aspx.cs" Inherits="_Default" %>

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
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="273px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Height="38px" OnClick="Button5_Click" Text="Search a P.O.Number" Width="204px" />
        &nbsp;
        <asp:Button ID="Button6" runat="server" Height="38px" OnClick="Button6_Click" Text="show vendor purchase order" Width="201px" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number :"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Purchase Date :"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Customer Name :"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Shipping Address :"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Total Order Amount :"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Order Status :"></asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Change the Status From Pending to Shipped" Width="304px" />
        <asp:Button ID="Button2" runat="server" Height="37px" OnClick="Button2_Click" Text="Order is Out-of-Stock" Width="200px" />
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Shipped Date :"></asp:Label>
        <asp:Label ID="Label14" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
&nbsp;
        <asp:Button ID="Button3" runat="server" Height="37px" OnClick="Button3_Click" Text="Unhold and Ship the Order" Width="250px" />
        <asp:Button ID="Button4" runat="server" Height="37px" OnClick="Button4_Click" Text="Cancel the Order" Width="250px" />
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="Cancelled By :"></asp:Label>
        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Font-Underline="False" Text="P.O.Number"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="174px" Width="557px">
        </asp:GridView>
        </div>
    </form>
</body>
</html>
