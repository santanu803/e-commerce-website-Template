<%@ Page Title="Update Order Status" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateDeliverystatus.aspx.cs" Inherits="updatePstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        body{
            margin-top:200px;
        }
          .auto-style1 {
              width: 100%;
          }
          .auto-style2 {
              height: 26px;
          }
          .auto-style3 {
              height: 30px;
          }
          .divbody{
              
             width:400px;
             margin-left:450px;
             border-bottom:solid;
             border-bottom-color:lightgray;
             border-bottom-width:30px;


          }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <br />
    <div class="divbody">
    <center>
        <hr />
<asp:Label ID="Label7" runat="server" Text="Enter a Order Id And Update Order Status" Font-Bold="True" Font-Size="Large"></asp:Label>

        <hr />

        <table class="auto-style1">
           
            <tr>
                <td align="right" class="auto-style3">
                    <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="Order Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtOid" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" style="height: 26px" />
                </td>
            </tr>
            
            <tr>
                <td align="right"><asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Bill Price"></asp:Label></td>
                <td>
                    <asp:Label ID="lblTbill" runat="server" Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:Label></td>
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Delivery Status"></asp:Label></td>
                <td><asp:Label ID="lblDelstatus" runat="server" Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:Label></td>
               
            </tr>
            <tr>
                <td align="right"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Payment Status"></asp:Label></td>
                <td><asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="Update Payment Status"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Select any One</asp:ListItem>
                        <asp:ListItem>Done</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="Update Delivery Status"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDelivery" runat="server" Width="150px">
                        <asp:ListItem>Select any One</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                        <asp:ListItem>Out for delivery</asp:ListItem>
                        <asp:ListItem>Adress miss match</asp:ListItem>
                        <asp:ListItem>location not found</asp:ListItem>
                        <asp:ListItem>Delay</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click1" />
                    <asp:Button ID="btnClose" runat="server" Text="Back" OnClick="btnClose_Click1" />
                 
                  
                </td>
                <td>   <asp:Label ID="lblPbalance" runat="server" Visible="False" ></asp:Label>
                    <asp:Label ID="lblcardno" runat="server" Visible="False" ></asp:Label>  </td>
            </tr>
        </table>
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

</asp:Content>

