
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="publishingksa.aspx.cs" Inherits="aipt_egypt.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KSA Publication</title>
     <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
        <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#<%=dat.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "MM dd yy",
                yearRange: '2010:2099'
            });
        });
    </script>
     <link href="StyleSheet1.css" rel="stylesheet" />
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
.auto-style18 {
            width: 30%;
            height: 33px;
            background-color: #FFFFFF;
        }
.header{
    text-align: center;
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
}
        .rows:hover {
            background-color: #5badff;
            color: #fff;
        }
        .auto-style50 {
                color: #007ACC;
                background-color: #CCCEDB;
                font-size: medium;
            }
            .auto-style60 {
                background-color: #CCCEDB;
            font-family:'Courier New';
            }
         .auto-style15 {
            display: inline-block;
-webkit-box-sizing: content-box;
-moz-box-sizing: content-box;
box-sizing: content-box;
float: none;
z-index: auto;
width: auto;
height: 22px;
position: relative;
content: "";
cursor: pointer;
opacity: 1;
margin: 0 13px 0 0;
padding: 10px 28px 10px 20px;
overflow: visible;
border: none;
-webkit-border-radius: 4px 1px 1px 4px;
border-radius: 4px 1px 1px 4px;
font: normal 20px/24px Georgia, serif;
color: rgba(255,255,255,1);
text-align: center;
text-transform: uppercase;
-o-text-overflow: ellipsis;
text-overflow: ellipsis;
background: #1abc9c;
-webkit-box-shadow: 0 5px 0 0 #16a085 , 5px 5px 0 0 #16a085 ;
box-shadow: 0 5px 0 0 #16a085 , 5px 5px 0 0 #16a085 ;
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
        .auto-style19 {
            font-size: x-large;
            color: #279EDA;
        }
        .auto-style20 {
            font-size: x-large;
        }
        .auto-style21 {
            margin-bottom: 3px;
        }
        .auto-style23 {
            font-size: large;
        }
        .newStyle1 {
            border-style: double;
        }
        .newStyle2 {
            border-style: double;
            background-color: #FFFFFF;
        }
        .auto-style24 {
            font-weight: bold;
        }
        .auto-style25 {
            border-style: double;
            background-color: #FFFFFF;
            width: 1223px;
        }
        .auto-style61 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="auto-style4">
    <div class="navbar-header">
      &nbsp;
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
          <li class="active"><a href="publishingksa.aspx">KSA Publication</a></li>
          <li><a href="deadline.aspx">Deadline</a></li>
      </ul>
      
    </div>
  </div>
        </nav>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <table class="auto-style18">
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; KSA Publication</td>
            </tr>
        </table>
        <br />
        <div class="text-center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" DeleteCommand="DELETE FROM [puksa] WHERE [id] = @id" InsertCommand="INSERT INTO [puksa] ([trademark], [clas], [filingnumber], [date], [owner]) VALUES (@trademark, @clas, @filingnumber, @date, @owner)" ProviderName="<%$ ConnectionStrings:aiptConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [trademark], [clas], [filingnumber], [date], [owner], [logo] FROM [puksa]" UpdateCommand="UPDATE [puksa] SET [trademark] = @trademark, [clas] = @clas, [filingnumber] = @filingnumber, [date] = @date, [owner] = @owner WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="trademark" Type="String" />
                    <asp:Parameter Name="clas" Type="String" />
                    <asp:Parameter Name="filingnumber" Type="String" />
                    <asp:Parameter Name="date" Type="Int32" />
                    <asp:Parameter Name="owner" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="trademark" Type="String" />
                    <asp:Parameter Name="clas" Type="String" />
                    <asp:Parameter Name="filingnumber" Type="String" />
                    <asp:Parameter Name="date" Type="Int32" />
                    <asp:Parameter Name="owner" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" Width="1091px" Height="436px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="trademark" HeaderText="Trade Mark" SortExpression="trademark" />
                    <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                    <asp:BoundField DataField="filingnumber" HeaderText="Filing Num." SortExpression="filingnumber" />
                    <asp:TemplateField HeaderText="Date Publication">    
     <ItemTemplate>    
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("date", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
</asp:TemplateField>
                    <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                    <asp:TemplateField HeaderText="Logo" SortExpression="logo">
                         <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler2.ashx?Id="+ Eval("Id") %>'  
                            Height="75px" Width="120px" />  
                    
                    </ItemTemplate>  
                </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="header" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" CssClass="rows" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" DeleteCommand="DELETE FROM [pksa] WHERE [id] = @id" InsertCommand="INSERT INTO [pksa] ([trademark], [clas], [filingnumber], [date], [owner]) VALUES (@trademark, @clas, @filingnumber, @date, @owner)" ProviderName="<%$ ConnectionStrings:aiptConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [trademark], [clas], [filingnumber], [date], [owner], [logo] FROM [pksa]" UpdateCommand="UPDATE [pksa] SET [trademark] = @trademark, [clas] = @clas, [filingnumber] = @filingnumber, [date] = @date, [owner] = @owner WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="trademark" Type="String" />
                    <asp:Parameter Name="clas" Type="String" />
                    <asp:Parameter Name="filingnumber" Type="String" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="owner" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="trademark" Type="String" />
                    <asp:Parameter Name="clas" Type="String" />
                    <asp:Parameter Name="filingnumber" Type="String" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="owner" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="text-center">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style20">&nbsp;</span></strong><span class="auto-style19"><strong>New Publish</strong></span></p>
            <div class="auto-style25">
                <div class="text-left">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style61">
                <span class="auto-style22">mm/dd/yy</span></span><br /><strong><span class="auto-style23">Trademark<span class="auto-style61">*</span></span></strong>&nbsp;&nbsp;
                <asp:TextBox ID="trm" runat="server" Height="26px" Width="158px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<strong><span class="auto-style23"> Class</span></strong>&nbsp;
                <asp:TextBox ID="cls" runat="server" Height="25px" Width="135px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> <span class="auto-style23">Filing num.</span></strong>&nbsp;
                <asp:TextBox ID="filn" runat="server" Height="25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="auto-style23">Date</span></strong>&nbsp;
                <asp:TextBox ID="dat" runat="server" Height="26px">Ex 12/30/2018</asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="auto-style23"><br />
                    Owner</span></strong>&nbsp;
                <asp:TextBox ID="own" runat="server" Height="27px" Width="146px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span class="auto-style23">
                </div>
        <asp:FileUpload ID="fileuploadEmpImage" runat="server" CssClass="auto-style21" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="auto-style24" Font-Names="Georgia" Height="41px" Width="124px" />
                </span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </div>
            <div class="text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <div class="text-center">
        </div>
        <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        </div>
    </form>
     <p class="auto-style60"><span class="auto-style16"><strong><em>&nbsp;</em></strong><span class="auto-style50"><strong>Developed by AIPT (Dep. IT )</strong></span></span></p>
</body>
</html>
