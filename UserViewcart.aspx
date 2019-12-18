<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserViewcart.aspx.cs" Inherits="UserViewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Size="Medium" ForeColor="White" GridLines="None" ShowHeaderWhenEmpty="True" Width="500px" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField HeaderText="Items">
           
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            
        </asp:TemplateField>
        <asp:BoundField DataField="iname" SortExpression="iname" />
        <asp:BoundField DataField="iquantity" SortExpression="iquantity" >
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="qunit" SortExpression="qunit" >
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="price" SortExpression="price" HeaderText="Price" >
        <FooterStyle HorizontalAlign="Right" />
        <HeaderStyle HorizontalAlign="Right" />
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="oid" SortExpression="oid" Visible="False" />
    </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' Width="100px" />
    </EmptyDataTemplate>
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
          

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" SelectCommand="SELECT [oid], [iname], [iquantity], [qunit], [price], [image] FROM [myOrder] WHERE ([oid] = @oid)">
                <SelectParameters>
                    <asp:SessionParameter Name="oid" SessionField="oid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
           </center>
    </div>
    <br />
    <br />
    <br />
    <br />



</asp:Content>

