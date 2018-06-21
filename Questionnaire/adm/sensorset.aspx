<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sensorset.aspx.cs" Inherits="adm_sensorset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1" >
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="所属监测站:"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label12" runat="server" Text="传感器类型:"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                <asp:ListItem>位移计</asp:ListItem>
                <asp:ListItem>测斜仪</asp:ListItem>
                <asp:ListItem>静力水准仪</asp:ListItem>
                <asp:ListItem>GPS仪</asp:ListItem>
                <asp:ListItem>电子水平尺</asp:ListItem>
                <asp:ListItem>渗压计</asp:ListItem>
                <asp:ListItem>雨量计</asp:ListItem>
                <asp:ListItem>水位计</asp:ListItem>
                <asp:ListItem>干滩检测仪</asp:ListItem>
                <asp:ListItem>数据拾取器</asp:ListItem>
                <asp:ListItem>倾角仪</asp:ListItem>
                <asp:ListItem>裂缝计</asp:ListItem>
                <asp:ListItem>应变测斜仪</asp:ListItem>
                <asp:ListItem>隧道激光仪</asp:ListItem>
            </asp:DropDownList>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label17" runat="server" Text="传感器编号:"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="偏差初始值(X)："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server">0</asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label13" runat="server" Text="应变初始值(Y)："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox10" runat="server">0</asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label18" runat="server" Text="高程初始值(Z)："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox13" runat="server">0</asp:TextBox>
        </td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label3" runat="server" Text="其他初始值(O)："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox3" runat="server">0</asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label14" runat="server" Text="累加初始值："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox9" runat="server">0</asp:TextBox>
            <asp:Label ID="Label21" runat="server" Text="（*加入计算值1）"></asp:Label>
        </td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label4" runat="server" Text="传感器名称："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label15" runat="server" Text="报警下限值："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox8" runat="server">-9999</asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label19" runat="server" Text="报警上限值："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox14" runat="server">99999</asp:TextBox>
        </td>
	</tr>
	<tr>
		<td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="备注："></asp:Label>
        </td>
		<td class="auto-style2">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
		<td class="auto-style2">
            <asp:Label ID="Label16" runat="server" Text="计算值缩放："></asp:Label>
        </td>
		<td class="auto-style2">
            <asp:TextBox ID="TextBox7" runat="server">1</asp:TextBox>
        </td>
		<td class="auto-style2">
            <asp:Label ID="Label20" runat="server" Text="基准传感器："></asp:Label>
        </td>
		<td class="auto-style2">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label6" runat="server" Text="单位："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>
            <asp:Label ID="Label22" runat="server" Text="操作："></asp:Label>
        </td>
		<td>
            <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
        </td>
	</tr>
</table>
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="868px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField HeaderText="选择" ShowHeader="True" ShowSelectButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </form>
</body>
</html>
