<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="aipt_egypt.Clients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Clients</title>
    <style>
 .auto-style15 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: inline-block;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            float: none;
            z-index: auto;
width: 196px;
            height: 22px;
            position: relative;
            content: "";
            cursor: pointer;
            opacity: 1;
            margin: 0 13px 0 0;
            padding: 10px 28px 10px 20px;
            overflow: visible;
            -webkit-border-radius: 4px 1px 1px 4px;
            border-radius: 4px 1px 1px 4px;
            font: normal 20px/24px Georgia, serif;
            color: rgba(255,255,255,1);
            text-align: center;
            text-transform: uppercase;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            background: #1abc9c;
            -webkit-box-shadow: 0 5px 0 0 #16a085 , 5px 5px 0 0 #16a085;
            box-shadow: 0 5px 0 0 #16a085 , 5px 5px 0 0 #16a085;
            text-shadow: none;
            -webkit-transition: none;
            -moz-transition: none;
            -o-transition: none;
            transition: none;
            -webkit-transform: none;
            transform: none;
            -webkit-transform-origin: 50% 50% 0;
            transform-origin: 50% 50% 0;
            left: 0px;
            top: 0px;
        }
   /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      font-size: large;
      font-family:normal 25px/1 Georgia, serif;
    }
.nav navbar-nav a.active {
    background-color: #4CAF50;
    color: white;
}
        .auto-style16 {
            color: #007ACC;
            font-size: medium;
        }
        .auto-style17 {
            background-color: #CCCEDB;
            font-family:'Courier New';
        }
        .auto-style18 {
            font-weight: bold;
        }
    </style>
</head>
<body>
         <nav class="navbar navbar-inverse">
  <div class="auto-style4">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">AIP&T EGYPT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="trademarks.aspx">TradeMarks</a></li>
        <li ><a href="Search.aspx">Search</a></li>
        <li ><a href="print.aspx">Print</a></li>
        <li class="active"><a href="Clients.aspx">Clients</a></li>
          <li><a href="publishingksa.aspx">KSA Publication</a></li>
            <li><a href="deadline.aspx">Deadline</a></li>
          <li><a href="patent.aspx">Patents</a></li>
      </ul>
      
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <table>
    <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; <span>Clients :-</span></td>
            </tr>
        </table>
    </div>
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="299px" HorizontalAlign="Center" PageSize="30" Width="607px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id">
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                    <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT [id], [owner], [country] FROM [tmarks]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
    <p class="auto-style17"><span class="auto-style16"><em><strong>&nbsp;Developed by </strong></em>A<span class="auto-style18">IPT (Dep. IT)</span></span></p>
</body>
</html>
