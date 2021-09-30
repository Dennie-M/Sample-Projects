<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1266px; background-image: url('Img/BG (white).jpg');">
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 537px; top: 233px; position: absolute" Text="User Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 539px; top: 291px; position: absolute" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 670px; top: 239px; position: absolute; width: 204px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 673px; top: 285px; position: absolute; width: 203px; margin-bottom: 3px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 497px; top: 433px; position: absolute" Text="Not a User?"></asp:Label>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 610px; top: 338px; position: absolute; width: 97px;" Text="Login" OnClick="Button1_Click" />
       
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/Login1.jpg" style="z-index: 1; left: 571px; top: 57px; position: absolute; width: 319px; height: 131px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" ImageUrl="~/Img/home.gif" OnClick="ImageButton2_Click" style="z-index: 1; left: 326px; top: 85px; position: absolute; width: 110px" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="z-index: 1; left: 630px; top: 434px; position: absolute; height: 27px; width: 77px">Register</asp:LinkButton>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 681px; top: 523px; position: absolute" BackColor="Black" ForeColor="Red"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the First Name" ForeColor="Red" style="z-index: 1; left: 904px; top: 244px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Password" ForeColor="Red" style="z-index: 1; left: 911px; top: 294px; position: absolute"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
