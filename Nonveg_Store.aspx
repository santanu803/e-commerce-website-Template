<%@ Page Title="Non_Veg Store" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Nonveg_Store.aspx.cs" Inherits="Nonveg_Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:170px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemid" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="898px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <%--<asp:TemplateField HeaderText="Image"></asp:TemplateField>--%>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />

                    <asp:TemplateField HeaderText="ItemPics">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
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
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000066" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT * FROM [tblItem] WHERE ([category] = @category)" DeleteCommand="DELETE FROM [tblItem] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [tblItem] ([iname], [price], [ppu], [stockQuantity], [stockUnit], [category], [image], [stockStatus], [description], [offer]) VALUES (@iname, @price, @ppu, @stockQuantity, @stockUnit, @category, @image, @stockStatus, @description, @offer)" UpdateCommand="UPDATE [tblItem] SET [iname] = @iname, [price] = @price, [ppu] = @ppu, [stockQuantity] = @stockQuantity, [stockUnit] = @stockUnit, [category] = @category, [image] = @image, [stockStatus] = @stockStatus, [description] = @description, [offer] = @offer WHERE [itemid] = @itemid">
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
                    <asp:Parameter DefaultValue="Nonveg" Name="category" Type="String" />
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

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </center>
</asp:Content>

