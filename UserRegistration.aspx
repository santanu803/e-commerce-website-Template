<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:50px;
            background-size:1350px;
            background-image:url(image/Rback.jpeg);
            /*background-color:aqua;*/
   
        }
        

        .tr{
            width:500px;
            height:370px;
            border-style:solid;
            border-color:transparent;
            margin-left:400px;
            background-color:black;
            opacity: 0.6;
            position:relative;

    filter: alpha(opacity=60);
    justify-content:center;
        }
       
        input::placeholder {
            color: white;
            font-size:small;
        }

        </style>
    <link href="css/userlogintextbox.css" rel="stylesheet" type="text/css" />
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              
    <div class="tr">
        <div style="float:right; margin-right:5px;margin-top:5px">
            <asp:ImageButton ID="btnClose" runat="server" CausesValidation="False" Height="20px" ImageUrl="~/image/delete.png" OnClick="btnClose_Click" Width="20px" />
        </div>
        <center>
            <br />
            <br />

         <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />

       <br />
            <table>
                <tr>
                    <td>
            <asp:Label ID="Label2" runat="server" Text="Name: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label>

                    </td>
                    <td>
                                          <asp:TextBox ID="txtName" runat="server" Class="logintextbox" placeholder="Enter your full name" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a name" ControlToValidate="txtName" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label3" runat="server" Text="Email: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label>

                    </td>
                    <td>
             <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Class="logintextbox" placeholder="enter your email id" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a email" ControlToValidate="txtEmail" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label4" runat="server" Text="Mobile no: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label><br />

                    </td>
                    <td>
                                          <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" Class="logintextbox" placeholder="Enter your 10 digit number" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a mobile no" Font-Size="Small" ForeColor="Red" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                 <br />  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile no" ControlToValidate="txtMobile" Font-Size="Small" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator> 
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label5" runat="server" Text="Date Of Birth: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label><br />

                    </td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Class="logintextbox" placeholder="Set your date of birth" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Set Your birth day" Font-Size="Small" ForeColor="Red" ControlToValidate="txtDate"></asp:RequiredFieldValidator></td>
                    
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label6" runat="server" Text="Gender: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label><br />

                    </td>
                    <td>
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Size="Small" ForeColor="White">
                                              <asp:ListItem>Male</asp:ListItem>
                                              <asp:ListItem>Female</asp:ListItem>
                                          </asp:RadioButtonList>
                               
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label8" runat="server" Text="Password: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="logintextbox" placeholder="Type a new password" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Set a password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label7" runat="server" Text="Confirm Password: " Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="txtCpass" runat="server" TextMode="Password" Class="logintextbox" placeholder="Retype password" Font-Bold="True" Font-Size="Small" ForeColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Re enter password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtCpass"></asp:RequiredFieldValidator>
            <br /><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matched" Font-Size="Small" ForeColor="Red" ControlToCompare="txtPass" ControlToValidate="txtCpass"></asp:CompareValidator>        
                    </td>
                </tr>
            </table>
            <br />
    
            
            
            
             <asp:Button ID="btnSignup" runat="server" Text="Sign up" Height="37px" Width="295px" BackColor="#009900" ForeColor="White" OnClick="btnSignup_Click" Font-Bold="True" Font-Size="Large"/>
            

                
              <br /><br />

        </center>
            

    </div>
            &nbsp;

    <br />

    <br />
    <br />
   
   

</asp:Content>

