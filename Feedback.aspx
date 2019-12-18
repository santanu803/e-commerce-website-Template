<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        .div1{
            width:350px;
            position:absolute;
            left:550px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div1">
        <center>
            <hr />
            <h1 style="color: #008000">Give Your Feedback</h1>
            <hr />
            <table>
                <tr>
                    <td><asp:Label ID="lbluid" runat="server" Text="Enter your email :" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                    <td><asp:TextBox ID="txtUid" runat="server" Width="159px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblsms" runat="server" Text="Your Message :" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                    <td><asp:TextBox ID="txtSms" runat="server" Height="73px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Button ID="btncancle" runat="server" Text="Cancel" BackColor="Red" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="39px" OnClick="btncancle_Click" Width="84px"></asp:Button><asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#009933" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="38px" OnClick="btnSubmit_Click" Width="84px"></asp:Button></td>
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

