<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormChkbox.aspx.cs" Inherits="WebBasics.WebFormChkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" border="1">
                <tr>
                    <td> Enter your Name </td>
                    <td><asp:TextBox runat="server" ID="txtName" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        Select Courses:
                    </td>
                </tr>
                <tr>
                    <td> <asp:CheckBox Text="C#"     ID="chkCSharp" runat="server" /></td>
                   <td><asp:CheckBox ID="chkADONET" Text="ADO.NET" runat="server" /></td>
                </tr>
                <tr>
                    <td> <asp:CheckBox Text="MVC"     ID="chkMVC" runat="server" /></td>
                    <td> <asp:CheckBox Text="UI"      ID="chkUI" runat="server" /></td> 
                </tr>
                <tr>
                    <td> <asp:CheckBox Text="LINQ"     ID="chkLINQ" runat="server" /></td>
                    <td> <asp:CheckBox Text="SQL Server" ID="chkSql" runat="server" /></td> 
                </tr>
                <tr>
                    <td> <asp:CheckBox Text="ASP.NET"     ID="chkASPNET" runat="server" /></td>
                    <td> <asp:CheckBox Text=".NETCORE" ID="chkNETCORE" runat="server" /></td> 
               </tr>
                <tr>
                    <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
                    <td><asp:Label ID="lblResult" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
