<%@ Page Title="Non_Veg" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NonVegitem.aspx.cs" Inherits="NonVegitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>


        <br />
        <br />
        <br />
       <center>  <asp:DataList ID="DataList1" runat="server" DataKeyField="itemid" DataSourceID="SqlDataSource1" RepeatColumns="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton1_Click1"/>
       
                <br />
               <asp:Label ID="lblItemid" runat="server" Font-Bold="False" Font-Size="X-Small" Text='<%# Eval("itemid") %>' Visible="false"/>

                

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="item_nameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("iname") %>' ForeColor="#0066FF" />
                &nbsp;<br />
                <hr />
                <br />&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Rs : "></asp:Label>
                <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("price") %>' />
                <asp:Label ID="price_per_UnitLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ppu") %>' />
                <br />
                <hr />
                <br />
           </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <%--<SelectedItemTemplate>
<asp:Label ID="lblPid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"nvitemid") %>'></asp:Label>
           </SelectedItemTemplate>--%>
        </asp:DataList></center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [ppu], [image] FROM [tblItem] WHERE ([category] = @category)" >
            <SelectParameters>
                <asp:Parameter DefaultValue="Nonveg" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />


    </div>
</asp:Content>

