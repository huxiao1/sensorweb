<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="changepwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 616px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <table width="100%" border="1">
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="原密码"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="新密码"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="确认密码"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style1">&nbsp;</td>
		<td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
        </td>
	</tr>
</table>
    
    </div>
    </form>
</body>
</html>
