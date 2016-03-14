<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart_Page.aspx.cs" Inherits="_Default" %>

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
        .auto-style25 {
            width: 594px;
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
                    <asp:button runat="server" id="Logout" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Logout" OnClick="Logout_Click" /></td>
                <td class="auto-style24" style="text-align: left">
                    <asp:button runat="server" id="Register" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" Text="Register" PostBackUrl="~/Register_Page.aspx"/>
                    <asp:Button ID="Button1" runat="server" style="border: 0px solid #FFFFFF;width:auto;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" PostBackUrl="~/ChangePW_Page.aspx"/>
                </td>  
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <br />
        <br />
        <br />
        <br />
        <div id="container">  
            <table style="width:100%;">
                <tr>
                    <td class="auto-style25">  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Font-Size="12px" Width="591px" CellPadding="4" ForeColor="#333333" GridLines="None"  
            OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand"  
            OnRowEditing="GridView1_RowEditing">  
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />  
          <Columns>  
              
            <asp:BoundField DataField="name" HeaderText="Item name" readonly="true" />  
            <asp:BoundField DataField="price" HeaderText="Price" readonly="true" />  
            <asp:BoundField DataField="quantity" HeaderText="Quantity" HtmlEncode="False" />  
            <asp:BoundField DataField="total" HeaderText="total" readonly="true" />  
              <asp:CommandField HeaderText="Edit" ShowEditButton="true"/> 
              <asp:CommandField HeaderText="Delete" ShowDeleteButton="true">  
              </asp:CommandField>  
                
          </Columns>  
            <EditRowStyle BackColor="#999999" />  
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
          <HeaderStyle BackColor="#5D7B9D" Font-Size="12px" HorizontalAlign="Center" Font-Bold="True" ForeColor="White" />  
            <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />  
            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" />  
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />  
            <SortedAscendingCellStyle BackColor="#E9E7E2" />  
            <SortedAscendingHeaderStyle BackColor="#506C8C" />  
            <SortedDescendingCellStyle BackColor="#FFFDF8" />  
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />  
        </asp:GridView>  
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>  </div>
    </form>
</body>
</html>
