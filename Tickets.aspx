<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tickets.aspx.cs" Inherits="Tickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Renewaling Page</title>
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
 </head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
        <tr>
            <td>
                <h1 style="color:#4f6569">Smartcard Status</h1>
            </td>
        </tr>
    </table><br />
        <table align="center">
            <tr>
                <td style="font-size:larger;color:red">
                    <marquee onmouseover="this.stop()" onmouseout="this.start()" style="width: 1068px; margin-left: 3px;"><asp:Label ID="Label1" runat="server" Text="Your Request For Smartcard Is in Process.Wait For Response.ThankYou!!!"></asp:Label></marquee></td>
            </tr>
        </table><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Larger" ForeColor="DarkGreen" OnClick="LinkButton1_Click">Back</asp:LinkButton><br /><br />
        <table align="center" style="width: 586px" id="tab" runat="server">
            <tr>
                <td>
                    <h2 style="color:#e796fb">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Smart Card For User</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gv_tickets" runat="server" AutoGenerateColumns="false" Width="1038px" onselectedindexchanged="gv_tickets_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="first_name" HeaderText="First Name" HeaderStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="last_name" HeaderText="Last Name" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="Boarding" HeaderText="Boarding Point" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="first_name" HeaderText="First Name" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="Destination" HeaderText="Destination" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="starting_date" HeaderText="Travelling Date" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="Ending_date" HeaderText="Expiry Date" ItemStyle-HorizontalAlign="Center"/>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td>
                  <asp:Button ID="Button1" runat="server" OnClientClick="print()" Text="Print" Width="82px" style="margin-left: 942px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
