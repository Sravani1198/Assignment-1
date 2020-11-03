<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationform.aspx.cs" Inherits="RapidApplicationDesign.registrationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 242px;
        }
        .auto-style6 {
            width: 493px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 242px;
            height: 32px;
        }
        .auto-style11 {
            height: 32px;
            width: 493px;
        }
        .auto-style12 {
            height: 32px;
        }
        .auto-style13 {
            width: 242px;
            height: 11px;
        }
        .auto-style14 {
            width: 493px;
            height: 11px;
        }
        .auto-style15 {
            height: 11px;
        }
        .auto-style16 {
            width: 242px;
            height: 45px;
        }
        .auto-style17 {
            width: 493px;
            height: 45px;
        }
        .auto-style18 {
            height: 45px;
        }
    </style>
</head>
<body style="height: 256px">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style9">
            <tr>
                <td class="auto-style1">Username</td>
                <td class="auto-style6">enter your name<br />
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#66FFFF" Width="157px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email Address</td>
                <td class="auto-style6">enter your mail id<br />
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#66FFFF" TextMode="Email" Width="158px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">Password</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#66FFFF"  TextMode="Password" Width="158px">Password</asp:TextBox>
                    <br />
                    enter your password</td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password</td>
                <td class="auto-style6">confirm password<br />
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#66FFFF" TextMode="Password" Width="158px">confirm password</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Gender</td>
                <td class="auto-style11">
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="Red" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="Blue" GroupName="Gender" Text="Female" />
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">City</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Banglore</asp:ListItem>
                        <asp:ListItem>chennai</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15"></td>
            </tr>
        </table>
        
        
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderColor="Red" BorderStyle="Solid" CssClass="auto-style12" ForeColor="#003300" OnClick="Button1_Click" Text="Submit" /><br /><br />
        </p>
        <asp:Label runat="server" ID="label1" />
        </form>
</body>
</html>