<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regsitration.aspx.cs" Inherits="regsitrationaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1219px; width: 1564px;">
    <form id="form1" runat="server">
    <div style="background-image: url('Img/BG%20(black).jpg'); height: 1430px; width: 1554px;">
    
        <asp:Label ID="Label1" runat="server" ForeColor="Lime" style="z-index: 1; left: 481px; top: 148px; position: absolute; height: 22px;" Text="D.O.B"></asp:Label>
       
    
    
    
        <asp:Label ID="Label3" runat="server" ForeColor="Lime" style="z-index: 1; left: 489px; top: 87px; position: absolute" Text="Name"></asp:Label>
        
    
        <asp:Label ID="Label9" runat="server" ForeColor="Lime" style="z-index: 1; left: 523px; top: 18px; position: absolute; height: 27px; width: 190px; margin-top: 17px;" Text="Personal  Information"></asp:Label>
        
    
    
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 562px; top: 548px; position: absolute; right: 697px" Text="Submit" OnClick="Button1_Click" />
       
    
            <asp:Label ID="Label4" runat="server" ForeColor="Lime" style="z-index: 1; left: 477px; top: 314px; position: absolute; height: 22px;" Text="Address"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="Lime" style="z-index: 1; left: 458px; top: 251px; position: absolute" Text="Courses Offered"></asp:Label>
       
        
    
        <asp:Label ID="Label10" runat="server" ForeColor="Lime" style="z-index: 1; left: 470px; top: 203px; position: absolute" Text="Department"></asp:Label>
        <asp:Label ID="Label11" runat="server" ForeColor="Lime" style="z-index: 1; left: 471px; top: 394px; position: absolute" Text="E-mail Id"></asp:Label>
        <asp:Label ID="Label12" runat="server" ForeColor="Lime" style="z-index: 1; left: 469px; top: 440px; position: absolute" Text="Phone no"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 590px; top: 90px; position: absolute; right: 575px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 592px; top: 145px; position: absolute" TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 594px; top: 202px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 601px; top: 251px; position: absolute; width: 181px">
            <asp:ListItem>Aritificial Intelligence</asp:ListItem>
            <asp:ListItem>Machine Learning</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Big Data Analytics</asp:ListItem>
            <asp:ListItem>Computer Graphics</asp:ListItem>
            <asp:ListItem>Cyber Security</asp:ListItem>
            <asp:ListItem>Internet Of Things(IOT)</asp:ListItem>
            <asp:ListItem>Android </asp:ListItem>
            <asp:ListItem>UI Interface</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 601px; top: 313px; position: absolute" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 607px; top: 390px; position: absolute; width: 190px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 610px; top: 440px; position: absolute; width: 189px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Name" ForeColor="Red" style="z-index: 1; left: 872px; top: 90px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the Department" ForeColor="Red" style="z-index: 1; left: 875px; top: 202px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the D.O.B" ForeColor="Red" style="z-index: 1; left: 873px; top: 146px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter the Phone Number" ForeColor="Red" style="z-index: 1; left: 895px; top: 445px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter the Address" ForeColor="Red" style="z-index: 1; left: 873px; top: 330px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Mail Id  in Correct Format" ForeColor="#FF5050" style="z-index: 1; left: 1067px; top: 393px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter the Mail-Id" ForeColor="Red" style="z-index: 1; left: 892px; top: 393px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select Any of The Course" ForeColor="Red" style="z-index: 1; left: 882px; top: 254px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label13" runat="server" BackColor="Red" ForeColor="Lime" style="z-index: 1; left: 705px; top: 654px; position: absolute"></asp:Label>
    
    </div>
    </form>
</body>
</html>
