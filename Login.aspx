<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:50px;
            background-size:1450px;
            background-image:url(image/bacground.jpg);
            /*background-color:aqua;*/
   
        }
        

        .tr{
            width:500px;
            height:300px;
            border-style:solid;
            border-color:transparent;
            margin-left:400px;
            background-color:black;
            position:relative;
            opacity: 0.6;            
            filter: alpha(opacity=60);
            transition:all 1s;
        }
        .tr:hover{
            transform:scale(1.2);
        }
       
        input::placeholder {
            color: white;
            font-size:small;
        }

        .auto-style2 {
            width: 52px;
        }
        btlog{
           
             Width:280px;
              Height:30px;
              background-color:#3399ff;
                Color:White;
                  border:none;
                  font-weight:bold;
                   
                    Font-Size:Large;


        }
        .btlog:hover{
            background-color:red;
        }

    </style>
    <link href="css/userlogintextbox.css" rel="stylesheet" type="text/css" />
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <br />      
    <div class="tr">
        <div style="float:right; margin-right:5px;margin-top:5px">
            <asp:ImageButton ID="btnClose" runat="server" CausesValidation="False" Height="20px" ImageUrl="~/image/delete.png" OnClick="btnClose_Click" Width="20px" />
        </div>
        <center>
            
            <br />
<asp:Label ID="Label1" runat="server" Text="User Login" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <table>
                
                <tr>
                    <td class="auto-style2"><asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/image/wu.png" Width="40px"></asp:Image></td>
                    <td><asp:TextBox ID="txtUserid" runat="server" Class="logintextbox" placeholder="Enter your email id" Width="210px" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your id" ControlToValidate="txtUserid" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/image/wp.png"></asp:Image></td>
                    <td><asp:TextBox ID="txtUserpass" runat="server" Class="logintextbox" TextMode="Password" placeholder="Enter your password" Width="210px" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtUserpass" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style2"><a href="UserRegistration.aspx"><asp:Label ID="lblsignup" runat="server" Text="Register" Font-Bold="True" Font-Size="Small" ToolTip="Click here" Font-Underline="False" ForeColor="White"></asp:Label></a>
                       
                      </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a href="ForgotPass.aspx"><asp:Label ID="lblforgotpass" runat="server" Text="Forgot Your Password?" Font-Bold="True" Font-Size="Small" ToolTip="Click here" Font-Underline="False" ForeColor="White"></asp:Label></a>
                       
                      </td>
                </tr>
                
                
			</table><br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" CssClass="btlog" BackColor="#66CCFF" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="31px" Width="281px"/>
                
              <br /><br />
   
<a href="Buywithoutlogin.aspx"><asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" ToolTip="Click Here"></asp:Label>

        </center>
            
    </div>
            

    <br />

    <br />
    <br />
    <br />
    <br />
   

    
    <br />
    <br />
   

        </a>
   

</asp:Content>

