<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vendor_page_order.aspx.cs" Inherits="_Default" %>

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
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            for (var i = 2; i <= $("#d1 tr").length; i++) {
                $("#d1 tr:nth-child(" + i + ") td:nth-child(1)").attr
                ("onclick", "javascript:window.location.href='Vendor_order_process.aspx?poNum=" + $("#d1 tr:nth-child(" + i + ") td:nth-child(1)").html() + "'");

            }
        
        }
        );

    </script>
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
    <div id="d1" style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="273px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Height="38px" OnClick="Button5_Click" Text="Search a P.O.Number" Width="204px" />
        &nbsp;
        <asp:Button ID="Button6" runat="server" Height="38px" OnClick="Button6_Click" Text="show vendor purchase order" Width="201px" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="show pending orders " Width="178px" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="show orders on hold" Width="178px" />
&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="33px" OnClick="Button3_Click" Text="show past orders" Width="178px" />
        <asp:GridView ID="GridView1" runat="server" Height="280px" Width="652px" style="margin-top: 40px">
        </asp:GridView>
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
