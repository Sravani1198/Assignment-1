<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentform.aspx.cs" Inherits="studentform.studentform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
        .auto-style2 {
            width: 132px;
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            width: 656px;
        }
        .auto-style5 {
            height: 25px;
            width: 656px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width:100%; align-self:center">
                <tr>
                    <td class="auto-style1">FirstName</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"  Width="306px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="provide your firstname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">LastName</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="306px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="provide your lastname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox6" runat="server" Width="306px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="provide your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Father&#39;sName</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="306px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="provide your father's name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Mother&#39;sName</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="306px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="provide your mother's name" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="invalid comparision" ForeColor="Red" Operator="LessThan"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="please select the gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Aggregate</td>
                    <td class="auto-style4">
                        Enter Aggregate Greater than 55<br />
&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="306px"></asp:TextBox>
&nbsp;
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="enter valid aggregate" ForeColor="Red" MaximumValue="100" MinimumValue="55" Type="Integer"></asp:RangeValidator>
&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Courses<br />
                    </td>
                    <td class="auto-style5">
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="courses" Text="ECE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="course should be selected" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="microcontroller" />
&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Logic Design" />
&nbsp;
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Analog Communications" />
&nbsp;<br />
                        <br />
                        &nbsp;
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="courses" Text="CSE" ></asp:RadioButton >
                        <br />
&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Computer operating architecture" />
&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="DataStructures" />
&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Computer Networks" />
                        
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
        <asp:Button ID="Button1" runat="server" BackColor="Green" OnClick="Button1_Click" Text="Register" />

            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="selected courses"></asp:Label>

            <br />
            <br />

        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>