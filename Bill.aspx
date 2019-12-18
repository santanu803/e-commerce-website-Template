<%@ Page Title="Your Bill" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript">

       function Print() {
           window.print();
                   
    }

</script>
     <style type="text/css">
       
        body{
            margin-top:170px;
        }
        .divborder
        {
            width:300px;
           margin-left:500px;
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
  /*top: 20px;*/
  top: 175px;
  right: 522px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" Width="240px">
    <Columns>
        <asp:BoundField DataField="itemid" HeaderText="Id" SortExpression="itemid" FooterText="Shipping" >
        <HeaderStyle HorizontalAlign="Left" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="iname" HeaderText="Item" SortExpression="iname" FooterText="10/-" >
        <FooterStyle HorizontalAlign="Left" />
        <HeaderStyle HorizontalAlign="Left" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="iquantity" HeaderText="QTY" SortExpression="iquantity">
        <HeaderStyle HorizontalAlign="Right" />
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="qunit" SortExpression="qunit" FooterText="Total" >
        <FooterStyle HorizontalAlign="Left" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="price" HeaderText="Amount" SortExpression="price" >
            <FooterStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
        </asp:BoundField>
            </Columns>
                <FooterStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" />
                <HeaderStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>

			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [iquantity], [qunit], [price], [cid] FROM [tblCart] WHERE ([emailid] = @emailid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbluserid" Name="emailid" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <table>
                <%--<hr />
                <thead><asp:Label ID="Label10" runat="server" Text="Payment Details" Font-Bold="True" Font-Size="Large"></asp:Label></thead>
                <hr />--%>

                 <tr>
                     <td><asp:Label ID="Label11" runat="server" Text="Payment Mode : " Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                      <td><asp:Label ID="lblPmode" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label></td>
                 </tr>
                <tr>
                   <td> <asp:Label ID="Label9" runat="server" Text="Status : " Font-Size="Medium" Font-Bold="True"></asp:Label></td>
                   <td> <asp:Label ID="lblPstatus" runat="server" Font-Size="Small" Font-Bold="True"></asp:Label></td>

                </tr>                       
              </table>
            <table>

                <hr />
                        <thead><asp:Label ID="Label1" runat="server" Text="Shipping Details" Font-Size="Large" Font-Bold="True"></asp:Label></thead>
                <hr />
                <tr>

                    <td><asp:Label ID="Label10" runat="server" Text="Name: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblName" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="Label13" runat="server" Text="Mobile No: " Font-Size="Small" Font-Bold="True"></asp:Label></td>
                    <td><asp:Label ID="lblMobile" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>

                 <tr>

                    <td><asp:Label ID="Label15" runat="server" Text="Address: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblAdress" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="Label17" runat="server" Text="Land Mark" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lbllandmark" runat="server" Font-Size="Small"></asp:Label></td>

                </tr>
                 <tr>

                    <td><asp:Label ID="Label19" runat="server" Text="PinCode: " Font-Bold="True" Font-Size="Small"></asp:Label></td>
                    <td><asp:Label ID="lblPin" runat="server" Font-Bold="False" Font-Size="Small"></asp:Label></td>

                </tr>
                <tr>
                    <td><asp:Label ID="lbltprice" runat="server" Font-Bold="False" Font-Size="Small"></asp:Label></td>
                </tr>
                
                 </table>
            <table>
                     
                <hr />

<thead><asp:Label ID="Label12" runat="server" Text="Thank You For Choosing www.homebazzar.com " Font-Bold="True" Font-Size="Small"></asp:Label></thead>

                <hr />
                    
            </table>

			</center>

        <div class="bposition">
          <asp:ImageButton ID="btnPrint" runat="server" Height="40px" OnClick="btnPrint_Click"  Width="40px" ImageUrl="~/image/print.png"></asp:ImageButton>

        </div>
		</div>

</asp:Content>

