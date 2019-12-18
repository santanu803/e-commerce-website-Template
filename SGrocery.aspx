<%@ Page Title="Grocery Store" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SGrocery.aspx.cs" Inherits="SGrocery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        body{
            margin-top:190px;
        }
           </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><center>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="itemid" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Small" GridLines="None">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="ItemPic">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' Width="100px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="offer" HeaderText="Offer" SortExpression="offer" />
        <asp:BoundField DataField="itemid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="itemid" />
        <asp:BoundField DataField="iname" HeaderText="Name" SortExpression="iname" />
        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        <asp:BoundField DataField="ppu" HeaderText="Ppu" SortExpression="ppu" />
        <asp:BoundField DataField="stockQuantity" HeaderText="StockQnty" SortExpression="stockQuantity" />
        <asp:BoundField DataField="stockUnit" HeaderText="StockUnit" SortExpression="stockUnit" />
        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
        <asp:BoundField DataField="subcat" HeaderText="Subcat" SortExpression="subcat" />
        <asp:BoundField DataField="stockStatus" HeaderText="StockStatus" SortExpression="stockStatus" />
        <asp:BoundField DataField="image" HeaderText="ImageLink" SortExpression="image" />
        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" Visible="False" />
    </Columns>
    <HeaderStyle BackColor="#CC0066" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblItem] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [tblItem] ([iname], [price], [ppu], [stockQuantity], [stockUnit], [category], [subcat], [image], [stockStatus], [description], [offer]) VALUES (@iname, @price, @ppu, @stockQuantity, @stockUnit, @category, @subcat, @image, @stockStatus, @description, @offer)" SelectCommand="SELECT * FROM [tblItem] WHERE ([category] = @category)" UpdateCommand="UPDATE [tblItem] SET [iname] = @iname, [price] = @price, [ppu] = @ppu, [stockQuantity] = @stockQuantity, [stockUnit] = @stockUnit, [category] = @category, [subcat] = @subcat, [image] = @image, [stockStatus] = @stockStatus, [description] = @description, [offer] = @offer WHERE [itemid] = @itemid">
             <DeleteParameters>
                 <asp:Parameter Name="itemid" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="iname" Type="String" />
                 <asp:Parameter Name="price" Type="Double" />
                 <asp:Parameter Name="ppu" Type="String" />
                 <asp:Parameter Name="stockQuantity" Type="Double" />
                 <asp:Parameter Name="stockUnit" Type="String" />
                 <asp:Parameter Name="category" Type="String" />
                 <asp:Parameter Name="subcat" Type="String" />
                 <asp:Parameter Name="image" Type="String" />
                 <asp:Parameter Name="stockStatus" Type="String" />
                 <asp:Parameter Name="description" Type="String" />
                 <asp:Parameter Name="offer" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:Parameter DefaultValue="Grocary" Name="category" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="iname" Type="String" />
                 <asp:Parameter Name="price" Type="Double" />
                 <asp:Parameter Name="ppu" Type="String" />
                 <asp:Parameter Name="stockQuantity" Type="Double" />
                 <asp:Parameter Name="stockUnit" Type="String" />
                 <asp:Parameter Name="category" Type="String" />
                 <asp:Parameter Name="subcat" Type="String" />
                 <asp:Parameter Name="image" Type="String" />
                 <asp:Parameter Name="stockStatus" Type="String" />
                 <asp:Parameter Name="description" Type="String" />
                 <asp:Parameter Name="offer" Type="String" />
                 <asp:Parameter Name="itemid" Type="Int32" />
             </UpdateParameters>
        </asp:SqlDataSource>
         </center>
    </div>
</asp:Content>

