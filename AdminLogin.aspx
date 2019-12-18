<%@ Page Title="AdminLogin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
            background-color:lightgray;
        }
        .div1{
            float:left;
            margin-top:30px;
            margin-left:353px;
            background-color:blue;
            height:300px;
            width:220px;
        }
        .div2{
            float:right;
            margin-top:30px;
            margin-right:360px;
            background-color:white;
            height:300px;
            width:400px;
        }
        .auto-style2 {
            height: 266px;
        }
    </style>
     <link href="css/adminlogintext.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style2">




   <center> <%--<asp:Panel ID="Panel1" runat="server" Height="205px" Width="404px" BackColor="#CCFFFF" BorderColor="#0066FF" BorderStyle="Groove" Font-Bold="True" Font-Size="X-Large" ForeColor="#0066FF">
       ADMIN_LOGIN<br />
       <asp:Label ID="lblerror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
       <br />
       <table class="auto-style3">
           <tr>
               <td class="auto-style10" style="font-size: large">Admin_id</td>
               <td class="auto-style5">
                   <asp:TextBox ID="txtAdminid" runat="server" CssClass="logintextbox" ></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style10" style="font-size: large">Password</td>
               <td class="auto-style5">
                   <asp:TextBox ID="txtAdminpass" runat="server" CssClass="logintextbox" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style10">&nbsp;</td>
               <td class="auto-style5">
                   <asp:Button ID="btnLogin" runat="server" Text="Login" Width="178px" BackColor="#0066FF" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="36px" OnClick="btnLogin_Click" ToolTip="click here" />
               </td>
           </tr>
       </table>
       </asp:Panel>--%>
       <div class="div1">
           <center>
               <br />
<asp:Image ID="Image1" runat="server" Height="132px" ImageUrl="~/image/Admin1.png" Width="130px"></asp:Image>
               <br />
               <br />
               <br />
<asp:Label ID="Label2" runat="server" Text="Get Logged in Click Login " Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
           </center>

       </div>
       <div class="div2">
           <center>
               <br />
               <br />
               <asp:Label ID="Label1" runat="server" Text="Admin Login" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
               <br />
               <br /><br />
               <br />
               <br />
                <asp:Label ID="lblerror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
  
               <br />

                 <asp:Image ID="Image2" runat="server" Width="20" Height="20" ImageUrl="~/image/user.png"></asp:Image>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAdminid" runat="server" CssClass="logintextbox" Width="230px" placeholder="User name"></asp:TextBox>
               <br />
               <br />
                <asp:Image ID="Image3" runat="server" Height="25px" ImageUrl="~/image/pass123.png" Width="25px"></asp:Image>&nbsp;<asp:TextBox ID="txtAdminpass" runat="server" CssClass="logintextbox" TextMode="Password" Width="230px" placeholder="Password"></asp:TextBox>
        <br />
               <br />
               <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="265px" BackColor="#0066FF" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="36px" OnClick="btnLogin_Click" ToolTip="click here" BorderStyle="None" />

      
           </center>
       </div>
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
</asp:Content>

