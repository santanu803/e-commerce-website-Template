<%@ Page Title="Shipping Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        .divship{
           margin-right:200px;
         float:right;
         width:500px;   
            
        }
        .divp{
            float:left;
            margin-left:200px;
            width:400px;
        }
        .divitem{
            margin-left:10px;
            padding-left:10px;
            margin-top:300px;
        }
        
        }
        .td{
            width:150px;
            hight:20px;
        }
        .ltd{
            width:500px;
            hight:auto;
        }
        .auto-style2 {
            width: 150px;
            hight: 20px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style3 {
            width: 158px;
        }
        .auto-style4 {
            width: 400px;
        }
        .auto-style5 {
            width: 150px;
            hight: 20px;
            height: 60px;
        }
        .auto-style6 {
            width: 158px;
            height: 60px;
        }
        .border{
            background-color:darkorange;
            color:white;
            width:350px;
            height:45px;
            
           
        }
        .divpship{
              margin-right:100px;
         float:right;
         width:500px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="divp" id="Divp">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" Font-Bold="True" Font-Size="Medium" ShowFooter="True" ShowHeaderWhenEmpty="True" GridLines="None" Width="400px">
                       <Columns>
                           <asp:TemplateField FooterText="Shipping Rs 10/-">
                               
                               <ItemTemplate>
                                   <table>
                                       <tr>
                                           <td><asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' Width="100px" CausesValidation="False" OnClick="ImageButton4_Click" />
                                </td>
                                           <td> <asp:Label ID="lblName" runat="server" Text='<%# Eval("iname") %>'></asp:Label>
                                               <asp:Label ID="lblImage" runat="server" Visible="False" Text='<%# Eval("image") %>'></asp:Label>
                        </td>
                                       </tr>
                                   </table>
                                      <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("price") %>' Visible="False"></asp:Label>
                                         </ItemTemplate>
                                
                              <HeaderTemplate>
<asp:Label runat="server" Text="Product Details"></asp:Label>
                               </HeaderTemplate>
                               <FooterStyle ForeColor="White" HorizontalAlign="Left" />
                           </asp:TemplateField>
                           <asp:BoundField DataField="cid" visible="false" HeaderText="CARTID" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                           <asp:BoundField DataField="itemid" visible="false" HeaderText="ITEMID" SortExpression="itemid" />
                           <%--<asp:BoundField DataField="iname" SortExpression="iname" />--%>
                           <asp:BoundField DataField="iquantity" SortExpression="iquantity" />
                           <asp:BoundField DataField="qunit" SortExpression="qunit" FooterText="Total :" >
                           <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                           </asp:BoundField>
                           <asp:BoundField DataField="price" SortExpression="price" >
                           <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                           </asp:BoundField>
                           <asp:TemplateField ShowHeader="False">
                               <ItemTemplate>
                                      <asp:Label ID="lblqu" runat="server" Text='<%# Eval("qunit") %>' Visible="False"></asp:Label>
                  <asp:Label ID="lblqunt" runat="server" Text='<%# Eval("iquantity") %>' Visible="False"></asp:Label>
                 <asp:Label ID="lblitemid" runat="server" Text='<%# Eval("itemid") %>' Visible="False"></asp:Label>
               <asp:Label ID="lblcid" runat="server" Text='<%# Eval("cid") %>' Visible="False"></asp:Label>
                 <asp:ImageButton ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" ImageUrl="~/image/delete.png" Width="20px" CausesValidation="False" />
                                </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                       
                       <FooterStyle BackColor="#CC0099" />
                       <HeaderStyle BackColor="#CC0099" BorderColor="#CC0099" ForeColor="White" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblCart] WHERE [cid] = @cid" InsertCommand="INSERT INTO [tblCart] ([itemid], [iname], [iquantity], [qunit], [price], [image]) VALUES (@itemid, @iname, @iquantity, @qunit, @price, @image)" SelectCommand="SELECT [itemid], [iname], [iquantity], [qunit], [price], [image], [cid] FROM [tblCart] WHERE ([emailid] = @emailid)" UpdateCommand="UPDATE [tblCart] SET [itemid] = @itemid, [iname] = @iname, [iquantity] = @iquantity, [qunit] = @qunit, [price] = @price, [image] = @image WHERE [cid] = @cid">
                       <DeleteParameters>
                           <asp:Parameter Name="cid" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="itemid" Type="Int32" />
                           <asp:Parameter Name="iname" Type="String" />
                           <asp:Parameter Name="iquantity" Type="Int32" />
                           <asp:Parameter Name="qunit" Type="String" />
                           <asp:Parameter Name="price" Type="Int32" />
                           <asp:Parameter Name="image" Type="String" />
                       </InsertParameters>
                       <SelectParameters>
                           <asp:SessionParameter Name="emailid" SessionField="uid" Type="String" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="itemid" Type="Int32" />
                           <asp:Parameter Name="iname" Type="String" />
                           <asp:Parameter Name="iquantity" Type="Int32" />
                           <asp:Parameter Name="qunit" Type="String" />
                           <asp:Parameter Name="price" Type="Int32" />
                           <asp:Parameter Name="image" Type="String" />
                           <asp:Parameter Name="cid" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>

                   <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <br />
                   <br />
                   <br />

                   <asp:Label ID="lblUid" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    <div class="divship" id="divship" runat="server">
      <center> <table>
           <tr>
               <td class="ltd">

               </td>
               <td class="auto-style4">
        <table>
            <thead>
                <hr />

                 <center> <asp:label runat="server" text="Shipping Details" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" ForeColor="#0066FF"></asp:label></center>
         

                <hr />

            </thead>
            <%--<tr>
               <center> <asp:label runat="server" text="Shipping Details" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0066FF"></asp:label></center>
            </tr>--%>
              <tr>
                <td class="td">
                    <asp:label runat="server" text="Order Id" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtOid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td">
                    <asp:label runat="server" text="Name" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Your Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Mobile No" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMno" ErrorMessage="Enter Your Valid Mobile no" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile no" Font-Size="Small" ForeColor="Red" ControlToValidate="txtMno" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator> 
                </td>
            </tr>
             <tr>
                <td class="auto-style5"><asp:label runat="server" text="Address" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter your Shipping Aaddress" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Land Mark" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLand" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLand" ErrorMessage="Enter a Valid Land Mark" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Pincode" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPin" ErrorMessage="Enter Your Pincode" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Pincode" Font-Size="Small" ForeColor="Red" ControlToValidate="txtPin" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    Payable amount</td>
                <td class="auto-style3">
                   <asp:TextBox ID="txtsalary" runat="server" Enabled="False"></asp:TextBox>
                   </td>
            </tr>
             <tr>
                <td class="auto-style2">Payment Mode</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlPmode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPmode_SelectedIndexChanged">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>Online Banking</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                        <asp:ListItem>Cash On Delivery</asp:ListItem>
                        <asp:ListItem>Cradit Card</asp:ListItem>
                        <asp:ListItem>Payback Card</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlPmode" ErrorMessage="Please Select a payment mode" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">Payback Card No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPcard" runat="server" placeholder="Enter Your card no (Optional)"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Payment Status" Font-Bold="True" Font-Size="Medium" ID="label3"></asp:label>
                 </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPstatus" runat="server"></asp:TextBox>
                    <br />
                 </td>
            </tr>
            <tr>
                <td><asp:label runat="server" text="Order Date" Font-Bold="True" Font-Size="Medium" ID="label1"></asp:label></td>
                    
                <td>
                    <asp:TextBox ID="txtOrderdate" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td></td>
                <td class="auto-style3"></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblnpblance" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblPbalance" runat="server"></asp:Label>
                 </td>
                <td class="auto-style3">
                    <asp:Button ID="btnCorder" runat="server" Text="Confirm Order" OnClick="btnCorder_Click" BackColor="#009900" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="175px" /></td>
            </tr>

        </table>
                         </td>

           </tr>

       </table>
          
          </center>
           
    </div>


            
   </asp:Content>

