<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Torder.aspx.cs" Inherits="Torder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        body{
            margin-top:150px;
        }
        .c
        {
            tab-size:500px
        }
       
                
           .auto-style4 {
               width: 130px;
               text-align:right;
           }
       
                
           .auto-style5 {
               width: 76px;
           }


           .auto-style7 {
               width: 100px;
               text-align: right;
           }
           .auto-style8 {
               width: 116px;
               text-align: right;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><center>
    <div style="width:503px;height:30px;background-color:deeppink;text-align:left;"><br />&nbsp;&nbsp;
<asp:Label ID="Label4" runat="server" Text="MyOrder" ForeColor="White" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource1" Width="500px" ShowHeader="False" BorderStyle="None" BorderColor="White" BorderWidth="0px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
           <%-- <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="True" SortExpression="oid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="landmark" HeaderText="landmark" SortExpression="landmark" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
            <asp:BoundField DataField="ourcard" HeaderText="ourcard" SortExpression="ourcard" />
            <asp:BoundField DataField="paymentstatus" HeaderText="paymentstatus" SortExpression="paymentstatus" />
            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            <asp:BoundField DataField="totalbill" HeaderText="totalbill" SortExpression="totalbill" />
            <asp:BoundField DataField="orderstatus" HeaderText="orderstatus" SortExpression="orderstatus" />
            <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
            <asp:BoundField DataField="invoiceno" HeaderText="invoiceno" SortExpression="invoiceno" />--%>

            <asp:TemplateField>
                <ItemTemplate>
                    <table class="c">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label1" runat="server" Text="Order Id :" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                            <td><br />
                                <asp:Label ID="lbloid" runat="server" Text='<%# Eval("oid") %>' Font-Bold="True" Font-Size="Small" ForeColor="#FF3300"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                     
                            </td>
                           <td class="auto-style8">
                                <asp:Label ID="Label2" runat="server" Text="Date" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                            <td class="auto-style4">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("orderdate") %>' Font-Size="Small" ForeColor="#0066CC"></asp:Label></td>
                        </tr>


                          <tr>
                            <td class="auto-style5" ><asp:ImageButton ID="ImageButton1" runat="server" Height="50" Width="50" ImageUrl="~/image/click.png" OnClick="ImageButton1_Click" /></td>
                            <td><asp:Label ID="Label3" runat="server" Text="Total Bill" Font-Bold="True" Font-Size="Small"></asp:Label>
                                <br />
                                <asp:Label ID="lblTbill" runat="server" Text='<%# Eval("totalbill") %>' Font-Size="Small" Font-Bold="False" ForeColor="#0066CC"></asp:Label>
                            </td>
                            <td class="auto-style8"><asp:Label ID="Label6" runat="server" Text="Order Status" Font-Bold="True" Font-Size="Small"></asp:Label>
                                <br />
                                 <asp:Label ID="lblOstatus" runat="server" Text='<%# Eval("orderstatus") %>' Font-Size="Small" Font-Bold="False" ForeColor="#0066CC"></asp:Label>
                            </td>
                              <td class="auto-style4">
                                  <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" BackColor="#F8F8F8" BorderColor="#E5E5E5" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Size="Small" Height="31px" OnClick="btnCancel_Click" />
                              </td>

                        </tr>
                         
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>




        </Columns>
       
        <HeaderStyle BorderStyle="None" Font-Bold="True" />
       
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" SelectCommand="SELECT * FROM [tblOrder] WHERE ([userid] = @userid)">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="uid" Type="String" />
        </SelectParameters>
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
</asp:Content>

