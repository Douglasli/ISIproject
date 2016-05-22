<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_page.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<script runat="server">


</script>


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
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            for (var i = 2; i < 6 && i <= $("#div1 tr").length; i++) {

                var url = $("#div1 tr:nth-child(" + i + ") td:nth-child(5)").html();

                var img1 = $("<img src =" + url + " style='width:150px;height:150px;'/>");

                $("#div1 tr:nth-child(" + i + ") td:nth-child(5)").html(img1);
                //$("#div1 tr:nth-child(" + i + ") td:nth-child(1)").attr
                //("onclick", "javascript:window.location.href='ProductDetail_page.aspx?id=" + $("#div1 tr:nth-child(" + i + ") td:nth-child(1)").html() + "'");   
            }
        }
        );

    </script>
</head>
<body style="background-image: url('/images/backlogin.jpg'); height: 100%;">
    <form id="form1" runat="server">
        <div style="width: 100%; height: 50px; background-color: rgba(255,255,255,0.5); text-align: justify;">
            <table style="width: 100%; height: 100%;">
                <tr>
                    <td class="auto-style1" style="text-align: center">
                        <table class="auto-style4" style="width: 100%; height: 100%">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Homepage" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Homepage.aspx" Text="Homepage" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Product" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Vendor" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Customer" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx" /></td>
                                <td class="auto-style24" style="text-align: right">
                                    <asp:Button runat="server" ID="Logout" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Logout" OnClick="Logout_Click" />
                                    <asp:Button runat="server" ID="Login" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Login" PostBackUrl="~/Login_page.aspx"  /></td>
                                <td class="auto-style24" style="text-align: left">
                                    <asp:Button runat="server" ID="Register" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"  />
                                    <asp:Button ID="Button4" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/Customer_Page.aspx" />
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <div id="div1" style="width: 100%; height:  100%; background-color: rgba(255,255,255,0.5); text-align: center;">
            <hr />
            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="172px"></asp:TextBox>
            <asp:Button ID="Search" runat="server" Height="36px" OnClick="Search_Click" Text="search" Width="73px" />
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="172px"></asp:TextBox>
            <asp:Button ID="Filter" runat="server" Height="36px" OnClick="Filter_Click" Text="filter" Width="73px" />
            &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="36px" OnClick="Button3_Click" Text="show all brands" Width="130px" />
            &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" Height="266px" Style="margin-top: 54px" Width="560px" AllowPaging="True" AllowSorting="True" OnSorting="GridView2_Sorting" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" AutoGenerateColumns="False" HorizontalAlign="Center">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="itemid" DataNavigateUrlFormatString="ProductDetail_page.aspx?id={0}" DataTextField="itemid" HeaderText="Show Detail" DataTextFormatString="Show  Detail" />
                    <asp:BoundField DataField="name" HeaderText="Item name" ReadOnly="true" />
                    <asp:BoundField DataField="brand" HeaderText="Brand" ReadOnly="true" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="GridView2_Sorting"/>
                    <asp:BoundField DataField="thumbnailimage" HeaderText="Thumbnail image" HtmlEncode="False" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="pre" runat="server" Height="30px" Text="Previous Page" Width="150px" OnClick="pre_Click" />
            &nbsp;&nbsp;
        <asp:Button ID="next" runat="server" Height="30px" Text="Next Page" Width="150px" OnClick="next_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Go to a specific page : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="81px"> </asp:TextBox>
            <asp:Button ID="tospe" runat="server" Height="32px" Text="Go!" Width="56px" OnClick="tospe_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
