<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormddl.aspx.cs" Inherits="WebBasics.WebFormddl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="Center" border="1">
                <tr>
                    <td>Select City:</td>
                    <td> <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                        <asp:ListItem Value="HYD">Hyderabad</asp:ListItem>
                        <asp:ListItem Value="TN">Chennai</asp:ListItem>
                        <asp:ListItem Value="GA">GOA</asp:ListItem>
                        <asp:ListItem Value="BNG">Bangalore</asp:ListItem>
                         </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="" runat="server" ID="lblCity"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
