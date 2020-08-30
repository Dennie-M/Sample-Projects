<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Metro Train</title>
     <script type="text/javascript">
         var message = "Function Disabled!";
         function clickIE4() { if (event.button == 2) { alert(message); return false; } }
         function clickNS4(e) {
             if (document.layers || document.getElementById && !document.all) 
             { if (e.which == 2 || e.which == 3) { alert(message); return false; } }
         }
         if (document.layers) {
             document.captureEvents(Event.MOUSEDOWN);
             document.onmousedown = clickNS4;
         } else if (document.all && !document.getElementById)
         { document.onmousedown = clickIE4; }
         document.oncontextmenu = new Function("alert(message);return false")
</script>
    <style type="text/css">
        .auto-style1 {
            width: 843px;
        }
        .auto-style2 {
            width: 68px;
        }
    </style>
</head>
<body style="background-image: url('Images/BG%20(12).jpg')">
    <form id="form1" runat="server">
        <div  align ="center">
            <h2><center>METRO BUS AND TRAIN SMART CARD ISSUE AND RECHARGE SYSTEM</center></h2>
        </div>
        <br />
        <div>
            <table>
                <tr>
                    <td>
                        <h3>Welcome to Metro Train</h3>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Metro smart (2).jpg" Width="676px" Height="368px" />
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="#6600ff" OnClick="LinkButton1_Click">Customers</asp:LinkButton>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" ForeColor="#cc0066" OnClick="LinkButton2_Click">Admin</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
