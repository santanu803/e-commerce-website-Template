<%@ Page Title="Serch Item" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="lblSid" runat="server" Text="Label" Visible="False"></asp:Label>
         <center>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="itemid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" RepeatColumns="4" RepeatDirection="Horizontal" align="center" Font-Bold="True" Font-Size="Large">
   <HeaderTemplate>
<asp:Label ID="Label1" runat="server" Text="Your search item is "></asp:Label>
   </HeaderTemplate>
     <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="#6600CC" />
    <ItemTemplate>
        <asp:Label ID="lblItemid" runat="server" Font-Bold="False" Font-Size="X-Small" Text='<%# Eval("itemid") %>' Visible="false" />
        <br />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" OnClick="ImageButton4_Click" />
        <br />
        <asp:Label ID="inameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0066FF" Text='<%# Eval("iname") %>' />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="("></asp:Label>
        <asp:Label ID="categoryLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text='<%# Eval("category") %>' />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text=")"></asp:Label>
        <br />
        <hr />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Rs: "></asp:Label>
        &nbsp;<asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" Text='<%# Eval("price") %>' />
        <asp:Label ID="ppuLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" Text='<%# Eval("ppu") %>' />
        <br />
        <hr />
        <br />
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             </asp:DataList>

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [ppu], [category], [image] FROM [tblItem] WHERE ([iname] LIKE '%' + @iname + '%')">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblSid" Name="iname" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </center>
    </div>
</asp:Content>

