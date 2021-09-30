<%@ Page Language="C#" AutoEventWireup="true" CodeFile="front page.aspx.cs" Inherits="front_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Course Registration</title>
</head>
<body bgcolor="black" style="margin-top: 15px">
    <form id="form1" runat="server">
    <div style="height: 929px; background-image: url('Img/BG (wood).jpg');">
    
        <asp:Label ID="Label1" runat="server" BackColor="#99FF99" BorderColor="Blue" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Franklin Gothic Book" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 575px; top: 111px; position: absolute" Text="Online Course Registration"></asp:Label>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; left: 1139px; top: 329px; position: absolute" OnClick="LinkButton3_Click1">User</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" style="z-index: 1; left: 1248px; top: 325px; position: absolute" OnClick="LinkButton4_Click">Staff</asp:LinkButton>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/virtual-college-orientation.jpg" style="z-index: 1; left: 37px; top: 200px; position: absolute; height: 499px; width: 1020px" />
    
    </div>
    </form>
</body>
</html>
