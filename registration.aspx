<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<link href="design.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
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
            width: 1308px;
            margin-right: 91px;
        }
        .auto-style2 {
            width: 638px;
        }
        .auto-style3 {
            width: 1172px;
        }
        .auto-style4 {
            width: 1172px;
            height: 46px;
        }
        .auto-style5 {
            width: 638px;
            height: 46px;
        }
    </style>
</head>
<body style="background-image:url('Images/BG%20(12).jpg')">
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div align="center" style="width:1350px" class="auto-style3">
    <table >
        <tr>
            <td>
                
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/register (1).jpg" Height="75px" Width="62px" />
            
            </td>
            <td>
                <h1 style="color:seagreen">Registration</h1>
            </td>
        </tr>
    </table>
    </div><p style="text-align:center;color:red; width: 1288px;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        New user can register their details here. If you registered already you can proceed by clicking login.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" ForeColor="#009900" OnClick="LinkButton2_Click">Login</asp:LinkButton></p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/home  (1).gif" Height="63px" OnClick="ImageButton1_Click" style="margin-left: 173px" Width="86px" ToolTip="Home" /><br /><br />
        <div>
            <table align="center">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="First Name" Height="30px" Font-Size="Larger" style="margin-left: 167px"></asp:Label>
                        <asp:TextBox ID="Txt_firstname"  runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 52px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_firstname" WatermarkText="First Name"></asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_firstname" ValidationGroup="g1" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Last Name" Height="30px" Font-Size="Larger" style="margin-left: 9px"></asp:Label>
                        <asp:TextBox ID="Txt_lastname" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 24px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_lastname" WatermarkText="Last Name"></asp:TextBoxWatermarkExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="D.O.B" Height="30px" Font-Size="Larger" style="margin-left: 167px"></asp:Label>
                        <asp:TextBox ID="txt_dob" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 88px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_dob" WatermarkText="Date Of Birth"></asp:TextBoxWatermarkExtender><asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txt_dob" Format="dd/MM/yyyy"  runat="server"></asp:CalendarExtender><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_dob" ValidationGroup="g1" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        
                        <asp:Label ID="Label4" runat="server" Text="Address" Height="30px" Font-Size="Larger" style="margin-left: 7px"></asp:Label>
                        <asp:TextBox ID="txt_address" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 47px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_address" WatermarkText="Address"></asp:TextBoxWatermarkExtender><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="g1" ControlToValidate="txt_address" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Gender" Height="30px" Font-Size="Larger" style="margin-left: 167px"></asp:Label>
                        <asp:DropDownList ID="Dd_gender" runat="server" Height="35px" Width="335px" Font-Size="Larger" style="margin-left: 80px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="dd_gender" ValidationGroup="g1" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Mobile" Height="30px" Font-Size="Larger" style="margin-left: 1px"></asp:Label>
                        <asp:TextBox ID="txt_contact" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 53px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_contact" WatermarkText="Mobile"></asp:TextBoxWatermarkExtender><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ValidationGroup="g1" ControlToValidate="txt_contact" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Text="Email-Id" Height="30px" Font-Size="Larger" style="margin-left: 167px"></asp:Label>
                        <asp:TextBox ID="txt_email" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 69px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_email" WatermarkText="Email"></asp:TextBoxWatermarkExtender>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="Password" Height="30px" Font-Size="Larger" ForeColor="#ff0000" style="margin-left: 9px"></asp:Label>
                        <asp:TextBox ID="txt_pwd" runat="server" Height="30px" Width="330px" Font-Size="Larger" style="margin-left: 34px" TextMode="Password"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_pwd" WatermarkText="Password"></asp:TextBoxWatermarkExtender><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ValidationGroup="g1" ControlToValidate="txt_pwd" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </table><br /><br />
            <table align="center">
                <tr>
                    <td>
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="XX-Large" ForeColor="#cc66ff" ValidationGroup="g1" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
