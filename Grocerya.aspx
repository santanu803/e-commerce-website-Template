<%@ Page Title="Grocery Items" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Grocerya.aspx.cs" Inherits="Grocerya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        body{
            margin-top:150px;
        }

        .div1{
            position:absolute;
            top:180px;
            left:50px;
            width:300px;
       

        }
          .div2 {
              position: absolute;
              top: 180px;
              left: 370px;
              width: 900px;
          }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="div1">
        <br />
        <hr />
      <center><asp:Label ID="Label" runat="server" Text="Catagory" Font-Bold="True" Font-Size="X-Large" ForeColor="#0066FF"></asp:Label></center><br />
        <hr />
     <%--    <asp:LinkButton ID="btnAll" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnAll_Click">All catagories </asp:LinkButton><br />
        <asp:LinkButton ID="btnRice" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnRice_Click">Rice</asp:LinkButton><br />
        <asp:LinkButton ID="btnDal" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnDal_Click">Dal</asp:LinkButton><br />
        <asp:LinkButton ID="btnOil" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnOil_Click">Cook Oil</asp:LinkButton><br />
        <asp:LinkButton ID="btnHoil" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnHoil_Click">Hair Oil</asp:LinkButton><br />
      --%> 
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Font-Bold="False" Font-Size="Medium" GridLines="None" ShowHeader="False" Width="300px">
            <Columns>
                <asp:BoundField DataField="subcat" HeaderText="subcat" SortExpression="subcat" Visible="False" />
                <asp:HyperLinkField DataTextField="subcat" HeaderText="Select Any One"  DataNavigateUrlFields="subcat" DataNavigateUrlFormatString="grocery.aspx?subcat={0}"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [subcat] FROM [catagory]"></asp:SqlDataSource>
    </div>
    <div class="div2">
      <center><hr />
<asp:Label ID="Label1" runat="server" Text="Grocery Items" Font-Size="X-Large" Font-Bold="True"></asp:Label>
          <hr />
<asp:DataList ID="DataList1" runat="server" DataKeyField="itemid" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
   
    <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton1_Click1" Width="200px" />
        <br />
        <asp:Label ID="lblItemid" runat="server" Font-Bold="False" Font-Size="X-Small" Text='<%# Eval("itemid") %>' Visible="false" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="item_nameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("iname") %>' ForeColor="#0066FF" />
        &nbsp;<br />
        <hr />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Size="Medium" Text='Rs : ' />
        <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("price") %>' />
        <asp:Label ID="price_per_UnitLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ppu") %>' />
        <br />
        <hr />
        <br />
        <br />
    </ItemTemplate>
          </asp:DataList>
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [image], [ppu] FROM [tblItem] WHERE ([category] = @category)">
              
              <SelectParameters>
                  <asp:Parameter DefaultValue="Grocary" Name="category" Type="String" />

              </SelectParameters>
          </asp:SqlDataSource>


          </center>


        
      

       <%-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [ppu], [image], [category] FROM [tblItem] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Grocary" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
      

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
    <br />




</asp:Content>

