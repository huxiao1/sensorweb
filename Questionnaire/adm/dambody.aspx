<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dambody.aspx.cs" Inherits="adm_dambody" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1">
	<tr>
		<td>
            <asp:Label ID="Label1" runat="server" Text="由最低坝往最高坝设置，没有的坝留空" ForeColor="Red"></asp:Label>
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>&nbsp;</td>
		<td>
            <asp:Label ID="Label2" runat="server" Text="监测站："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Label ID="Label11" runat="server" Text="倾斜率:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="启用" />
        </td>
		<td>
            <asp:Label ID="Label3" runat="server" Text="一级坝海拔："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox1" runat="server">100</asp:TextBox>
            <asp:Label ID="Label14" runat="server" Text="m"></asp:Label>
        </td>
		<td>
            <asp:Label ID="Label7" runat="server" Text="渗透仪:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
	<tr>
		<td>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="启用" />
        </td>
		<td>
            <asp:Label ID="Label4" runat="server" Text="二级坝海拔："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server">110</asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="m"></asp:Label>
        </td>
		<td>
            <asp:Label ID="Label8" runat="server" Text="渗透仪:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
	<tr>
		<td>
            <asp:CheckBox ID="CheckBox3" runat="server" Text="启用" />
        </td>
		<td>
            <asp:Label ID="Label5" runat="server" Text="三级坝海拔："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox3" runat="server">120</asp:TextBox>
            <asp:Label ID="Label16" runat="server" Text="m"></asp:Label>
        </td>
		<td>
            <asp:Label ID="Label9" runat="server" Text="渗透仪:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
	<tr>
		<td>
            <asp:CheckBox ID="CheckBox4" runat="server" Text="启用" />
        </td>
		<td>
            <asp:Label ID="Label6" runat="server" Text="四级坝海拔："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox4" runat="server">130</asp:TextBox>
            <asp:Label ID="Label17" runat="server" Text="m"></asp:Label>
        </td>
		<td>
            <asp:Label ID="Label10" runat="server" Text="渗透仪:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
	<tr>
		<td>
            <asp:CheckBox ID="CheckBox5" runat="server" Text="启用" />
        </td>
		<td>
            <asp:Label ID="Label12" runat="server" Text="五级坝海拔："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox5" runat="server">140</asp:TextBox>
            <asp:Label ID="Label18" runat="server" Text="m"></asp:Label>
        </td>
		<td>
            <asp:Label ID="Label13" runat="server" Text="渗透仪:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
</table>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="保存" />
    </form>
</body>
</html>
