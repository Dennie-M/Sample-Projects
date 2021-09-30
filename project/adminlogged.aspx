<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogged.aspx.cs" Inherits="adminlogged" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('Img/Bground%20(2).jpg'); height: 964px;">
    
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 533px; top: 125px; position: absolute" Text="Staff Viewing Page" Font-Bold="True" Font-Italic="True" Font-Names="Franklin Gothic Demi Cond" Font-Size="Large"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/virtual-college-orientation.jpg" style="z-index: 1; left: 280px; top: 203px; position: absolute; height: 402px; width: 764px" />
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 460px; top: 669px; position: absolute" Text="Click to the View The Student Details" />
    </div>
    </form>
</body>
</html>
