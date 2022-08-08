<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patent.aspx.cs" Inherits="aipt_egypt.patent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
     <link href="StyleSheet1.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $("#<%=pctd.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm-dd-yy",
                yearRange: '2010:2099'
            });
        });
 $(function () {
            $("#<%=deads.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm-dd-yy",
                yearRange: '2010:2099'
            });
 });
        $(function () {
            $("#<%=fid.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm-dd-yy",
                yearRange: '2010:2099'
            });
        });
    </script>
    <title>Patents</title>
    <style>
      .mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 100%;
}
.header
{
	background-color:cadetblue;
	font-family: Arial;
	font-size: 18px;
	color:ghostwhite;
	min-height: 25px;
	text-align: center;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: center;
}
.rows:hover
{
	background-color:antiquewhite;
	color:black;
    
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
	background-color: #fff;
	color: #000;
	padding: 5px 5px 5px 5px;
}
.pager
{
	background-color: cadetblue;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: center;
}

.mydatagrid td
{
	padding: 5px;
}
.mydatagrid th
{
	padding: 5px;
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
        .auto-style20 {
            border: solid 2px black;
            min-width: 80%;
            margin-right: 57px;
        }
             .auto-style25{
             
            align-content:center;
            display: inline-block;
-webkit-box-sizing: content-box;
-moz-box-sizing: content-box;
box-sizing: content-box;
float: none;
z-index: auto;
width: auto;
height: auto;
position: static;
cursor: default;
opacity: 1;
margin: 0;
padding: 6px 20px;
overflow: visible;
border: 1px solid rgba(51,114,21,1);
-webkit-border-radius: 10px;
border-radius: 10px;
font: normal 18px/normal "Coda", Helvetica, sans-serif;
color: rgba(21,28,30,1);
-o-text-overflow: ellipsis;
text-overflow: ellipsis;
background: rgba(252,252,252,1);
-webkit-box-shadow: none;
box-shadow: none;
text-shadow: none;
-webkit-transition: none;
-moz-transition: none;
-o-transition: none;
transition: none;
-webkit-transform: none;
transform: none;
-webkit-transform-origin: 50% 50% 0;
transform-origin: 50% 50% 0;
        }   
        .auto-style57 {
            color: #006666;
        }
        .auto-style58 {
            align-content: center;
            display: inline-block;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            float: none;
            z-index: auto;
            width: auto;
            height: auto;
            position: static;
            cursor: default;
            opacity: 1;
            margin: 0;
            padding: 6px 20px;
            overflow: visible;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            font: normal 18px/normal "Coda", Helvetica, sans-serif;
            color: #006666;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            -webkit-box-shadow: none;
            box-shadow: none;
            text-shadow: none;
            -webkit-transition: none;
            -moz-transition: none;
            -o-transition: none;
            transition: none;
            -webkit-transform: none;
            transform: none;
            -webkit-transform-origin: 50% 50% 0;
            transform-origin: 50% 50% 0;
        }
        .auto-style59 {
            font-size: x-large;
            color: #009999;
        }
               .auto-style61 {
            color: #005098;
            background-color: #CCCEDB;
            font-size: medium;
        }
        .newStyle1 {
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style63 {
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
        <li ><a href="trademarks.aspx">TradeMarks</a></li>
        <li ><a href="Search.aspx">Search</a></li>
        <li ><a href="print.aspx">Print</a></li>
        <li ><a href="Clients.aspx">Clients</a></li>
          <li><a href="publishingksa.aspx">KSA Publication</a></li>
            <li><a href="deadline.aspx">Deadline</a></li>
          <li class="active"><a href="patent.aspx">Patents</a></li>
      </ul>
      
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="text-left">
    <div>
    
        <br />
        <br />
        <br />
        <table align="left">
    <tr>
                <td>     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Patent<span>s :-</span></td>
            </tr>
        </table>
        <br />
    </div>
        <div class="text-center">
            <br />
            <br />
            <div>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style20" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="130px" HorizontalAlign="Center" Width="1244px" AllowPaging="True" PageSize="25">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="patn" HeaderText="Patent" SortExpression="patn" />
                    <asp:BoundField DataField="own" HeaderText="Client" SortExpression="own" />
                    <asp:TemplateField HeaderText="PCT fil. date" SortExpression="pfd">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pfd") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>   
          
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("pfd", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="pcn" HeaderText="PCT NUM." SortExpression="pcn" />
                    <asp:BoundField DataField="coun" HeaderText="Country" SortExpression="coun" />
                    <asp:BoundField DataField="sta" HeaderText="Status" SortExpression="sta" />
                    <asp:TemplateField HeaderText="Status deadline" SortExpression="stad">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("stad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>   
          
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("stad", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Filling date" SortExpression="fild">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fild") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>   
          
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("fild", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="clref" HeaderText="Client REF." SortExpression="clref" />
                    <asp:BoundField DataField="airef" HeaderText="AIPT REF." SortExpression="airef" />
                    <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Main Figure" SortExpression="img">
                        <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler3.ashx?Id="+ Eval("Id") %>'  
                            Height="75px" Width="120px" />  
                    
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="header" Font-Bold="False" Font-Names="Georgia" HorizontalAlign="Center" />
                <PagerStyle CssClass="pager" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" ForeColor="#003366" HorizontalAlign="Left" />
                <RowStyle CssClass="rows" />
            </asp:GridView>
                <br />
                <br />
                <br />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" DeleteCommand="DELETE FROM [patn] WHERE [id] = @id" InsertCommand="INSERT INTO [patn] ([patn], [own], [pfd], [pcn], [coun], [sta], [stad], [fild], [clref], [airef]) VALUES (@patn, @own, @pfd, @pcn, @coun, @sta, @stad, @fild, @clref, @airef)" ProviderName="<%$ ConnectionStrings:aiptConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [patn], [own], [pfd], [pcn], [coun], [sta], [stad], [fild], [clref], [airef], [img] FROM [patn]" UpdateCommand="UPDATE [patn] SET [patn] = @patn, [own] = @own, [pfd] = @pfd, [pcn] = @pcn, [coun] = @coun, [sta] = @sta, [stad] = @stad, [fild] = @fild, [clref] = @clref, [airef] = @airef WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="patn" Type="String" />
                    <asp:Parameter Name="own" Type="String" />
                    <asp:Parameter DbType="Date" Name="pfd" />
                    <asp:Parameter Name="pcn" Type="String" />
                    <asp:Parameter Name="coun" Type="String" />
                    <asp:Parameter Name="sta" Type="String" />
                    <asp:Parameter DbType="Date" Name="stad" />
                    <asp:Parameter DbType="Date" Name="fild" />
                    <asp:Parameter Name="clref" Type="String" />
                    <asp:Parameter Name="airef" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="patn" Type="String" />
                    <asp:Parameter Name="own" Type="String" />
                    <asp:Parameter DbType="Date" Name="pfd" />
                    <asp:Parameter Name="pcn" Type="String" />
                    <asp:Parameter Name="coun" Type="String" />
                    <asp:Parameter Name="sta" Type="String" />
                    <asp:Parameter DbType="Date" Name="stad" />
                    <asp:Parameter DbType="Date" Name="fild" />
                    <asp:Parameter Name="clref" Type="String" />
                    <asp:Parameter Name="airef" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            <div>
                <span class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <strong class="newStyle1">New Patent</strong> </span>
                <br />
            </div>
            <table class="nav-justified">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style25"> <span class="auto-style57">Patent Name</span>&nbsp; <asp:TextBox ID="ptnt" runat="server" CssClass="auto-style25" Width="124px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style57">Client</span>&nbsp;&nbsp;
            <asp:TextBox ID="clnt" runat="server" CssClass="auto-style25" Width="120px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style57">PCT date</span>
            <asp:TextBox ID="pctd" runat="server" CssClass="auto-style25" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style57">PCT NUM.</span>
                    <asp:TextBox ID="pctn" runat="server" CssClass="auto-style25" Width="100px"></asp:TextBox>
                        <br />
                        <br />
                        <span class="auto-style57">Country</span>&nbsp;
            <asp:TextBox ID="con" runat="server" CssClass="auto-style25" Width="120px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; <span class="auto-style57">Status</span>&nbsp;
            <asp:TextBox ID="stu" runat="server" CssClass="auto-style25" Width="118px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; <span class="auto-style57">Deadline</span>&nbsp;
            <asp:TextBox ID="deads" runat="server" CssClass="auto-style25" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style57">Filling date</span>
            <asp:TextBox ID="fid" runat="server" CssClass="auto-style25" Width="97px"></asp:TextBox>
                        <br />
                        <br />
                        <span class="auto-style57">Client REF.</span>
            <asp:TextBox ID="cref" runat="server" CssClass="auto-style25" Width="115px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; <span class="auto-style57">AIPT REF.</span>
  
            <asp:TextBox ID="aire" runat="server" CssClass="auto-style25" Width="115px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style25" Width="298px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="Button1" runat="server" Height="42px" Text="Save" Width="104px" OnClick="Button1_Click" Font-Bold="False" Font-Names="Open Sans Semibold" Font-Size="Large" ForeColor="#006666" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
                </tr>
            </table>
            <div class="text-center">
        <br />
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        <br />
        <br />
        <br />
        </div>
    </form>
    <p class="auto-style61"><em>&nbsp;<span class="auto-style63"><strong>Developed by</strong> </span></em><span class="auto-style63"><em>A</em></span><span class="auto-style18"><span class="auto-style63"><em>IPT (Dep. IT)</em></span></span></p>
</body>
</html>
