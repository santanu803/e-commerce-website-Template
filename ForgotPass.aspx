<%@ Page Title="ForgotPassword" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:190px;
        }
        .auto-style3 {
            width: 161px;
        }
        .auto-style4 {
            width: 435px;
            height: 154px;
        }
        .auto-style5 {
            width: 198px;
        }
    </style>
    <link href="css/logintextbox.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center> 
     
           
<asp:Panel ID="Panel1" runat="server" Height="31px" Width="434px" BackColor="#003399" BorderColor="#993300" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ForeColor="White">
       Change Your Password<br />  
   
      </asp:Panel><br />
    <br />
       <table class="auto-style4">
        <tr>
            <td class="auto-style5" style="color: #3399FF; font-size: large">
                <asp:Label ID="lblUid" runat="server" Text="User Id"></asp:Label>
            </td>
            <td class="auto-style3"><asp:TextBox ID="txtUid" runat="server" CssClass="logintextbox" placeholder="Enter your registered email " AutoPostBack="True" OnTextChanged="txtUid_TextChanged" TextMode="Email"></asp:TextBox></td>
        </tr>
           
           
        <tr>
            <td class="auto-style5" style="color: #3399FF; font-size: large">
                <asp:Label ID="lblMsgformail" runat="server" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
            </td>
            <td class="auto-style3"><asp:Button ID="btnGotp" runat="server" Text="GET OTP" BackColor="Lime" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="32px" Width="178px" OnClick="btnGotp_Click"></asp:Button></td>
        </tr>
         <tr>
            <td class="auto-style5" style="color: #3399FF; font-size: large">
                <asp:Label ID="lblEnterOtp" runat="server" Text="Enter Your OTP"></asp:Label>
             </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtOtp" runat="server" CssClass="logintextbox" OnTextChanged="TextBox1_TextChanged" TextMode="Number"></asp:TextBox>
             </td>
        </tr>
           <tr>
            <td class="auto-style5" style="color: #3399FF; font-size: large">
                <asp:Label ID="lblOtp" runat="server"></asp:Label>
               </td>
            <td class="auto-style3">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#0066FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="32px" Width="178px" OnClick="btnSubmit_Click"></asp:Button>
             </td>
        </tr>

         <tr>
            <td class="auto-style5" style="color: #3399FF; font-size: large">
                <asp:Label ID="lblnpass" runat="server" Text="Enter New Password"></asp:Label>
             </td>
            <td class="auto-style3"><asp:TextBox ID="txtNpass" runat="server" CssClass="logintextbox" placeholder="Type a new password" TextMode="Password" MinLength="4" ></asp:TextBox></td>
        </tr>
         <tr>
            <td class="auto-style5">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
               <a href="Login.aspx"> <asp:Label ID="lblClick" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label></a>
             </td>
            <td class="auto-style3"><asp:Button ID="btnUpdate" runat="server" Text="Update" BackColor="#006600" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="32px" OnClick="btnUpdate_Click" Width="87px" ></asp:Button>&nbsp;<asp:Button ID="btnClose" runat="server" Text="Close" BackColor="#FF3300" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="32px" OnClick="btnClose_Click" Width="87px"></asp:Button>

            </td>

        </tr>
    </table>
       </center>
    <br />
    <br />
    <br />
</asp:Content>

