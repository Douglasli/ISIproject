<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_detail_vender.aspx.cs" Inherits="_Default" %>

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
            var i1 = 0;
            var i2 = 0;
            var li1 = "";
            var des = $("#Label12").text();
            while (i1 < des.length) {
                if (des.charAt(i1) == ";") {
                    li1 = des.substring(i2, i1);
                    i2 = i1+1;
                    var li2 = $("<li>" + li1 + "</li>");
                    $("ul").append(li2);
                }
                i1 = i1 + 1;
            }
            $("#Label12").css('visibility', 'hidden');

            i1 = 0;
            i2 = 0;
            li1 = "";
            des = $("#Label13").text();
            var i3 = 1;
            while (i1 < des.length) {
                if (des.charAt(i1) == ";") {
                    li1 = des.substring(i2, i1);
                    i2 = i1 + 1;
                    $("#deimg" + i3 + "").attr("Visible", "True");
                    $("#deimg" + i3 + "").attr("src", li1);
                    i3 = i3 + 1;
                }
                i1 = i1 + 1;
            }
            $("#Label13").css('visibility', 'hidden');
        }
        );

    </script>
    </head>
<body style="background-image:url('/images/backlogin.jpg'); height:  100%;">
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
                    <asp:button runat="server" id="Logout" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Logout" OnClick="Logout_Click" /></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"/></td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height:  100%; background-color: rgba(255,255,255,0.5);">
        <hr />
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Edit this product" Width="194px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Name: "></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Size="Larger"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Larger" Text="Brand:  "></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Size="Larger"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="Larger" Text="Price: "></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Size="Larger"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="Larger" Text="Thumbnail image: "></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="89px" Width="131px" />
&nbsp;<br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Size="Larger" Text="Description: "></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <ul id="list1"></ul>
        <asp:Label ID="Label11" runat="server" Font-Size="Larger" Text="Detail photos:"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="deimg1" runat="server" Height="320px" ImageAlign="Middle" Width="410px" />
        <asp:Image ID="deimg2" runat="server" Height="320px" ImageAlign="Middle" Width="410px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="deimg3" runat="server" Height="320px" ImageAlign="Middle" Width="410px" />
        <asp:Image ID="deimg4" runat="server" Height="320px" ImageAlign="Middle" Width="410px" />
        </div>
    </form>
</body>
</html>
