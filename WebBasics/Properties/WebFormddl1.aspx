<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormddl1.aspx.cs" Inherits="WebBasics.Properties.WebFormddl1" %>

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
                    <td>Select Country:</td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                 <tr>
                  <td>Select States:</td>
                   <td> <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="true"></asp:DropDownList></td>
                  </tr>
            </table>
        </div>
    </form>
</body>
</html>
