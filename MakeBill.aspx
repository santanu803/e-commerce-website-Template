<%@ Page Title="Make A bill" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MakeBill.aspx.cs" Inherits="MakeBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      
<%--    <link rel="stylesheet" href="css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript">

       function Print() {
           window.print();
                   
    }

</script>
  
    <style type="text/css">
            


        body{
            margin-top:200px;
        }

         .divborder
        {
                      
            width:307px;
           margin-left:680px;
           border-top:dotted;
           border-top-color:lightgray;
            border-left:solid;
            border-left-width:20px;
            border-left-color:lightgray;
            border-right:solid;
            border-right-width:20px;
            border-right-color:lightgray;

        }
              .bposition{
             position:fixed;
 
  top: 265px;
  right: 345px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
        }

         .div2{
             position:fixed;
             width:300px;
             top:170px;
           left:280px;
           /*border-top:solid;
           border-top-color:lightgray;      
           border-top-width:20px;*/
           

         }
       
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="divborder" id="divbill">
        <center>
                <table>
                    <thead><asp:Label ID="Label8" runat="server" Text="Homebazzar Pvt. Ltd." Font-Size="Large" Font-Bold="True"></asp:Label></thead>
                   <br /> <thead><asp:Label ID="Label2" runat="server" Text="(A Online & Off line Shop)" Font-Size="Small"></asp:Label></thead><br />
                    <thead><asp:Label ID="Label6" runat="server" Text="Email:homebazzar.com@gmail.com" Font-Size="Small"></asp:Label></thead><br />
                    <thead><asp:Label ID="Label7" runat="server" Text="REG NO: 123XXX" Font-Size="Small"></asp:Label></thead>
                    <hr />
                            <asp:Label ID="Label3" runat="server" Text="Retail Invoice" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <hr />
                    <tr>
                        <td><asp:Label ID="Label4" runat="server" Text="Invoice No: " Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                        <td><asp:Label ID="lblInvno" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label5" runat="server" Text="Date:" Font-Size="Medium" Font-Bold="True"></asp:Label></td>
                        <td><asp:Label ID="lblDate" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label>
                            <asp:Label ID="lbluserid" runat="server"></asp:Label>
                        </td>
                    </tr>
                    </table>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Size="Small" GridLines="None" ShowFooter="True" Width="300px" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
        <asp:TemplateField FooterText="Total :" ShowHeader="False">
            <ItemTemplate>
                  <asp:Label ID="lblqu" runat="server" Text='<%# Eval("qunit") %>' Visible="False"></asp:Label>
                  <asp:Label ID="lblqunt" runat="server" Text='<%# Eval("iquantity") %>' Visible="False"></asp:Label>
                 <asp:Label ID="lblitemid" runat="server" Text='<%# Eval("itemid") %>' Visible="False"></asp:Label>
               <asp:Label ID="lblcid" runat="server" Text='<%# Eval("cid") %>' Visible="False"></asp:Label>
               
                <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" OnClick="ImageButton1_Click" Width="17px" ImageUrl="~/image/delete.png" />
            
            </ItemTemplate>
            <FooterStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Left" />
        </asp:TemplateField>
        <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" Visible="false" />
        <asp:BoundField DataField="itemid" HeaderText="Id" SortExpression="itemid" >
        <HeaderStyle HorizontalAlign="Left" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="iname" HeaderText="Item" SortExpression="iname" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="iquantity" HeaderText="Qty" SortExpression="iquantity" >
        <HeaderStyle HorizontalAlign="Right" />
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="qunit" SortExpression="qunit" >
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="price" HeaderText="Amount" SortExpression="price" >
        <FooterStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Right" />
        <HeaderStyle HorizontalAlign="Right" />
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>

    </Columns>
                <FooterStyle BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" />
                <HeaderStyle Font-Bold="True" Font-Size="Medium" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" />
                </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [cid], [itemid], [iname], [iquantity], [qunit], [price] FROM [tblCart] WHERE ([emailid] = @emailid)" DeleteCommand="DELETE FROM [tblCart] WHERE [cid] = @cid" InsertCommand="INSERT INTO [tblCart] ([itemid], [iname], [iquantity], [qunit], [price]) VALUES (@itemid, @iname, @iquantity, @qunit, @price)" UpdateCommand="UPDATE [tblCart] SET [itemid] = @itemid, [iname] = @iname, [iquantity] = @iquantity, [qunit] = @qunit, [price] = @price WHERE [cid] = @cid">
                    <DeleteParameters>
                        <asp:Parameter Name="cid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="itemid" Type="Int32" />
                        <asp:Parameter Name="iname" Type="String" />
                        <asp:Parameter Name="iquantity" Type="Int32" />
                        <asp:Parameter Name="qunit" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtEmail" Name="emailid" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="itemid" Type="Int32" />
                        <asp:Parameter Name="iname" Type="String" />
                        <asp:Parameter Name="iquantity" Type="Int32" />
                        <asp:Parameter Name="qunit" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="cid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource> 
                

    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>

    

</asp:UpdatePanel>
<asp:Timer ID="Timer1" runat="server" Interval="500" OnTick="Timer1_Tick"></asp:Timer>
                <hr />
<asp:Label ID="Label21" runat="server" Text="Payment Details" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <hr />
      <table>
                
                 <tr>
                     <td><asp:Label ID="Label15" runat="server" Text="Payment Mode : " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                      <td><asp:Label ID="lblPmode" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label></td>
                 </tr>
                <tr>
                   <td> <asp:Label ID="Label16" runat="server" Text="Recive Amount : " Font-Size="Small" Font-Bold="True"></asp:Label></td>
                   <td> <asp:Label ID="lblBRamount" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label></td>

                </tr> 
          <tr>
              <td><asp:Label ID="lblReturn" runat="server" Text="Return Amount :" Font-Bold="True" Font-Size="Small"></asp:Label></td>
          <td><asp:Label ID="lblBreturn" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label></td>
          </tr>   
          </table>
          
           <hr />
               
            <asp:Label ID="lblShip" runat="server" Text="Shipping Details" Font-Bold="True" Font-Size="Medium"></asp:Label>
              <hr /> 
        <table>
           <tr>

                    <td><asp:Label ID="lblEname" runat="server" Text="Name: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblName" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="lblEmobile" runat="server" Text="Mobile No: " Font-Size="Small" Font-Bold="True"></asp:Label></td>
                    <td><asp:Label ID="lblMobile" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>

                 <tr>

                    <td><asp:Label ID="lblEadd" runat="server" Text="Address: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblAdress" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="lblEland" runat="server" Text="Land Mark" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lbllandmark" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="lblEpin" runat="server" Text="PinCode: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblPin" runat="server" Font-Bold="False" Font-Size="Small"></asp:Label></td>

                </tr>
              
          
          
          
          
                             
              </table>         
            <hr />
<asp:Label ID="Label17" runat="server" Text="Thank you for choose www.homebazar.com" Font-Bold="True" Font-Size="Small"></asp:Label>
            <hr />
            </center>
            </div>
    <div class="div2">
<center>
   
<asp:Label ID="Label1" runat="server" Text="Item Details" Font-Size="X-Large" Font-Bold="True"></asp:Label>
    <hr />
    <table>
        <tr>
            <td><asp:Label ID="Label9" runat="server" Text="Id : " Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:Label ID="lblId" runat="server" Font-Bold="True" Font-Size="Small">                  </asp:Label>&nbsp;<asp:Label ID="lblPrice" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="lblpUnit" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID="Label10" runat="server" Text="Name : " Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlName" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="iname" DataValueField="iname" OnSelectedIndexChanged="ddlName_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [iname] FROM [tblItem]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID="Label11" runat="server" Text="Quantity" Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:TextBox ID="txtQ" runat="server"></asp:TextBox><p id="scanned-QR"></p></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label12" runat="server" Text="Unit" Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:DropDownList ID="ddlU" runat="server" AutoPostBack="True"  DataTextField="ppu" DataValueField="ppu" OnSelectedIndexChanged="ddlU_SelectedIndexChanged">
                <asp:ListItem Value="0">select</asp:ListItem>
              <asp:ListItem Value="kg">Kg</asp:ListItem>
              <asp:ListItem Value="gm">Gm</asp:ListItem>
              <asp:ListItem Value="ltr">Liter</asp:ListItem>
              <asp:ListItem Value="piece">Piece</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
         <tr>
            <td><asp:Label ID="Label13" runat="server" Text="Price" Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:Label ID="lblAmount" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label14" runat="server" Text="Customer Email: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td><asp:ImageButton ID="btnAdd" runat="server" Height="31px" Width="83px" OnClick="btnAdd_Click" ImageUrl="~/image/add.png"></asp:ImageButton></td>
        </tr>

    </table>
   <hr />
<asp:Label ID="Label19" runat="server" Text="Order Details" Font-Size="Medium" Font-Bold="True"></asp:Label>
   <hr />
     <table>
        <tr>
            <td><asp:Label ID="Label20" runat="server" Text="Order Type: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:DropDownList ID="ddldelivery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddldelivery_SelectedIndexChanged">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
                <asp:ListItem>Offline</asp:ListItem>
                </asp:DropDownList></td>
            <td><asp:Label ID="lblOid" runat="server" Visible="False"></asp:Label></td>
        </tr>
    </table>


    <hr />
<asp:Label ID="lblPdetails" runat="server" Text="Payment Details" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <hr />
    <table>

        <tr>
            <td><asp:Label ID="Label18" runat="server" Text="Payment Mode" Font-Bold="True" Font-Size="Small"></asp:Label></td>
<td><asp:DropDownList ID="ddlPmode" runat="server" AutoPostBack="True">
    <asp:ListItem>Select One</asp:ListItem>
    <asp:ListItem>Cash</asp:ListItem>
    <asp:ListItem>Online</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lbltotalstock" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRecamount" runat="server" Text="Recieve Amount" Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td><asp:TextBox ID="txtRamount" runat="server"></asp:TextBox></td>


        </tr>
        <tr>
            <td><asp:Label ID="lblTotalPrice" runat="server" Visible="False"></asp:Label></td>
            <td>
                <asp:ImageButton ID="btnSubmit" runat="server" Height="51px" ImageUrl="~/image/sub.png" OnClick="btnSubmit_Click1" Width="116px" />
            </td>
            <td><asp:ImageButton ID="btnBack" runat="server" OnClick="btnBack_Click" Height="28px" ImageUrl="~/image/backbutton.png" Width="76px"></asp:ImageButton></td>

        </tr>

       

    </table>
</center>







    </div>
    <div class="bposition">
                  <asp:ImageButton ID="btnPrint" runat="server" Height="40px" OnClick="btnPrint_Click"  Width="40px" ImageUrl="~/image/print.png"></asp:ImageButton>

        </div>

   <%-- //--%>

    

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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

