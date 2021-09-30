<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1266px; background-image: url('Img/BG (white).jpg');">
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 549px; top: 243px; position: absolute" Text="Staff Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 648px; top: 241px; position: absolute; width: 204px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 658px; top: 380px; position: absolute; width: 81px;" Text="Login" OnClick="Button1_Click" />
    
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 534px; top: 314px; position: absolute" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 651px; top: 310px; position: absolute; width: 203px" TextMode="Password"></asp:TextBox>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/Login1.jpg" style="z-index: 1; left: 551px; top: 64px; position: absolute; width: 319px; height: 131px" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the User Name" ForeColor="Red" style="z-index: 1; left: 901px; top: 238px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Password" ForeColor="Red" style="z-index: 1; left: 906px; top: 286px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 754px; top: 457px; position: absolute"></asp:Label>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" ImageUrl="~/Img/home.gif" OnClick="ImageButton2_Click" style="z-index: 1; left: 326px; top: 85px; position: absolute; width: 110px" />
    </div>
    </form>
</body>
</html>
