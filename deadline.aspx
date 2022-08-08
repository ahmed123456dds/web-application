<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deadline.aspx.cs" Inherits="aipt_egypt.deadline" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Deadline</title>
    <link rel="shortcut icon" type="image/x-icon" href="~/Images/aip.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#<%=TextBox2.ClientID %>").datepicker({
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
            width: auto;
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
text-align: justify;
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
        }
        .auto-style16 {
            text-align: center;
            direction: ltr;
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
        <li><a href="Clients.aspx">Clients</a></li>
          <li><a href="publishingksa.aspx">KSA Publication</a></li>
          <li class="active"><a href="deadline.aspx">Deadline</a></li>
          <li><a href="patent.aspx">Patents</a></li>
      </ul>
      
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
         <div class="text-center">
         <br />
        <br />
       <table class="auto-style18">
            <tr>
               <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; <span>Deadline :- </span></td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
             <div class="auto-style16">
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT [date] FROM [deadline]"></asp:SqlDataSource>
&nbsp;
                 <asp:Button ID="Button1" runat="server" Text="Show deadlines" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="133px"></asp:TextBox>
                 <asp:Button ID="Button4" runat="server" Text="Show deadlines" Height="28px" Width="157px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" Visible="False" />
        <br />
        <br />
        &nbsp;<br />
                 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource3" Height="142px" HorizontalAlign="Center" Width="447px" AllowPaging="True" CellPadding="4" ForeColor="#333333" EmptyDataText="No Deadlines in this Date !">
                     <AlternatingRowStyle BackColor="White" />
                     <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                     <EditRowStyle BackColor="#2461BF" />
                     <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                     <Fields>
                         <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="trademark" HeaderText="TradeMark" SortExpression="trademark" />
                         <asp:BoundField DataField="clas" HeaderText="Class" SortExpression="clas" />
                         <asp:BoundField DataField="regnum" HeaderText="Reg. Num" SortExpression="regnum" />
                         <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                         <asp:BoundField DataField="arabic" HeaderText="Arabic" SortExpression="arabic" />
                         <asp:BoundField DataField="markstatus" HeaderText="Mark Status" SortExpression="markstatus" />
                         <asp:BoundField DataField="owner" HeaderText="Owner" SortExpression="owner" />
                         

<asp:TemplateField HeaderText="Deadline" SortExpression="dead">    
     <ItemTemplate>    
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("dead", "{0:MMMM dd yyyy}") %>'></asp:Label>
      </ItemTemplate>
     <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
</asp:TemplateField>


                          <asp:TemplateField HeaderText="Logo">
                <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler1.ashx?Id="+ Eval("Id") %>'  
                            Height="150px" Width="200px" />  
                    
                    </ItemTemplate>  
                </asp:TemplateField>
                     </Fields>
                     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Wrap="True" />
                     <RowStyle BackColor="#EFF3FB" Font-Bold="True" />
                 </asp:DetailsView>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([dead] = @dead)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="dead" PropertyName="Text" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([note] LIKE '%' + @note + '%')">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList1" Name="note" PropertyName="SelectedValue" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br />
                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" DataTextFormatString="{0:MM-yyyy}" Visible="False">
                      <asp:ListItem Text="Please Select" Value=""></asp:ListItem>
                 </asp:DropDownList>
                 <asp:Button ID="Button3" runat="server" Text="Button" Visible="False" />
        <br />
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." Visible="False">
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        

<asp:TemplateField HeaderText="Fromdate">    
     <ItemTemplate>    
           <asp:Label ID="lblFromdate" runat="server"
                 Text='<%#Eval("date", "{0:dd/MM/yyyy}") %>'></asp:Label>
      </ItemTemplate>
</asp:TemplateField>


                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" SelectCommand="SELECT * FROM [tmarks] WHERE ([note] LIKE '%' + @note + '%')">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox2" Name="note" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br />
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:aiptConnectionString1 %>" ProviderName="<%$ ConnectionStrings:aiptConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [date] FROM [deadline]"></asp:SqlDataSource>
                 <br />
        <br />
             </div>
         </div>
    </form>
</body>
</html>
