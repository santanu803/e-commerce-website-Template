<%@ Page Title="Create Payback Card" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NPayback.aspx.cs" Inherits="NPayback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        body{
            margin-top:140px;
        }

           .auto-style3 {
               height: 26px;
           }
          

           .auto-style4 {
               width: 300px;
           }
           .auto-style5 {
               width: 130px;
           }
           .auto-style6 {
               height: 26px;
               width: 130px;
           }
          

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div ">

        <center>

   <asp:Label ID="Label3" runat="server" ForeColor="#FF0066" Text="CREATE PAYBACK CARD" Font-Underline="True" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <br />
    <table class="auto-style4" >
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">Email id</td>
            <td>
                <asp:TextBox ID="txtEid" runat="server" placeholder="Enter Registered email id" OnTextChanged="txtEid_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style6">Address</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server" placeholder="Your shipping address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">Pin Code</td>
            <td>
                <asp:TextBox ID="txtPin" runat="server" placeholder="Enter your pincode"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPin" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" placeholder="Enter your City"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">State</td>
            <td>
                <asp:TextBox ID="txtState" runat="server" placeholder="enter your city name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-decoration: blink; font-weight: bold;" class="auto-style5">Mobile No</td>
            <td>
                <asp:TextBox ID="txtMno" runat="server" placeholder="enter your valid mobile no"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMno" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; font-weight: bold" class="auto-style5">Date</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" placeholder="Enter Today's Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDate" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; font-weight: bold" class="auto-style5">Password</td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" placeholder="set a new 4 digit password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPass" ErrorMessage="mendetory field" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="174px" OnClick="btnSubmit_Click" BackColor="#33CC33" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" />
            </td>
        </tr>
    </table></center>
           
        

    </div>

    <br />
    <br />
    <br />
    <br />




</asp:Content>

