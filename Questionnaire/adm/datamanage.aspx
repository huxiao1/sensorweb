<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datamanage.aspx.cs" Inherits="adm_datamanage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1">
	<tr>
		<td>
            <asp:Label ID="Label1" runat="server" Text="监测站:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
		<td>
            <asp:Label ID="Label2" runat="server" Text="传感器:"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
            <asp:Label ID="Label3" runat="server" Text="采集时间:"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px">
            </asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="-------------"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" />
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
            <asp:Label ID="Label5" runat="server" Text="操作："></asp:Label>
        </td>
		<td>
            <asp:Button ID="Button2" runat="server" Text="删除时间段数据" OnClick="Button2_Click" />
        </td>
		<td>
            <asp:Button ID="Button3" runat="server" Text="删除时间段报警" />
        </td>
	</tr>
</table>

    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="3" Width="730px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</body>
</html>
