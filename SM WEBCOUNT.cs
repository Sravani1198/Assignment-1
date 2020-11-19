<%@ Page Trace="true" Language="C#" AutoEventWireup="true" CodeBehind="WebCount.aspx.cs" Inherits="StateManagementDemoWeb.WebCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Hitcount" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Open another web page" PostBackUrl="~/GetHidden Field Values.aspx" />
            <asp:HiddenField ID="hfcount1" runat="server" Value="0" />
        </div>
    </form>
</body>
</html>
