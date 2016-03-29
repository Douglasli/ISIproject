<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Searchresult.aspx.cs" Inherits="_Default" %>

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
        #Text1 {
            width: 89px;
            height: 27px;
        }
        </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            for (var i = 2; i < 6 || i <= $("#div1 tr").length; i++) {

                var url = $("#div1 tr:nth-child(" + i + ") td:nth-child(4)").html();
                
                var img1 = $("<img src =" + url + " style='width:150px;height:150px;'/>");

                $("#div1 tr:nth-child(" + i + ") td:nth-child(4)").html(img1);
            }
        
        }
        );

    </script>
    </head>
<body style="background-image:url('/images/backlogin.jpg'); height: 565px;" >
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
                    <asp:button runat="server" id="Logout" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Logout" OnClick="Logout_Click" /></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Signup_page.html"/></td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div id="div1" style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="172px" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="36px" Text="search by name" Width="192px" OnClick="Button1_Click" />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="172px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Height="36px" OnClick="Button5_Click" Text="search by id" Width="192px" />
        <asp:GridView ID="GridView1" runat="server" Height="266px" style="margin-top: 54px" Width="560px" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="4">
        </asp:GridView>
        <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="Previous Page" Width="150px" />
&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="Next Page" Width="150px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Go to a specific page : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="81px"> </asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="32px" OnClick="Button2_Click" Text="Go!" Width="56px" />
        <br />
        </div>
    </form>
</body>
</html>
