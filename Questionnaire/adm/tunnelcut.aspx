<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tunnelcut.aspx.cs" Inherits="adm_tunnelcut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label15" runat="server" Text="已保存界面名："></asp:Label>
    <table width="100%" border="1">
	<tr>
		<td>
    
        <asp:Label ID="Label26" runat="server" Text="监测站："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
        </td>
		<td>
    
        <asp:Label ID="Label25" runat="server" Text="截面名称："></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Button ID="Button1" runat="server" Text="保存截面" />
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
    
        <asp:Label ID="Label27" runat="server" Text="传感器组："></asp:Label>
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
    
        <asp:Label ID="Label16" runat="server" Text="a："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
		<td>
    
        <asp:Label ID="Label19" runat="server" Text="初始偏差值："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
        </td>
		<td>
    
        <asp:Label ID="Label22" runat="server" Text="照射角度："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox4" runat="server">45</asp:TextBox>
        </td>
	</tr>
	<tr>
		<td>
    
        <asp:Label ID="Label17" runat="server" Text="b："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
		<td>
    
        <asp:Label ID="Label28" runat="server" Text="初始偏差值："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server">0</asp:TextBox>
        </td>
		<td>
    
        <asp:Label ID="Label30" runat="server" Text="照射角度："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox5" runat="server" Enabled="False">0</asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style1">
    
        <asp:Label ID="Label18" runat="server" Text="c："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
		<td class="auto-style1">
    
        <asp:Label ID="Label29" runat="server" Text="初始偏差值："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server">0</asp:TextBox>
        </td>
		<td class="auto-style1">
    
        <asp:Label ID="Label31" runat="server" Text="照射角度："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox6" runat="server">45</asp:TextBox>
        </td>
	</tr>
</table>

    </div>
        <asp:Image ID="Image1" runat="server" Height="430px" Width="865px" ImageUrl="~/adm/tunnenl.png" />
    </form>
</body>
</html>
