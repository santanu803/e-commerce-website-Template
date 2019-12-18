<%@ Page Title="My Cart" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:150px;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />

        <center>
<asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" GridLines="None" Width="700px" ShowFooter="True" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" ShowHeaderWhenEmpty="True">
  
    <Columns>
        <asp:TemplateField HeaderText="Your Cart Details" >
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
            </ItemTemplate>
            <FooterTemplate>
                <asp:Button ID="btnPorder" runat="server" Text="Place Order" ForeColor="#666666" BackColor="White" Font-Bold="True" Font-Size="Medium" ToolTip="Click here" Width="170" OnClick="btnPorder_Click1"></asp:Button><%--<br />--%><asp:Button ID="btnCshopping" runat="server" Text="Continue Shopping" OnClick="btnCshopping_Click" ForeColor="#666666" BackColor="White" Width="170" Font-Size="Medium" Font-Bold="True" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="itemid" SortExpression="itemid" Visible="false" />
        <asp:BoundField DataField="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" Visible="false" />
        <asp:BoundField DataField="iname" SortExpression="iname" />
        <asp:BoundField DataField="iquantity" SortExpression="iquantity" />
        <asp:BoundField DataField="qunit" SortExpression="qunit" />
        <asp:BoundField DataField="price" SortExpression="price" />
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>

                  <asp:Label ID="lblqu" runat="server" Text='<%# Eval("qunit") %>' Visible="False"></asp:Label>
                  <asp:Label ID="lblqunt" runat="server" Text='<%# Eval("iquantity") %>' Visible="False"></asp:Label>
                 <asp:Label ID="lblitemid" runat="server" Text='<%# Eval("itemid") %>' Visible="False"></asp:Label>
               <asp:Label ID="lblcid" runat="server" Text='<%# Eval("cid") %>' Visible="False"></asp:Label>
                 <asp:ImageButton ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" ImageUrl="~/image/delete.png" Width="20px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CC0099"  HorizontalAlign="Left" />
    <HeaderStyle BackColor="#CC0099" ForeColor="White" Font-Size="Large" />
               </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblCart] WHERE [cid] = @cid" InsertCommand="INSERT INTO [tblCart] ([iname], [itemid], [iquantity], [qunit], [price], [image]) VALUES (@iname, @itemid, @iquantity, @qunit, @price, @image)" SelectCommand="SELECT [cid], [iname], [itemid], [iquantity], [qunit], [price], [image] FROM [tblCart] WHERE ([emailid] = @emailid)" UpdateCommand="UPDATE [tblCart] SET [iname] = @iname, [itemid] = @itemid, [iquantity] = @iquantity, [qunit] = @qunit, [price] = @price, [image] = @image WHERE [cid] = @cid">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="iname" Type="String" />
                    <asp:Parameter Name="itemid" Type="Int32" />
                    <asp:Parameter Name="iquantity" Type="Int32" />
                    <asp:Parameter Name="qunit" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="emailid" SessionField="uid" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="iname" Type="String" />
                    <asp:Parameter Name="itemid" Type="Int32" />
                    <asp:Parameter Name="iquantity" Type="Int32" />
                    <asp:Parameter Name="qunit" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>

        
    </div>
    
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

