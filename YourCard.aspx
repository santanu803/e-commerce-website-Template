<%@ Page Title="Your Card" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YourCard.aspx.cs" Inherits="YourCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">

       function Print() {
           window.print();
                   
    }

</script>
    <style type="text/css">
        body{
            margin-top:150px;
        }
        .auto-style8 {
            width: 146px;
        }
        .div2{
            position:absolute;
            top:240px;
            right:250px;
        }
        .div1{
 position:absolute;
            top:240px;
            left:250px;

        }
        
        .auto-style11 {
            height: 14px;
        }
        .auto-style12 {
            width: 146px;
            height: 14px;
        }
        .auto-style13 {
            width: 397px;
            height: 71px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
    <br />
    <div class="div1">
        <center>

<asp:Panel ID="Panel1" runat="server" Height="251px" Width="422px" BackImageUrl="~/image/pcard.jpg" BorderColor="#E8E8E8" BorderStyle="Solid">
   <br /> 
    <br /> 
    <br /> 
    <br /> 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style13">
        <tr>
            <td colspan="2" style="font-variant: small-caps">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblCardno" runat="server" Font-Bold="False" Font-Names="Impact" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF0066" Text="Date Of Isuee "></asp:Label>
               <br /> <asp:Label ID="lblIdate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCname" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br /> 
            </asp:Panel>

        </center>
 </div>


      <div class="div2">
        <center>

<asp:Panel ID="Panel2" runat="server" Height="251px" Width="422px" BackImageUrl="~/image/pcardback.jpg" BorderColor="#E8E8E8" BorderStyle="Solid">
    &nbsp;</asp:Panel>

        </center>
 </div>




    <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblsessionEmail" runat="server" Visible="False"></asp:Label>
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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

