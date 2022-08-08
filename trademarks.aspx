<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trademarks.aspx.cs" Inherits="aipt_egypt.trademarks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TradeMarks</title>
      <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
     <link href="StyleSheet1.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $("#<%=TextBox1.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm-dd-yy",
                yearRange: '2010:2099'
            });
        });
    </script>
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
     <style type="text/css">
         .GridPager a
        {
            display:block;
            height:15px;
            width:15px;
            background-color:#3AC0F2;
            color:#fff;
            font-weight:bold;
            border:1px solid #3AC0F2;
            text-align:center;
            text-decoration:none;
        }
         .GridPager span
        {
            display:block;
            height:15px;
            width:15px;
            background-color:#fff;
            color:#3AC0F2;
            font-weight:bold;
            border:1px solid #3AC0F2;
            text-align:center;
            text-decoration:none;
        }
        .mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 80%;
}
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
.header
{
	background-color: #000;
	font-family: Georgia;
	color: White;
	height: 25px;
	text-align:center;
	font-size: 25px;
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
	background-color: #5badff;
	color: #fff;
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
	background-color: #5badff;
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

        .newStyle1 {
            font-family: "Lucida Calligraphy";
            
        }
        .newStyle2 {
            font-family: "Lucida Calligraphy";
            color: #009933;
        }
        auto-style23 {
            font-size: x-large;
            color: #0000FF;
        }
          .auto-style20 {
            display: inline-block;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            float: none;
            z-index: auto;
            position: static;
            cursor: default;
            opacity: 1;
            margin: 0;
            padding: 6px 20px;
            overflow: visible;
            border: 1px solid #027ecc;
            -webkit-border-radius: 32px / 54px;
            border-radius: 32px / 54px;
            font: normal 18px/normal "Coda", Helvetica, sans-serif;
            color: rgba(0,142,198,1);
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            -webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
            box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
            text-shadow: 1px 1px 0 rgba(255,255,255,0.66);
            -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -webkit-transform: none;
            transform: none;
            -webkit-transform-origin: 50% 50% 0;
            transform-origin: 50% 50% 0;
        }
        .auto-style1 {
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
border: 1px solid #027ecc;
-webkit-border-radius: 32px / 54px;
border-radius: 32px / 54px;
font: normal 18px/normal "Coda", Helvetica, sans-serif;
color: rgba(0,142,198,1);
-o-text-overflow: ellipsis;
text-overflow: ellipsis;
background: rgba(252,252,252,1);
-webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
text-shadow: 1px 1px 0 rgba(255,255,255,0.66) ;
-webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-webkit-transform: none;
transform: none;
-webkit-transform-origin: 50% 50% 0;
transform-origin: 50% 50% 0;
justify-content:center;
        }
        .auto-style3 {
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
border: none;
-webkit-border-radius: 32px / 54px;
border-radius: 32px / 54px;
font: normal 18px/normal "Coda", Helvetica, sans-serif;
color: rgba(0,142,198,1);
-o-text-overflow: ellipsis;
text-overflow: ellipsis;
background: rgba(252,252,252,1);
-webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
text-shadow: 1px 1px 0 rgba(255,255,255,0.66) ;
-webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-webkit-transform: none;
transform: none;
-webkit-transform-origin: 50% 50% 0;
transform-origin: 50% 50% 0;
        }
        .auto-style4 {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
            height: 45px;
        }
        .auto-style11 {
           display: inline-block;
-webkit-box-sizing: content-box;
-moz-box-sizing: content-box;
box-sizing: content-box;
float: none;
z-index: auto;
position: static;
cursor: pointer;
opacity: 1;
margin: -18px -18px 0px -18px;
padding: 10px 20px;
overflow: visible;
border: 1px solid #007cad;
-webkit-border-radius: 3px;
border-radius: 3px;
color: #007ACC;
-o-text-overflow: clip;
text-overflow: clip;
-webkit-box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.3);
box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.3);
text-shadow: -1px -1px 0 rgba(15,73,168,0.66);
-webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
-webkit-transform: none;
transform: none;
-webkit-transform-origin: 50% 50% 0;
transform-origin: 50% 50% 0;
             font-variant: normal;
             font-size: xx-large;
             line-height: normal;
             font-family: Arial, Helvetica, sans-serif;
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
        .style10{
            justify-content:center;
        }
        .auto-style18 {
            width: 30%;
            height: 33px;
            background-color: #FFFFFF;
        }
         .auto-style24 {
             border: solid 2px black;
             min-width: 80%;
         }
         .auto-style26 {
             text-align: center;
             font-size: x-large;
             color: #007ACC;
         }
         .auto-style27 {
             background-color: #F5F5F5;
         }
         .auto-style30 {
             color: #007ACC;
             font-size: medium;
         }
         .auto-style31 {
             background-color: #CCCEDB;
            font-family:'Courier New';
         }
         .auto-style32 {
             color: #FF0000;
             font-size: x-large;
         }
         .auto-style33 {
             color: #0000FF;
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
        <li class="active"><a href="trademarks.aspx">TradeMarks</a></li>
        <li ><a href="Search.aspx">Search</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
    <form id="form2" runat="server" enctype="multipart/form-data">
        <div class="text-center">
        <h2 class="auto-style3">&nbsp;</h2>
           
        <table class="auto-style18">
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; <span>Trademarks :-</span></td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        

        
    
    <div>
    
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style24" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="871px" HorizontalAlign="Center" Width="1312px" AllowPaging="True" PageSize="25" AllowSorting="True">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button3" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" CausesValidation="False" CommandName="Edit" CssClass="auto-style33" Font-Bold="True" ForeColor="Black" Height="21px" Text="Edit" Width="61px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                

<asp:TemplateField HeaderText="Deadline" SortExpression="dead">  
    <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dead") %>'></asp:TextBox>
                        </EditItemTemplate>
     <ItemTemplate>   
          
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("dead", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>

</asp:TemplateField>






                <asp:TemplateField HeaderText="Logo">
                <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler1.ashx?Id="+ Eval("Id") %>'  
                            Height="75px" Width="120px" />  
                    
                    </ItemTemplate>  
                </asp:TemplateField>
                   
                <asp:TemplateField ShowHeader="False" Visible="False">
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Height="32px" ImageUrl="~/Images/save.png" Text="Update" Width="49px" />
                        <span class="auto-style33">-------</span>&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="Double" BorderWidth="2px" CausesValidation="False" CommandName="Cancel" Height="24px" ImageUrl="~/Images/cancel-icon-png-24.jpg.png" Text="Cancel" Width="34px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" Height="36px" ImageUrl="~/Images/edit.png" Text="Edit" Width="41px" />
                    </ItemTemplate>
                </asp:TemplateField>
                   
                <asp:TemplateField ShowHeader="False" Visible="False"></asp:TemplateField>
                   
            </Columns>
            <HeaderStyle CssClass="header" Font-Size="Large" HorizontalAlign="Center" Wrap="True" />
            <PagerSettings Mode="NumericFirstLast" />
            <PagerStyle Font-Bold="True" Font-Overline="False" Font-Size="Medium" CssClass="pager" Font-Names="Copperplate Gothic Bold" HorizontalAlign="Center" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" DeleteCommand="DELETE FROM [tmarks] WHERE [id] = @id" InsertCommand="INSERT INTO [tmarks] ([trademark], [clas], [regnum], [country], [arabic], [markstatus], [owner], [note]) VALUES (@trademark, @clas, @regnum, @country, @arabic, @markstatus, @owner, @note)" SelectCommand="SELECT id, trademark, clas, regnum, country, arabic, markstatus, owner, note, logo, dead FROM tmarks" UpdateCommand="UPDATE [tmarks] SET [trademark] = @trademark, [clas] = @clas, [regnum] = @regnum, [country] = @country, [arabic] = @arabic, [markstatus] = @markstatus, [owner] = @owner, [note] = @note WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="trademark" Type="String" />
                <asp:Parameter Name="clas" Type="String" />
                <asp:Parameter Name="regnum" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="arabic" Type="String" />
                <asp:Parameter Name="markstatus" Type="String" />
                <asp:Parameter Name="owner" Type="String" />
                <asp:Parameter Name="note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="trademark" Type="String" />
                <asp:Parameter Name="clas" Type="String" />
                <asp:Parameter Name="regnum" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="arabic" Type="String" />
                <asp:Parameter Name="markstatus" Type="String" />
                <asp:Parameter Name="owner" Type="String" />
                <asp:Parameter Name="note" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="deadline" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="doPrint()" CssClass="auto-style11" Height="40px" Width="121px" />
            <br />
            <br />
        <br />
        <div class="auto-style26">
            <strong><span class="auto-style27">Insert new mark :-</span></strong></div>
        
        <table class="style10">
            <tr>
                <td class="auto-style1"><span class="text-left">TradeMark</span><span><span class="auto-style32">*</span> </span>
                    <asp:TextBox ID="trad" runat="server" CssClass="auto-style20" Width="147px"></asp:TextBox>
                    &nbsp;<span>&nbsp;&nbsp; Class </span> 
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="51px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                    </asp:DropDownList>
                    <span>&nbsp;&nbsp;&nbsp;reg Num. 
                    <asp:TextBox ID="reg" runat="server" CssClass="auto-style20" Width="132px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; Country&nbsp;<asp:TextBox ID="con" runat="server" CssClass="auto-style20" Width="112px"></asp:TextBox>
&nbsp;&nbsp; Arabic 
        &nbsp;</span><asp:TextBox ID="arb" runat="server" CssClass="auto-style20" Width="96px"></asp:TextBox>
                    <span class="auto-style"><br />
                    <br />
                    &nbsp;</span><span>Mark Status </span> 
                    <asp:TextBox ID="ms" runat="server" CssClass="auto-style20" Width="125px"></asp:TextBox>
                    <span>&nbsp;&nbsp;&nbsp; Owner &nbsp;<asp:TextBox ID="own" runat="server" CssClass="auto-style20" Width="190px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; Deadline<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20">Ex 12/30/2018</asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT [date] FROM [deadline]"></asp:SqlDataSource>
                    &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<br />
                    <asp:FileUpload ID="fileuploadEmpImage" runat="server" CssClass="auto-style20" Width="290px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="sav" runat="server" OnClick="sav_Click1" Text="Save" Height="43px" Width="120px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            </table>
        </div>
    </form>
    
      <p>
&nbsp;
      </p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
 <p class="auto-style31"><strong><em><span class="auto-style16">&nbsp;<span class="auto-style30">Developed by AIPT (Dep. IT )</span></span></em></strong></p>
</body>
</html>
