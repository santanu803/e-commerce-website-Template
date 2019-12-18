<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="itemid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="itemid" HeaderText="itemid" InsertVisible="False" ReadOnly="True" SortExpression="itemid" />
                <asp:BoundField DataField="iname" HeaderText="iname" SortExpression="iname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="ppu" HeaderText="ppu" SortExpression="ppu" />
                <asp:BoundField DataField="stockQuantity" HeaderText="stockQuantity" SortExpression="stockQuantity" />
                <asp:BoundField DataField="stockUnit" HeaderText="stockUnit" SortExpression="stockUnit" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="subcat" HeaderText="subcat" SortExpression="subcat" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="stockStatus" HeaderText="stockStatus" SortExpression="stockStatus" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# Eval("image") %>' Width="130px" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" DeleteCommand="DELETE FROM [tblItem] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [tblItem] ([iname], [price], [ppu], [stockQuantity], [stockUnit], [category], [subcat], [image], [stockStatus], [description], [offer]) VALUES (@iname, @price, @ppu, @stockQuantity, @stockUnit, @category, @subcat, @image, @stockStatus, @description, @offer)" SelectCommand="SELECT * FROM [tblItem]" UpdateCommand="UPDATE [tblItem] SET [iname] = @iname, [price] = @price, [ppu] = @ppu, [stockQuantity] = @stockQuantity, [stockUnit] = @stockUnit, [category] = @category, [subcat] = @subcat, [image] = @image, [stockStatus] = @stockStatus, [description] = @description, [offer] = @offer WHERE [itemid] = @itemid">
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
    
    </div>
    </form>
</body>
</html>
