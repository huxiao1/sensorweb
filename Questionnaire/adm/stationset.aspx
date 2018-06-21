<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stationset.aspx.cs" Inherits="adm_stationset"  ValidateRequest="false"%>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 710px;
        }
        .auto-style2 {
            width: 1152px;
        }
        .auto-style3 {
            height: 614px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    <table border="1">
	<tr>
		<td>
            <asp:Label ID="Label1" runat="server" Text="监测站区"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>北京市</asp:ListItem>
                <asp:ListItem>天津市</asp:ListItem>
                <asp:ListItem>河北省</asp:ListItem>
                <asp:ListItem>山西省</asp:ListItem>
                <asp:ListItem>内蒙古</asp:ListItem>
                <asp:ListItem>辽宁省</asp:ListItem>
                <asp:ListItem>吉林省</asp:ListItem>
                <asp:ListItem>黑龙江省</asp:ListItem>
                <asp:ListItem>上海市</asp:ListItem>
                <asp:ListItem>江苏省</asp:ListItem>
                <asp:ListItem>浙江省</asp:ListItem>
                <asp:ListItem>安徽省</asp:ListItem>
                <asp:ListItem>福建省</asp:ListItem>
                <asp:ListItem>江西省</asp:ListItem>
                <asp:ListItem>山东省</asp:ListItem>
                <asp:ListItem>河南省</asp:ListItem>
                <asp:ListItem>湖北省</asp:ListItem>
                <asp:ListItem>湖南省</asp:ListItem>
                <asp:ListItem>广东省</asp:ListItem>
                <asp:ListItem>广西壮族自治区</asp:ListItem>
                <asp:ListItem>海南省</asp:ListItem>
                <asp:ListItem>重庆市</asp:ListItem>
                <asp:ListItem>四川省</asp:ListItem>
                <asp:ListItem>贵州省</asp:ListItem>
                <asp:ListItem>云南省</asp:ListItem>
                <asp:ListItem>西藏</asp:ListItem>
                <asp:ListItem>陕西省</asp:ListItem>
                <asp:ListItem>甘肃省</asp:ListItem>
                <asp:ListItem>青海省</asp:ListItem>
                <asp:ListItem>宁夏回族自治区</asp:ListItem>
                <asp:ListItem>新疆</asp:ListItem>
                <asp:ListItem>台湾</asp:ListItem>
                <asp:ListItem>香港</asp:ListItem>
                <asp:ListItem>澳门</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" Text="县市辖区 ："></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="城区 :"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label2" runat="server" Text="所属企业"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
        </td>
		<td>
            <asp:Label ID="Label3" runat="server" Text="名称"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr>
		<td>
            <asp:Label ID="Label4" runat="server" Text="经纬度"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server" Width="465px"></asp:TextBox>
        </td>
		<td>
            <asp:Label ID="Label5" runat="server" Text="类型"></asp:Label>
        </td>
		<td>
            <asp:DropDownList ID="DropDownList5" runat="server">
            </asp:DropDownList>
        </td>
		<td>
            <asp:Label ID="Label6" runat="server" Text="监控URL"></asp:Label>
        </td>
		<td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
	</tr>
       
</table>
        <table border="1">
	<tr>
		<td>
            <asp:Label ID="Label7" runat="server" Text="栏目设置"></asp:Label>
        </td>
		<td class="auto-style2">
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="li01">地图位置</asp:ListItem>
                <asp:ListItem Value="li02">分布图</asp:ListItem>
                <asp:ListItem Value="li03">实时数据</asp:ListItem>
                <asp:ListItem Value="li04">曲线图</asp:ListItem>
                <asp:ListItem Value="li05">预警信息</asp:ListItem>
                <asp:ListItem Value="li06">视频监控</asp:ListItem>
                <asp:ListItem Value="li07">坝体断面图</asp:ListItem>
                <asp:ListItem Value="li08">隧道截面图</asp:ListItem>
            </asp:CheckBoxList>
        </td>
	</tr>
</table>
        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" Height="27px" Width="98px" />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" Width="928px" Height="103px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <br />
    </div>
    </form>
</body>
</html>
