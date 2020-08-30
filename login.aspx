<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<link href="design.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        #form1 {
            height: 518px;
            width: 1257px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div>
    <table align="center">
        <tr>
            <td>
                <h1 style="font-family:'Comic Sans MS';color:indigo;text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Page!!!</h1>
            </td>
        </tr>
    </table>
    </div><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/home  (1).gif" Height="79px"  ToolTip="Home" style="margin-left: 77px" Width="98px" OnClick="ImageButton2_Click" />   
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Logout2.jpg" Height="68px" ToolTip="Logout"  style="margin-left: 983px" Width="74px" OnClick="ImageButton3_Click" />
        <br /><br />
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Login1.jpg" Width="481px" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name" Font-Size="X-Large" ForeColor="#0099ff"></asp:Label>  
                        <br /><br /><br /><asp:Label ID="Label2" runat="server" Text="Password" Font-Size="X-Large" ForeColor="#0099ff"></asp:Label>
                    </td>
                        <td>
                            <br /><br /><br /><br /><br />
                            <asp:TextBox ID="txt_firstname" runat="server" Font-Size="Large" Height="31px" Width="328px"  style="margin-top: 31px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_firstname" WatermarkText="Enter Your First Name"></asp:TextBoxWatermarkExtender><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="Larger" ValidationGroup="g1" ControlToValidate="txt_firstname"></asp:RequiredFieldValidator>
                            
                            <br /><br /><asp:TextBox ID="txt_pwd" runat="server" Font-Size="Large" Height="31px" Width="328px" TextMode="Password" style="margin-top: 6px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="Larger" ValidationGroup="g1" ControlToValidate="txt_pwd"></asp:RequiredFieldValidator>
                            <br /><br /><br />
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/login-big.jpg" Height="92px" ValidationGroup="g1" style="margin-left: 74px" Width="109px" OnClick="ImageButton1_Click" />
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
