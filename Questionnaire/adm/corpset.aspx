<%@ Page Language="C#" AutoEventWireup="true" CodeFile="corpset.aspx.cs" Inherits="adm_corpset" %>

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
<body style="height: 388px">
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1">
	<tr>
		<td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="企业编号 ："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="企业名称 ："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="联系人 ："></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label2" runat="server" Text="电话 ："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label4" runat="server" Text="地址 ："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="企业ID ："></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
        </td>
	</tr>
</table>
    </div>
        <asp:GridView ID="GridView2" runat="server" Width="914px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="298px"  OnRowDeleting="GridView2_RowDeleting" DataKeyNames="id"  >

          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:CommandField HeaderText="选择" ShowSelectButton="True" ShowHeader="True"  /> 
              <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ShowHeader="True" /> 
          </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
