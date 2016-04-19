<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report_Page.aspx.cs" Inherits="_Default" %>

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
   <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
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
                                    <asp:Button runat="server" ID="Homepage" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" PostBackUrl="~/Homepage.aspx" Text="Homepage" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Product" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Product" PostBackUrl="~/Product_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Vendor" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Vendor" PostBackUrl="~/Vendor_Page.aspx" /></td>
                                <td class="auto-style23">
                                    <asp:Button runat="server" ID="Customer" Style="border: 0px solid #FFFFFF; width: 100%; height: 100%; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-style: normal; font-size: large;" Text="Customer" PostBackUrl="~/Customer_Page.aspx" /></td>
                                <td class="auto-style24" style="text-align: right">
                                    <asp:Button runat="server" ID="Logout" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Logout" OnClick="Logout_Click" />
                                    <asp:Button runat="server" ID="Login" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Login" PostBackUrl="~/Login_page.aspx" /></td>
                                <td class="auto-style24" style="text-align: left">
                                    <asp:Button runat="server" ID="Register" Style="border: 0px solid #FFFFFF; width: 80px; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx" />
                                    <asp:Button ID="Button4" runat="server" Style="border: 0px solid #FFFFFF; width: auto; height: 30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch'; font-size: large;" PostBackUrl="~/Customer_Page.aspx" />
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <div id="div1" style="width: 100%; height: 1062px; background-color: rgba(255,255,255,0.5);">
            

            <hr /><div id="form2" runat="server">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" >End Date</asp:TextBox>
                <img src="/images/calender.png" />
                <asp:TextBox ID="TextBox2" runat="server">30</asp:TextBox>
                <asp:Button ID="Filter" runat="server" Text="Sort by salesamount" OnClick="Filter_Click" />
                <asp:Button ID="Filter" runat="server" Text="Sort by salesquantities" OnClick="Filter_Click" />
            </div>
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            <asp:GridView ID="GridView1" runat="server" Height="266px" Style="margin-top: 54px" Width="560px" PageSize="4" AutoGenerateColumns="False">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="itemid" DataNavigateUrlFormatString="product_detail_vender.aspx?id={0}" DataTextField="itemid" HeaderText="Show Detail" DataTextFormatString="Show  Detail" />
                    <asp:BoundField DataField="name" HeaderText="Item name" ReadOnly="true" />
                    <asp:BoundField DataField="salesamount" HeaderText="Sales Amount " />
                    <asp:BoundField DataField="salesquantities" HeaderText="Sales quantities" />
                </Columns>
            </asp:GridView>
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
