<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderedItem.aspx.cs" Inherits="orderedItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/billpopup.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       
        body{
            margin-top:200px;
        }
        .modalBackground
{
background-color:black;
filter:alpha(opacity=90) !important;
opacity:0.6 ! important;
z-index:20;
}
.modalpopup
{
padding:20px 0px 24px 10px;
position:relative;
width:450px;
height:66px;
background-color:white;
border:1px solid black;
}

        .auto-style1 {
            height: 41px;
            width: 500px;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style3 {
            width: 509px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Size="Medium" ForeColor="White" GridLines="None" ShowHeaderWhenEmpty="True" Width="500px" OnRowDataBound="GridView1_RowDataBound">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="itemid" SortExpression="itemid" HeaderText="itemid"/>
        <asp:BoundField DataField="iname" SortExpression="iname" HeaderText="iname" />
        <asp:BoundField DataField="iquantity" SortExpression="iquantity" HeaderText="iquantity" />
        <asp:BoundField DataField="qunit" SortExpression="qunit" HeaderText="qunit" />
        <asp:BoundField DataField="price" SortExpression="price" HeaderText="price" />
        <asp:BoundField DataField="image" SortExpression="image" HeaderText="image" />
        <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
    </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Size="Large" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <table class="auto-style1" style="background-color: #990000">
                <tr>
<td><asp:Label ID="Label1" runat="server" Text="Order Number :" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF99"></asp:Label>&nbsp;<asp:Label ID="lblOid" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Order Status: " Font-Bold="True" Font-Size="Large" ForeColor="#FFFF99"></asp:Label>&nbsp;<asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
                </tr>
            </table>
            <table class="auto-style3">
                <tr>
                    <td align="left">&nbsp;</td>
                    <td align="center"><%--<a class="button" href="#popup1">Make Bill</a>--%></td>
                    <td align="right">&nbsp;</td>
                </tr>
                <tr><asp:Label ID="lblPrice" runat="server" Text="Label" Visible="False"></asp:Label></tr>
               
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" SelectCommand="SELECT [itemid], [iname], [iquantity], [qunit], [price], [image], [oid] FROM [myOrder] WHERE ([oid] = @oid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblOid" Name="oid" PropertyName="Text" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
           </center>
    </div>
</asp:Content>

