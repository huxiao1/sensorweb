<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainpage.aspx.cs" Inherits="adm_mainpage" %>

<%--<!DOCTYPE html>--%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../demo.css" rel="stylesheet" />
     <script type="text/javascript">

         function changeSrc() {
             document.getElementById("I1").src = "../net/mainstationchoose.aspx";
         }
     function changeSrc1()
    {
         document.getElementById("I1").src = "../net/functionchoose.aspx";
     }
     function changeSrc2() {
         document.getElementById("I1").src = "index.aspx";
     }
 
    </script>
    <style type="text/css">
        .auto-style3 {
            height: 351px;
            width: 218px;
        
        }
        .auto-style4 {
            height: 40px;
            width: 1270px;
      
        }
        .auto-style5 {
            height: 41px;
            width: 415px;
       
        }
        .auto-style9 {
            width: 299px;
     
            height: 653px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style10 {
            width: 932px;
        
            height: 662px;
            margin-left: 0px;
        }
        .auto-style11 {
            height: 351px;
        }
        .auto-style14 {
            height: 41px;
            width: 415px;
        
        }
        .auto-style15 {
            height: 161px;
        }
        .auto-style16 {
            height: 21px;
            width: 1256px;
        }
        .auto-style17 {
            width: 1256px;
            height: 162px;
        }
        </style>

</head>
<body>
 <center>
    <form id="form1" runat="server">
    <div>
    <table  border="0">
	<tr>
		<td class="auto-style15">
            <img src="top.jpg" class="auto-style17" ></td>
	</tr>
	<tr>
		<td style="background-image: url(../adm/img/midstbanner.png);"text-align="center" class="auto-style16">
            <asp:Label ID="Label1" runat="server" Text="用户名 ："></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="用户权限 ："></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="所属公司 ："></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" OnClick="LinkButton1_Click">安全退出</asp:LinkButton>
        </td>
	</tr>
</table>
<table border="1">
	<tr>
		<td class="auto-style5" >
            &nbsp;
            <input type = "button" onclick="changeSrc()"value ="监测站点设置"/> 
		</td>
		<td class="auto-style5">
            &nbsp;<input type = "button"onclick="changeSrc1()" value ="功能查看"/>          
        </td>
		<td class="auto-style14">
            &nbsp;<input type = "button" onclick="changeSrc2()" value ="平台设置"/> </td>
      
	</tr>
</table>
<table border="1" style="width: 1265px">
	<tr>
		<td class="auto-style3">
            <iframe id="I1" src = "../net/mainstationchoose.aspx" frameborder="0" name="I1" scrolling="auto" class="auto-style9" runat="server"></iframe>
                    
        </td>
       
        <td class="auto-style11">
            <iframe name="I4" id="I4" frameborder="0" scrolling="no" style="margin-top:0px;" class="auto-style10" runat="server"></iframe>
        </td>
       
	</tr>
     </table>
        <table>
	<tr>
		<td class="auto-style4" style="background-image: url(../adm/img/bottom.jpg);"align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="湖南北斗星空检测科技有限公司       版权所有"></asp:Label>
        </td>
	</tr>
</table>
    </div>
    </form>
        </center>
</body>
</html>
