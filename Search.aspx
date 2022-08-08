<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="apit.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Search</title>
        <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <link href="StyleSheet1.css" rel="stylesheet" />
        <style type="text/css">
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
height: 21px;
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
            .auto-style1 {
                color: #000000;
            }
            .auto-style3 {
                font-size: x-large;
                color: #006699;
            }
            navbar {
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
	text-align: center;
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
            .auto-style16 {
                font-size: large;
            }
            .auto-style17 {
                text-decoration: underline;
                color: #FFFFFF;
            }
            .auto-style18 {
                color: #007ACC;
                background-color: #CCCEDB;
                font-size: medium;
            }
            .auto-style19 {
                background-color: #CCCEDB;
            font-family:'Courier New';
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
        <li class="active" ><a href="Search.aspx">Search</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
   
    <form id="form1" runat="server">
    <div>
    
        <br />
    
        <table>
    <tr>
                <td class="auto-style15"><span class="auto-style1">&nbsp;&nbsp;</span><span class="auto-style16"><span class="auto-style17">Search by Tardemark or Class or reg. num...etc</span></span></td>
            </tr>
        </table>
  
        &nbsp;&nbsp;&nbsp;<strong>&nbsp;<br />
        TradeMark&nbsp;</strong>
        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="156px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" BorderStyle="None" Font-Bold="True" Height="29px" Width="74px" Font-Names="Georgia" />
        &nbsp;&nbsp;&nbsp;<strong> Class 
        <asp:DropDownList ID="DropDownList1" runat="server"  DataTextField="clas" DataValueField="clas">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
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
        </strong>&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Height="29px" Width="74px" />
        &nbsp;&nbsp; <strong>Reg. Num</strong>
        <asp:TextBox ID="reg" runat="server" Height="26px" Width="156px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Height="29px" Width="74px" />
        &nbsp;&nbsp; <strong>Country</strong><asp:TextBox ID="con" runat="server" Height="26px" Width="156px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Search" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Height="29px" Width="74px" />
        <br />
        <br />
        &nbsp;<strong>Status</strong>&nbsp; <asp:TextBox ID="ms" runat="server" Height="26px" Width="156px"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Search" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Height="29px" Width="74px" />
        &nbsp;&nbsp; <strong>Owner</strong> <asp:TextBox ID="not" runat="server" Height="26px" Width="156px"></asp:TextBox>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Search" BorderStyle="None" Font-Bold="True" Font-Names="Georgia" Height="29px" Width="74px" />
        <br />
&nbsp;<strong>--------------------------------------------------------------------------------------------------------------------------------------------<span class="auto-style3">RESULTS</span>------------------------------------------------------------------------------------------------------------------------------<br />
        </strong>&nbsp;&nbsp;
        <asp:Button ID="cancel" runat="server" OnClick="Button4_Click" Text="Cancel Search" Visible="False" BorderStyle="Ridge" Height="26px" Width="148px" BorderColor="Aqua" />
        <br />
    
    </div>
        <div class="text-center">
        <asp:GridView ID="Gridtra" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="190px" Width="930px" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" >
                </asp:BoundField>
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
               <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Large" HorizontalAlign="Center" Font-Names="Book Antiqua" Font-Underline="False" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([trademark] LIKE '%' + @trademark + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="trademark" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Height="190px" Visible="False" Width="930px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" >
                </asp:BoundField>
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Large" HorizontalAlign="Center" Font-Names="Book Antiqua" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([clas] = @clas)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="clas" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;<br />
        <div class="text-center">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." Visible="False" Width="930px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="190px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Large" Font-Names="Book Antiqua" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([regnum] LIKE '%' + @regnum + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="reg" Name="regnum" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <div class="text-center">
        <asp:GridView ID="cont" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." Height="190px" Visible="False" Width="930px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Names="Book Antiqua" Font-Size="Large" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([country] LIKE '%' + @country + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="con" Name="country" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="text-center">
        <asp:GridView ID="gridms" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display." Height="190px" Visible="False" Width="930px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
               <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Large" Font-Names="Book Antiqua" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([markstatus] LIKE '%' + @markstatus + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="ms" Name="markstatus" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <div class="text-center">
        <asp:GridView ID="gridnot" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display." Visible="False" Width="930px" Height="190px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" >
                <ItemStyle BorderColor="#DD5044" BorderStyle="Ridge" BorderWidth="3px" />
                </asp:BoundField>
               <asp:TemplateField HeaderText="Deadline">    
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
            </Columns>
            <EmptyDataRowStyle BackColor="Red" BorderStyle="Double" Font-Size="X-Large" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Large" Font-Names="Book Antiqua" HorizontalAlign="Center" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([owner] LIKE '%' + @owner + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="not" Name="owner" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
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

     <p class="auto-style19"><strong><em><span class="auto-style16">&nbsp;</span><span class="auto-style18">Developed by AIPT (Dep. IT)</span></em></strong></p>
</body>
</html>
