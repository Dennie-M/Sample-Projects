<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 953px; background-image: url('Img/BG%20(white).jpg');">
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 519px; top: 122px; position: absolute" Text="First Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 519px; top: 122px; position: absolute" Text="First Name"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 523px; top: 174px; position: absolute" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 633px; top: 120px; position: absolute; width: 206px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 637px; top: 174px; position: absolute; width: 205px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 524px; top: 226px; position: absolute" Text="Gender"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="z-index: 1; left: 635px; top: 225px; position: absolute; height: 28px; width: 246px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 536px; top: 270px; position: absolute" Text="D.O.B"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 636px; top: 268px; position: absolute; width: 217px" TextMode="Date" EnableTheming="False"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 515px; top: 380px; position: absolute" Text="Phone No"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" style="z-index: 1; left: 693px; top: 609px; position: absolute; width: 51px;" BorderColor="#FF6600" OnClick="LinkButton1_Click">Login</asp:LinkButton>
    
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 526px; top: 609px; position: absolute" Text="Existing Users?"></asp:Label>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 601px; top: 532px; position: absolute; height: 29px;" Text="Register" OnClick="Button1_Click"/>
       <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/register (1).jpg" style="z-index: 1; left: 657px; top: 1px; position: absolute; height: 88px; bottom: 469px;" Width="72px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" ImageUrl="~/Img/home.gif" OnClick="ImageButton1_Click" style="z-index: 1; left: 277px; top: 34px; position: absolute; width: 89px" />
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 508px; top: 324px; position: absolute" Text="E-mail Id"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 631px; top: 320px; position: absolute; width: 220px" TextMode="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 633px; top: 373px; position: absolute; width: 221px;"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 507px; top: 444px; position: absolute" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 637px; top: 438px; position: absolute; width: 221px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the first name" ForeColor="Red" style="z-index: 1; left: 872px; top: 123px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Last Name" ForeColor="Red" style="z-index: 1; left: 880px; top: 179px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter the D.O.B" ForeColor="Red" style="z-index: 1; left: 883px; top: 269px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter the Mail-Id" ForeColor="Red" style="z-index: 1; left: 889px; top: 326px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter the Phone Number" ForeColor="Red" style="z-index: 1; left: 896px; top: 384px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter the Password" ForeColor="Red" style="z-index: 1; left: 901px; top: 445px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Mail Id  in Correct Format" ForeColor="#FF5050" style="z-index: 1; left: 1059px; top: 322px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       
    </div>
    </form>
</body>
</html>
