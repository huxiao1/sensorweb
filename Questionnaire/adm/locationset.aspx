<%@ Page Language="C#" AutoEventWireup="true" CodeFile="locationset.aspx.cs" Inherits="adm_locationset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
        .auto-style2 {
            height: 129px;
        }
        .auto-style3 {
            width: 93px;
        }
        .auto-style4 {
            height: 54px;
            width: 93px;
        }
        .auto-style6 {
            width: 1275px;
        }
        .auto-style7 {
            width: 200px;
        }
        .auto-style8 {
            height: 54px;
            width: 200px;
        }
    </style>
</head>
<body style="height: 367px; margin-bottom: 265px">
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="1" class="auto-style2">
	<tr>
		<td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="监测站："></asp:Label>
        </td>
		<td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
		<td>
            <asp:Label ID="Label3" runat="server" Text="分布图:"></asp:Label>
        </td>
		<td>
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="上传" OnClick="Button3_Click" />
&nbsp;
            <asp:Label ID="Label6" runat="server" Text="*(图片大小980*500)"></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="传感器："></asp:Label>
        </td>
		<td class="auto-style8">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
		<td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="分布图坐标:"></asp:Label>
        </td>
		<td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="保存" />
        </td>
        
	</tr>       
</table>
        <table>
            <iframe id="IL" src="picshow.aspx" frameborder="0" name="IL" scrolling="auto" runat="server" class="auto-style6"></iframe>   
       </table>

    </div>
    </form>
</body>
</html>
