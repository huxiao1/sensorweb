<%@ Page Language="C#" AutoEventWireup="true" CodeFile="functionchoose.aspx.cs" Inherits="net_functionchoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 406px;
        }
        </style>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        &nbsp;&nbsp;
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adm/map.html" Target="I4">地图位置</asp:HyperLink>
&nbsp;&nbsp;
        &nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adm/White.aspx" Target="I4">分布图</asp:HyperLink>
&nbsp;&nbsp;
        &nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/adm/realtimedata.aspx" Target="I4">实时数据</asp:HyperLink>
        <br />
        <br />
        <br />
        &nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/adm/White.aspx" Target="I4">预警信息</asp:HyperLink>
        &nbsp;&nbsp;
        &nbsp;<br />
        <br />
        <br />
        &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/adm/White.aspx" Target="I4">曲线图</asp:HyperLink>
&nbsp;&nbsp;
        &nbsp;<br />
        <br />
        <br />
        &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adm/White.aspx" Target="I4">视频监控</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
