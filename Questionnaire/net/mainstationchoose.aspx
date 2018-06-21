<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainstationchoose.aspx.cs" Inherits="net_mainstationchoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    


       
    <style type="text/css">
        .auto-style1 {
            height: 420px;
        }
           .treeRightCss table{
    display: inline;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
 
        <asp:TreeView ID="TreeView1" runat="server" Height="175px" ImageSet="Arrows" Width="380px">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
