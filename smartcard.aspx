<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smartcard.aspx.cs" Inherits="smartcard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="design.css" rel="stylesheet" />
    <title>Smart Card Issued</title>
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
            width: 1333px;
        }
        .auto-style2 {
            width: 482px;
        }
    </style>
</head>
<body style="background-image:url('Images/Bground%20(2).jpg')">
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div align ="center">
    <h1 style="color:hotpink">
        Smart Card Application Form
    </h1>
    </div><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Logout2.jpg" Height="52px" ToolTip="Logout"  style="margin-left: 1220px" Width="56px" OnClick="ImageButton3_Click"  /><br />
        <div id="div1" runat="server" style="width: 1328px">
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name:" Font-Size="Xx-Large" ForeColor="#ff9966"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_name" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl_lastname" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>
                    </td>
                </tr></table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" style="text-align:right" Font-Size="Larger" ForeColor="#cc3300" OnClick="LinkButton2_Click">Card Status</asp:LinkButton><br />
            <table>
                <tr class="auto-style1">
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Date Of Birth:" ForeColor="#ffff66" Font-Size="X-Large"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl_dob" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Address:" ForeColor="#ffff66" Font-Size="X-Large"></asp:Label>
                         &nbsp;&nbsp;
                         <asp:Label ID="lbl_address" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Gender" ForeColor="#ffff66" Font-Size="X-Large"></asp:Label>
                         &nbsp;&nbsp;
                         <asp:Label ID="lbl_gender" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label></td></tr>
                <tr><td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Mobile" ForeColor="#ffff66" Font-Size="X-Large"></asp:Label>
                         &nbsp;&nbsp;
                         <asp:Label ID="lbl_mobile" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Email" ForeColor="#ffff66" Font-Size="X-Large"></asp:Label>
                        &nbsp;&nbsp;
                         <asp:Label ID="lbl_email" runat="server" Text="" Font-Size="X-Large" Enabled="false"></asp:Label>
                    </td>
                </tr>
            </table><br />
           
                        <div class="form" style="background-color:whitesmoke;text-align:center;width:1350px">
                            <div class="new">
                               <table align="center">
        
                                      
                                          <h2 style="color:#ff3399"> Choose your boarding point and destination point.</h2>
                                                                              
                                  
                                   <tr>
                                       <td class="auto-style2">
                                           <asp:Label ID="Label8" runat="server" Text="Boarding From" Font-Size="Larger"></asp:Label>
                                           <asp:TextBox ID="txt_boarding" runat="server" Height="28px" Width="252px" style="margin-left: 21px; margin-top: 2px" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="g1" ControlToValidate="txt_boarding" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_boarding" WatermarkText="Enter Boarding Point"></asp:TextBoxWatermarkExtender>
                                       </td>
                                       <td>
                                           &nbsp;&nbsp;&nbsp;
                                           <asp:Label ID="Label9" runat="server" Text="Destination" Font-Size="Larger"></asp:Label>
                                           <asp:TextBox ID="txt_destination" runat="server" Height="28px" Width="252px" style="margin-left: 21px" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_destination" ValidationGroup="g1" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_Destination" WatermarkText="Enter Destination Point"></asp:TextBoxWatermarkExtender>

                                       </td>

                                   </tr>
                                  
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                                                               
                                </table>
                                </div>
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Ac/No:" Font-Size="Larger"></asp:Label>
                                           <asp:TextBox ID="txt_account_no" runat="server" Height="28px" Width="252px" style="margin-left: 21px" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_account_no" ValidationGroup="g1" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" WatermarkCssClass="watermark" TargetControlID="txt_account_no" WatermarkText="Enter Your Ac/No"></asp:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><br />
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ValidationGroup="g1" ForeColor="Green" OnClick="LinkButton1_Click">Proceed</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>     <br /><br />                                                                  
            <table align="center">
                <tr>
                    <td>
                        <img alt="" src="Images/credit card (2).jpg" style="height: 55px; width: 363px; margin-left: 0px;" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
