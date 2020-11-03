<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElectionForm.aspx.cs" Inherits="studentform.ElectionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Candidate Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="263px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="please provide your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">House</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>RED</asp:ListItem>
                        <asp:ListItem>BLUE</asp:ListItem>
                        <asp:ListItem>YELLOW</asp:ListItem>
                        <asp:ListItem>GREEN</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="enter a valid house" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Class</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="263px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter a class" ForeColor="Red" MaximumValue="12" MinimumValue="6" Type="Integer"></asp:RangeValidator>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="enter your educational qualification" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="263px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter valid Email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="please provide your email id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:Button ID="Button1" runat="server" BackColor="Green" OnClick="Button1_Click" Text="submit" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>