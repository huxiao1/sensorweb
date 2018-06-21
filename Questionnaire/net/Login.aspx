<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="net_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        div.RoundedCorner{width:464px; height:294px; background-image:url('../Image/Login.jpg')}
        b.rtop, b.rbottom{display:block;background: #FFF}
        b.rtop b, b.rbottom b{display:block;height: 1px;overflow: hidden; background: #BAD4F7}
        b.r1{margin: 0 5px}
        b.r2{margin: 0 3px}
        b.r3{margin: 0 2px}
        b.rtop b.r4, b.rbottom b.r4{margin: 0 1px;height: 2px}
        table.content{border:0px;height:100px; font-family:Tahoma; font-size:9.5pt;color:#363A36;}
</style>

</head>
<body background="../Image/back_05.jpg" >
    <form id="form1" runat="server">
        <table align="center"   border="0" cellpadding="0" cellspacing="0"  > 
            <tr>
                <td colspan="5" height="131">
                    &nbsp;</td>
            </tr>
            </table>
    <div align="center">
    <div class="RoundedCorner" >

    <table align="center"   border="0" cellpadding="0" cellspacing="0" > 

            <tr>
                <td colspan="5" height="131">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" style="width: 130px">
                    &nbsp;</td>
                <td style="width: 69px">
                    <div align="center">
                        账 号：</div>
                </td>
                <td colspan="2" width="158" style="text-align: left">
                    <asp:TextBox ID="txtNum" runat="server" Height="13px" Width="125px"></asp:TextBox></td>
                <td style="text-align: left; width: 117px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" style="width: 130px">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    <div align="center">
                    密 码：</div>
                </td>
                <td colspan="2" height="25" style="text-align: left">
                    <asp:TextBox ID="txtPwd" runat="server" MaxLength="12" TextMode="Password" Width="125px" Height="13px">www</asp:TextBox>&nbsp;</td>
                <td height="25" style="text-align: left; width: 117px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" style="width: 130px">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    <div align="center">
                    验证码：</div>
                </td>
                <td height="25" style="width: 22px; text-align: left">
                    <asp:TextBox ID="txtCode" runat="server" Height="13px" Width="60px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:ImageButton ID="ImageButton1" runat="server" />
                </td>
                <td height="25" style="text-align: left; width: 117px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5" height="25" style="text-align: center">
                    <asp:Button ID="btnlogin" runat="server" Text="登录" OnClick="btnlogin_Click" style="height: 27px" />
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnconcel" runat="server" Text="取消" OnClick="btnconcel_Click" CausesValidation="False" /></td>
            </tr>
            <tr>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>
