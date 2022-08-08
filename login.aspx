<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="aipt_egypt.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        user
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        pass
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="login" Width="78px" />
&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="invaild"></asp:Label>
    
    </div>
    </form>
</body>
</html>
