<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
    <title>Admin View page</title>
    <style type="text/css">
        .auto-style1 {
            width: 386px;
        }
    </style>
</head>
<body style="background-color:#d7f2f8">
    <form id="form1" runat="server">
    <div align="center">
        <img alt="" src="Images/Metro smart (1).jpg" style="height: 177px; width: 910px; margin-left: 15px; margin-bottom: 0px" />
     <h2 style="color:#0094ff"><u>METRO BUS AND TRAIN SMART CARD ISSUE AND RECHARGE SYSTEM</u></h2>
    </div>
        <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/Logout.jpg" ImageAlign="Right" Height="59px" style="margin-left: 0px" Width="55px" OnClick="ImageButton1_Click" /><br />
        <div>
            <table align="center">
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="#009900" style="text-decoration:none" OnClick="LinkButton1_Click">Requested User's</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" ForeColor="#009900" style="text-decoration:none" OnClick="LinkButton2_Click">Smartcard Issue</asp:LinkButton>
                    </td>
                </tr>
            </table><br />
            <table align="center">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" PageSize="5" 
                            AutoGenerateColumns="false" AlternatingRowStyle-foreColor="#cc6600" 
                            AllowPaging="true" HeaderStyle-ForeColor="Black" PagerStyle-ForeColor="Green" 
                            OnPageIndexChanging="GridView1_PageIndexChanging" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="first_name" HeaderText="First Name" />
                                <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" />
                                <asp:BoundField DataField="address" HeaderText="Address" />
                                <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                                <asp:BoundField DataField="email" HeaderText="Email" />
                                <asp:BoundField DataField="boarding" HeaderText="Boarding" />
                                <asp:BoundField DataField="destination" HeaderText="Destination" />
                                <asp:BoundField DataField="account_no" HeaderText="Account Number" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
