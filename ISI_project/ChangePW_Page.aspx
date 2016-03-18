<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePW_Page.aspx.cs" Inherits="_Default" %>

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
        .auto-style26 {
            width: 319px;
        }
        .auto-style27 {
            height: 43px;
            width: 129px;
        }
        </style>
    </head>
<body style="background-image:url('/images/backlogin.jpg'); height: 565px;">
    <form id="form1" runat="server" style="width:100%;">
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
                <td class="auto-style27" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style24" style="text-align: left">
                    <asp:Label ID="Label2" runat="server" style="border: 0px solid #FFFFFF;width:80px;height:30px; background-color: rgba(255,255,255,0.1); font-family: 'Buxton Sketch';font-size: large;" ></asp:Label></td>
            </tr>
            </table>
                </td>
            </tr>
        </table>

        </div>
    <div style="width:100%;height: 511px; background-color: rgba(255,255,255,0.5);">
        <hr />
        <br />
        <div >
        <table style="border-style: inherit; border-color: #8BC6ED; width:auto; height: 166px; margin-left:20%; margin-right:20%; margin-bottom:auto; margin-top:10%">
            <tr>
                <td class="auto-style25">Passward</td>
                <td class="auto-style25"><asp:TextBox ID="password" TextMode="password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style26"><asp:RegularExpressionValidator ID="Regex" runat="server" ControlToValidate="password"
                    ValidationExpression="^(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$"
                    ErrorMessage="Password must contain: Minimum 6 characters atleast 1 UpperCase Alphabet and 1 Number" ForeColor="Red" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="&laquo; (Required)" 
                    ControlToValidate="password"
                    CssClass="ValidationError"
                    ToolTip="Compare Password is a REQUIRED field">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Password<br />
                    confirm</td>
                <td class="auto-style25">&nbsp;<asp:TextBox ID="passwordconfirm" TextMode="password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="passwordconfirm"
                    CssClass="ValidationError"
                    ControlToCompare="password"
                    ErrorMessage="No Match" 
                    ToolTip="Password must be the same" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="&laquo; (Required)" 
                    ControlToValidate="passwordconfirm"
                    CssClass="ValidationError"
                    ToolTip="Compare Password is a REQUIRED field">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" />
                </td>
                <td class="auto-style26">
                    <%--<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
