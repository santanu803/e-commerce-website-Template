<%@ Page Title="Today Special" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TodaySpecial_Store.aspx.cs" Inherits="TodaySpecial_Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div width="100%">
        <center><asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="itemid" DataSourceID="SqlDataSource1" CellPadding="4" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="ItemPics">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:BoundField DataField="itemid" HeaderText="itemid" ReadOnly="True" SortExpression="itemid" InsertVisible="False" />
                    <asp:BoundField DataField="iname" HeaderText="iname" SortExpression="iname" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="ppu" HeaderText="ppu" SortExpression="ppu" />
                    <asp:BoundField DataField="stockQuantity" HeaderText="stockQuantity" SortExpression="stockQuantity" />
                    <asp:BoundField DataField="stockUnit" HeaderText="stockUnit" SortExpression="stockUnit" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    <asp:BoundField DataField="stockStatus" HeaderText="stockStatus" SortExpression="stockStatus" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblItem] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [tblItem] ([iname], [price], [ppu], [stockQuantity], [stockUnit], [category], [image], [stockStatus], [description], [offer]) VALUES (@iname, @price, @ppu, @stockQuantity, @stockUnit, @category, @image, @stockStatus, @description, @offer)" SelectCommand="SELECT * FROM [tblItem] WHERE ([offer] = @offer)" UpdateCommand="UPDATE [tblItem] SET [iname] = @iname, [price] = @price, [ppu] = @ppu, [stockQuantity] = @stockQuantity, [stockUnit] = @stockUnit, [category] = @category, [image] = @image, [stockStatus] = @stockStatus, [description] = @description, [offer] = @offer WHERE [itemid] = @itemid">
                <DeleteParameters>
                    <asp:Parameter Name="itemid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="iname" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="ppu" Type="String" />
                    <asp:Parameter Name="stockQuantity" Type="Int32" />
                    <asp:Parameter Name="stockUnit" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="stockStatus" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="offer" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="tdsp" Name="offer" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="iname" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="ppu" Type="String" />
                    <asp:Parameter Name="stockQuantity" Type="Int32" />
                    <asp:Parameter Name="stockUnit" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
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

