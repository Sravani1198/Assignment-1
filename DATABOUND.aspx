<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="DataBound.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 202px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            margin-top: 3px;
        }
        .auto-style5 {
            width: 557px;
            height: 1194px;
        }
    </style>
</head>
<body style="height: 19px">
    <form id="form1" runat="server">
        <div>
            <table style="border:2px solid red; text-align:left; padding-top:2px; background-color:lime; border-radius:8px; font-size:20px" class="auto-style5" />

            <asp:Repeater ID="RP1" runat="server">
            <HeaderTemplate>
                          <table style="width:200px; padding-top:0px; background-color:gold">
                    <tr>
                           <td style="font-size:20px; text-align:center; height:48px" />

                              <asp:Label ID="Lb1" runat="server" Text="Employee Profile"></asp:Label>
                           </td>
                    </tr>
                </table>
           </HeaderTemplate>
              <ItemTemplate>

                    <table class="auto-style2">
                       <tr>
                          <td class="auto-style1">
                             <asp:Label ID="Label1" runat="server" Text="EmpID"></asp:Label>
                          </td>
                        <td>&nbsp;
                           <asp:Label ID="Label7" runat="server" Text='<% #Eval("EmpID") %>'></asp:Label>
                       </td>
                        
                        </tr>
                      <tr>
                        <td class="auto-style1">
                          <asp:Label ID="Label2" runat="server" Text="EmpName"></asp:Label>
                          </td>
                        <td>&nbsp;
                         <asp:Label ID="Label8" runat="server" Text='<% #Eval("EmpName") %>'></asp:Label>
                        </td>
                        
                   </tr>
                  <tr>
                  <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="EmpEmailID"></asp:Label>
                </td>
                <td>&nbsp;
                    <asp:Label ID="Label9" runat="server" Text='<% #Eval("EmpEmailID") %>'></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="EmpMobileNo"></asp:Label>
                </td>
                <td>&nbsp;
                    <asp:Label ID="Label10" runat="server" Text='<% #Eval("EmpMobileNo") %>'></asp:Label>
                </td>
                
            </tr>

            <tr>
                
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="EmpImage"></asp:Label>
                </td>
                <td rowspan="5">&nbsp;
                    <asp:Image ID="img1" runat="server" Width="112px" ImageUrl='<%#"download1.png" + Eval("EmpImage") %>' Height="40px" CssClass="auto-style3" />
                    <br />

                    <asp:Label ID="Label11" runat="server" Text='<% #Eval("EmpImage") %>'></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="EmpGender"></asp:Label>
                </td>
                <td>&nbsp;
                    <asp:Label ID="Label12" runat="server" Text='<% #Eval("EmpGender") %>'></asp:Label><br />
                </td>
                
            </tr>
          </table>
              
                    
                </ItemTemplate>
                <FooterTemplate>
                        <table>
                            <tr>
                                <td>
                                    @Developed by Sravani S <br />
                                    @2020 All CopyRights Reserved
                                </td>
                            </tr>
                        </table>
                    </FooterTemplate>
            </asp:Repeater>
            </div>
        </form>
        </div>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeTable1]"></asp:SqlDataSource>

       
        </body>
        </html>
