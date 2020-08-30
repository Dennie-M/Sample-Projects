<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_verification.aspx.cs" Inherits="admin_verification" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="design.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
<head runat="server">
    <title>Admin Login Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 306px;
        }
        .auto-style2 {
            height: 306px;
            width: 581px;
        }
        #form1 {
            width: 1206px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div>
    <div>
        <div align="center">
            <h1 style="font-family:'Comic Sans MS';color:#8284ee">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login Page</h1>
        </div>
    </div>
    </div><br /> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Logout2.jpg" Height="70px" OnClick="ImageButton2_Click" style="margin-left: 1116px" Width="80px" /><br />
        <div>
            <table align="right" style="height: 276px">
                <tr>
                    <td class="auto-style1"><br /><br /><br /><br /><br /><br />
                        <asp:Label ID="Label1" runat="server" Text="Admin Name" Font-Size="X-Large" ForeColor="#666633"></asp:Label>
                        <asp:TextBox ID="txt_admin_name" runat="server" Height="31px" style="margin-left: 36px; margin-top: 2px" Width="283px" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" Font-Bold="true" ControlToValidate="txt_admin_name" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="Enter Admin Name/Id" WatermarkCssClass="watermark" TargetControlID="txt_admin_name"></asp:TextBoxWatermarkExtender>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="X-Large" ForeColor="#666633"></asp:Label>
                        <asp:TextBox ID="txt_pwd" runat="server" Height="31px" TextMode="Password" style="margin-left: 73px; margin-top: 2px" Width="283px" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Size="Large" Font-Bold="true" ControlToValidate="txt_pwd" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
                          <asp:ImageButton ID="ImageButton1" runat="server" ValidationGroup="g1" ImageUrl="~/Images/login-big.jpg" Height="86px" style="margin-left: 237px" Width="105px" OnClick="ImageButton1_Click" />
                      </td>
                    <td class="auto-style2">
                    <img alt="" src="Images/loginnew.gif" style="width: 581px; height: 326px; margin-left: 0px;" />
                    </td></tr>                                                                                 
            </table>           
        </div>        
    </form>
</body>
</html>
