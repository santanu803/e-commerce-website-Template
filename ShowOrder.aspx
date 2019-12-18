<%@ Page Title="Order" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowOrder.aspx.cs" Inherits="ShowOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="overflow: scroll">
        <center>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource1" GridLines="Horizontal" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="790px" Font-Bold="True" Font-Size="Large">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="true" SortExpression="oid" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
        <asp:BoundField DataField="orderdate" HeaderText="Time" SortExpression="orderdate" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnVcart" runat="server" OnClick="btnVcart_Click" Text="View Cart" />
<asp:Label ID="lblUid" runat="server" Text='<%# Eval("userid") %>' Visible="False"></asp:Label>
                <asp:Label ID="lbloid" runat="server" Text='<%# Eval("oid") %>' Visible="False"></asp:Label>
                <asp:Label ID="lbltime" runat="server" Text='<%# Eval("orderdate") %>' Visible="False"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <HeaderStyle BackColor="#FF6600" ForeColor="White" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblOrder] WHERE [oid] = @oid" InsertCommand="INSERT INTO [tblOrder] ([oid], [name], [mobile], [address], [landmark], [pincode], [paymentmode], [ourcard], [paymentstatus], [userid], [totalbill]) VALUES (@oid, @name, @mobile, @address, @landmark, @pincode, @paymentmode, @ourcard, @paymentstatus, @userid, @totalbill)" SelectCommand="SELECT * FROM [tblOrder]" UpdateCommand="UPDATE [tblOrder] SET [name] = @name, [mobile] = @mobile, [address] = @address, [landmark] = @landmark, [pincode] = @pincode, [paymentmode] = @paymentmode, [ourcard] = @ourcard, [paymentstatus] = @paymentstatus, [userid] = @userid, [totalbill] = @totalbill WHERE [oid] = @oid">
                <DeleteParameters>
                    <asp:Parameter Name="oid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="oid" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="landmark" Type="String" />
                    <asp:Parameter Name="pincode" Type="String" />
                    <asp:Parameter Name="paymentmode" Type="String" />
                    <asp:Parameter Name="ourcard" Type="String" />
                    <asp:Parameter Name="paymentstatus" Type="String" />
                    <asp:Parameter Name="userid" Type="String" />
                    <asp:Parameter Name="totalbill" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="landmark" Type="String" />
                    <asp:Parameter Name="pincode" Type="String" />
                    <asp:Parameter Name="paymentmode" Type="String" />
                    <asp:Parameter Name="ourcard" Type="String" />
                    <asp:Parameter Name="paymentstatus" Type="String" />
                    <asp:Parameter Name="userid" Type="String" />
                    <asp:Parameter Name="totalbill" Type="String" />
                    <asp:Parameter Name="oid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </center>
    </div>
</asp:Content>

