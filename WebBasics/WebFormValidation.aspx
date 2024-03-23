<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormValidation.aspx.cs" Inherits="WebBasics.WebFormValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Validation Controls</h1>
            <hr />
            <table align="Center" border="1">
                <tr>
                    <td>Enter Email</td>
                    <td style="margin-left: 80px"><asp:TextBox ID="txtEmail" runat="server" /></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="txtEmail">Email is Mandatory</asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td>Enter Password</td>
                    <td style="margin-left: 80px"><asp:TextBox ID="txtPwd" runat="server" /></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtPwd">Minimum eight characters, at least one letter, one number and one special character</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td> <asp:TextBox runat="server" ID="rePwd" /></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Text="Password and Confirm password should be Same" ControlToValidate="rePwd" ControlToCompare="txtPwd" ForeColor="Red"></asp:CompareValidator></td>
                </tr>
               <tr>
                   <td>Enter Age</td>
                   <td> <asp:TextBox ID="txtAge" runat="server" /></td>
                   <td><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be in between 18 and 45" MaximumValue="45" MinimumValue="18" ForeColor="Red" ControlToValidate="txtAge" Type="Integer"></asp:RangeValidator></td>
               </tr>
                <tr>
                    <td colspan="3"> <asp:Button Text="Submit" runat="server" OnClick="Unnamed1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
