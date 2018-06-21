<%@ Page Language="C#" AutoEventWireup="true" CodeFile="realtimedata.aspx.cs" Inherits="realtimedata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
        $( function() {
    $( "#datepicker1" ).datepicker();
  } );

  </script>
    <style type="text/css">
        .auto-style1 {
            height: 285px;
        }
        #I2 {
            height: 232px;
            width: 531px;
        }
    </style>
</head>
<body style="height: 280px">
    <form id="form1" runat="server" class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="传感器类型 ："></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="通用" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="GPS仪" />
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="名称 ："></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="采集时间 :"></asp:Label>
      
        
           <input id="datepicker" type="text" />
        <asp:Label ID="Label4" runat="server" Text="-----"></asp:Label>

        <input id="datepicker1" type="text" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                 <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000">
        </asp:Timer>
            </ContentTemplate>
             <Triggers>
  <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
  </Triggers>
        </asp:UpdatePanel>


          </form>  
</body>
</html>        


