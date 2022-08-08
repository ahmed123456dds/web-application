<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="aipt_egypt.print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script>
        function doPrint() {
            var prtContent = document.getElementById('<%= GridView1.ClientID %>');
            prtContent.border = 0; //set no border here
            var WinPrint = window.open('', '', 'left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
            WinPrint.document.write(prtContent.outerHTML);
            printWindow.document.write("<img id='img' src='" + document.getElementById('ctl00_MainContent_ImgMyPhoto').src + "'/>");
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }
</script>
    <title>Print</title>
    <style>
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
        .mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 80%;
}
.header
{
	background-color: #646464;
	font-family: Arial;
	color: White;
	border: none 0px transparent;
	height: 25px;
	text-align: left;
	font-size: 20px;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: center;
	border: none 0px transparent;
}
.rows:hover
{
	background-color: #ff8000;
	font-family: Arial;
	color: #fff;
	text-align: left;
}
.selectedrow
{
	background-color: #ff8000;
	font-family: Arial;
	color: #fff;
	font-weight: bold;
	text-align: left;
}
.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
{
	background-color: #000;
	color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	background-color: #c9c9c9;
	color: #000;
	padding: 5px 5px 5px 5px;
}
.pager
{
	background-color: #646464;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: left;
}

.mydatagrid td
{
	padding: 5px;
}
.mydatagrid th
{
	padding: 5px;
}
        .auto-style4 {
            width: 80%;
            min-width: 80%;
            font-size: small;
            border: 2px solid black;
        }
        .auto-style5 {
            min-width: 80%;
            font-size: xx-small;
            border: 2px solid black;
            margin-right: 86px;
        }
        .auto-style16 {
            color: #007ACC;
        }
        .auto-style17 {
            background-color: #CCCEDB;
            font-family:'Courier New';
        }
        .auto-style18 {
            background-color: #CCCEDB;
            font-family: 'Courier New';
            font-size: medium;
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
        <li><a href="trademarks.aspx">TradeMarks</a></li>
        <li><a href="Search.aspx">Search</a></li>
        <li class="active"><a href="print.aspx">Print</a></li>
        <li><a href="Clients.aspx">Clients</a></li>
          <li><a href="publishingksa.aspx">KSA Publication</a></li>
          <li><a href="deadline.aspx">Deadline</a></li>
          <li><a href="patent.aspx">Patents</a></li>
      </ul>
      
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
    <div class="text-center">
        <br />
    <table>
    <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; <span>Print :-</span></td>
            </tr>
        </table>
        <div class="text-center">
            <strong>
            <asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="doPrint()" Width="161px" BorderStyle="None" Font-Size="X-Large" ForeColor="#005098" Height="49px" />
            </strong>
        <br />
    
        </div>
    
    </div>
        <div>
        <asp:GridView ID="GridView1" CssClass="auto-style5"  PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HorizontalAlign="Center" Width="1166px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg Num." SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:TemplateField HeaderText="Deadline">    
     <ItemTemplate>    
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("dead", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
</asp:TemplateField>
                <asp:TemplateField HeaderText="Logo" SortExpression="logo">
                    
                <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler1.ashx?Id="+ Eval("Id") %>'  
                            Height="150px" Width="250px" />  
                    
                    </ItemTemplate> 
                        </asp:TemplateField> 
            </Columns>
            <HeaderStyle CssClass="header" Font-Names="Georgia" />
            <PagerStyle CssClass="pager" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks]">
        </asp:SqlDataSource>
    </form>
     <p class="auto-style17"><span class="auto-style16"><em><strong>&nbsp;<span class="auto-style18">Developed by AIPT (Dep. IT)</span></strong></em></span></p>
</body>
</html>
