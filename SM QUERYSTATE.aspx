<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryState.aspx.cs" Inherits="QueryStrings.QueryState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 121px;
        }
        .auto-style2 {
            margin-left: 48px;
        }
        .auto-style3 {
            width: 49%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style3">
            <caption> Login Form </caption>
            <tr>
                
                <td class="auto-style1">Username:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password:</td>
                <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <td colspan="2">
                <asp:Label ID="lblstatus" runat="server" ForeColor="Navy"></asp:Label>
            </td>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style2" Text="Reset" Width="55px" />
    </form>
</body>
</html>
