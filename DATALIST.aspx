<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datalist.aspx.cs" Inherits="Datalist.datalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

            </head>
<body  style="height: 1810px">
    <form id="form2" runat="server">
        <div>
                                

            

            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    stID:
                    <asp:Label ID="stIDLabel" runat="server" Text='<%# Eval("stID") %>' />
                    <br />
                    stName:
                    <asp:Label ID="stNameLabel" runat="server" Text='<%# Eval("stName") %>' />
                    <br />
                    stEmailID:
                    <asp:Label ID="stEmailIDLabel" runat="server" Text='<%# Eval("stEmailID") %>' />
                    <br />
                    stMobileNum:
                    <asp:Label ID="stMobileNumLabel" runat="server" Text='<%# Eval("stMobileNum") %>' />
                    <br />
                    stGender:
                    <asp:Label ID="stGenderLabel" runat="server" Text='<%# Eval("stGender") %>' />
                    <br />
                    stCity:
                    <asp:Label ID="stCityLabel" runat="server" Text='<%# Eval("stCity") %>' />
                    <br />
                    stAddress:
                    <asp:Label ID="stAddressLabel" runat="server" Text='<%# Eval("stAddress") %>' />
                    <br />
                    stImg:
                    <asp:Label ID="stImgLabel" runat="server" Text='<%# Eval("stImg") %>' />
                    <asp:Image ID="img1" runat="server" Width="65px" ImageUrl='<%#"https://www.bing.com/th?id=OIP.rtaM-AfxZ9HSLOdFDeY5aAHaE8&w=158&h=106&c=8&rs=1&qlt=90&pid=3.1&rm=2"+ Eval("stImg")%>' Height="78px" />

                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTable %>" SelectCommand="SELECT * FROM [studenttable]"></asp:SqlDataSource>
            <br />

            </div>
                </form>                   

        
</body>
    </html>