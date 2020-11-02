<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student1.aspx.cs" Inherits="DataBound.Student1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 147px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            
            <asp:Repeater ID="RP1" runat="server">
                <HeaderTemplate>
                    <table style="width:200px; padding-top:0px; background-color:gold">
                        
                        <tr>
                            <td style="font-size:20px; text-align:center; height:48px">
                                <asp:Label ID="lb" runat="server" Text="Student Profile"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="StudentID"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("StudentID") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="StudentName"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="StudentEmailID"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("StudentEmailID") %>'></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="StudentMobNo"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("StudentMobNo") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="StudentGender"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("StudentGender") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="StudentAddress"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("StudentAddress") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="StudentCity"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("StudentCity") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label17" runat="server" Text="StudentRollNo"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("StudentRollNo") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="StudentImage"></asp:Label>
                    </td>
                    <td rowspan="5" >
                        <asp:Image ID="img1" runat="server" Width="65px" ImageUrl="download2.png" />
                        <br />
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("StudentImage") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
          </ItemTemplate>
                <FooterTemplate>
                    <table>
                        <tr>
                            <td>
                                @Developed by Sravani<br />
                                @All Copyrights Reserved
                            </td>
                        </tr>
                    </table>
                </FooterTemplate>
                </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [StudentTable]"></asp:SqlDataSource>
    </form>
</body>
</html>
