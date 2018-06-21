<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userpower.aspx.cs" Inherits="adm_userpower" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1">
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="登录名："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="密码："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="手机号："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label2" runat="server" Text="真实姓名："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label4" runat="server" Text="所属企业："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="186px">
            </asp:DropDownList>
        </td>
		<td>
            <asp:Label ID="Label6" runat="server" Text="只限项目："></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
	</tr>
</table>
<table width="100%" border="1">
	<tr>
		<td>
            <asp:Label ID="Label7" runat="server" Text="权限设置："></asp:Label>
        </td>
		<td>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="561px" RepeatColumns="5" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>平台查看</asp:ListItem>
                <asp:ListItem>监测站设置</asp:ListItem>
                <asp:ListItem>传感器设置</asp:ListItem>
                <asp:ListItem>数据管理</asp:ListItem>
                <asp:ListItem>用户设置</asp:ListItem>
            </asp:CheckBoxList>
        </td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>
            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
        </td>
	</tr>
</table>

    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1262px" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:CommandField HeaderText="选择" ShowHeader="True" ShowSelectButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
