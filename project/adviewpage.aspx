<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adviewpage.aspx.cs" Inherits="adviewpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('Img/Bground (2).jpg'); height: 1185px;">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 201px; top: 230px; position: absolute" Text="List of Students selected their courses "></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/Logout.jpg" OnClick="ImageButton1_Click" style="z-index: 1; left: 1136px; top: 14px; position: absolute; width: 83px; height: 90px" />

    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="z-index: 1; left: 232px; top: 298px; position: absolute; height: 199px; width: 731px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                <asp:BoundField DataField="courses" HeaderText="courses" SortExpression="courses" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseConnectionString %>" SelectCommand="SELECT [name], [dob], [department], [courses], [address], [mail], [phone] FROM [view]"></asp:SqlDataSource>

    
    </div>
    </form>
</body>
</html>
