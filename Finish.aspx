<%@ Page Title="Order Complete" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Finish.aspx.cs" Inherits="Finish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="color: #FF0000">Thank You ! Your order is placed successfully</h1>
            <br />
            <asp:Label ID="lblcashbacksession" runat="server"></asp:Label>
            <asp:Label ID="lblcardno" runat="server"></asp:Label>
<asp:Label ID="lblbalance" runat="server"></asp:Label>
            <asp:Label ID="lblpstatus" runat="server"></asp:Label>
<asp:Button runat="server" Text="Continue Shopping" ID="btnCshopping" BackColor="#0033CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" ToolTip="Click Here" OnClick="btnCshopping_Click"></asp:Button>
        </center>
    </div>
</asp:Content>

