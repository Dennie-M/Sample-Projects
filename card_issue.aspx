<%@ Page Language="C#" AutoEventWireup="true" CodeFile="card_issue.aspx.cs" Inherits="card_issue" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<link href="design.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Card Issuing Page</title>
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
            width: 633px;
        }
        .auto-style2 {
            width: 102px;
        }
        .auto-style3 {
            width: 73px;
        }
        .auto-style4 {
            width: 87px;
        }
        .auto-style5 {
            width: 67px;
        }
        .auto-style6 {
            width: 117px;
        }
        .auto-style9 {
            width: 100px;
        }
        .auto-style10 {
            width: 60px;
        }
        .auto-style13 {
            width: 139px;
        }
        .auto-style14 {
            width: 113px;
        }
        .auto-style15 {
            width: 156px;
        }
        .auto-style16 {
            width: 163px;
        }
        .auto-style17 {
            width: 260px;
        }
        .auto-style18 {
            width: 372px;
        }
        .auto-style19 {
            width: 160px;
        }
        .auto-style20 {
            width: 83px;
        }
        .auto-style21 {
            width: 187px;
        }
        .auto-style24 {
            width: 366px;
        }
        .auto-style25 {
            width: 140px;
        }
        .auto-style26 {
            width: 352px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div style="margin-right: 2px">
    <table align="center">
        <tr>
            <td>
                <h1>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Metro smart (1).png" Height="91px" style="margin-left: 48px" Width="375px" />
                </h1>
            </td>
            <td>
                <h1 style="color:#b200ff">
                    Smartcard Issue
                </h1>
            </td>
        </tr>
    </table><br />
       <%--  <table>
            <tr>
            <td>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Logout1.jpg" Height="69px" OnClick="ImageButton1_Click1" style="margin-left: 1003px" Width="73px" /><br />
            </td></tr>
        </table>
       --%>
         <table align="center">
                <tr>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="#009900" style="text-decoration:none" OnClick="LinkButton1_Click">Requested User's</asp:LinkButton>
                    </td>
                    <td class="auto-style26">
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" ForeColor="#009900" style="text-decoration:none" OnClick="LinkButton2_Click">Smartcard Issue</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Larger" ForeColor="Red" OnClick="LinkButton4_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table><br />
        <table align="center">
            <tr>
                <td>
                    <h3>Registered User's</h3>
                </td>
                <td class="auto-style18">
                   <%----%>
                     <asp:DropDownList ID="dd_user" runat="server" Font-Size="Medium" Font-Bold="false" Height="35px" Width="227px" style="margin-left: 18px" OnInit="dd_user_Init">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                </td>  
                <td>
                    <h3>
                        Enter UserName
                    </h3>
                </td>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="26px" style="margin-left: 22px" Width="235px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server"  WatermarkText="User Name" WatermarkCssClass="watermark" TargetControlID="Textbox1"></asp:TextBoxWatermarkExtender>
                </td>             
            </tr>
        </table>
        <table id="tab" runat="server" style="width: 1221px">
            <tr>
                <td class="auto-style21">
                    <h3>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Last Name
                    </h3>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lbl_lastname" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style3">
                    <h3>
                        D.O.B </h3>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lbl_dob" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style5">
                    <h3>
                        Address
                    </h3>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txt_address" TextMode="MultiLine" runat="server" style="margin-left: 8px" Width="161px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <h3>
                        &nbsp;&nbsp;
                        Gender
                    </h3>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lbl_gender" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style5">
                    <h3>
                        Mobile
                    </h3>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lbl_mobile" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    <h3>
                        Email
                    </h3>
                </td>
                <td>
                    <asp:Label ID="lbl_email" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
            </tr></table><br />
        <table id="tab1" runat="server">
            <tr>
                <td class="auto-style17">
                    <h3>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Boarding Point
                    </h3>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="lbl_boarding" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style14">
                    <h3>
                        Destination
                    </h3>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lbl_destination" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <h3>
                        Account Number
                    </h3>
                </td>
                <td>
                    <asp:Label ID="lbl_ac" runat="server" Text="" Font-Size="Large"></asp:Label>
                </td>
            </tr>
        </table>
    </div><div style="background-color:#808080" id="div2" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td class="auto-style25">
                        <h3 style="color:blue">Starting Date</h3>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txt_startdate" runat="server" Height="25px" Width="195px" style="margin-left: 25px;text-align:center"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"  WatermarkText="Start Date" WatermarkCssClass="watermark" TargetControlID="txt_startdate"></asp:TextBoxWatermarkExtender>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_startdate"></asp:CalendarExtender>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="g1" ForeColor="Red" Font-Size="Large" ControlToValidate="txt_startdate"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <h3 style="color:blue">Expiry Date</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_expiry" runat="server" Height="25px" Width="195px" style="margin-left: 45px;text-align:center"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server"  WatermarkText="Expiry Date" WatermarkCssClass="watermark" TargetControlID="txt_expiry"></asp:TextBoxWatermarkExtender><asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_expiry"></asp:CalendarExtender>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="g1" ForeColor="Red" Font-Size="Large" ControlToValidate="txt_expiry"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table><br />
            <table align="center">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" ValidationGroup="g1" Font-Size="X-Large" ForeColor="#ffff99" OnClick="LinkButton3_Click">Respond</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
          </div>
    </form>
</body>
</html>
