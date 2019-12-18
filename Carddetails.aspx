<%@ Page Title="Card Status" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Carddetails.aspx.cs" Inherits="Carddetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        body{
            margin-top:200px;
        }
         .auto-style2 {
             width: 220px;
             text-align:right;
         }
         .cd{
             position:absolute;
             top:200px;
             width:300px;
             right:300px;

         }
         .auto-style3 {
             width: 114px;
         }
         .auto-style4 {
             height: 25px;
         }
         .auto-style5 {
             height: 25px;
             width: 268435456px;
         }
         .div1{
             position:absolute;
             left:300px;
             top:160;

         }
         .tds{
             text-align:right;
         }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div1">
        <center>
            <table>
                <tr style="background-color: #FF3399; font-size: large; font-weight: bold; color: #FFFFFF">
                    <%--<th style="font-size: large; font-weight: bold; color: #FFFFFF; background-color: #FF3399;">Track Your Payback Card</th>--%>

 <td colspan="2" align="center" class="auto-style4">Track Your Payback Card</td>  
                    <td style="background-color: #FFFFFF" class="auto-style5">

                    </td>           
                </tr>
                <br />
                <tr>
                    <td>
                        <br />
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Enter Your Card Number: " Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td><asp:TextBox ID="txtCardno" runat="server" placeholder="Enter your 16 digit card no: "></asp:TextBox></td>
                </tr>
                 <tr>
                    
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td><asp:TextBox ID="txtpass" runat="server" placeholder="Enter your 4 digit password" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Red" OnClick="LinkButton1_Click">Print Your Card</asp:LinkButton>
                    </td>
                    <td></td>
                    </tr>
                <tr>
                    <td>
                        
                    <asp:Label ID="lblM" runat="server" Text="Enter Your Email id : " Font-Bold="True" Font-Size="Medium" ForeColor="#FE2C56"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEid" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="btnGo" runat="server" Height="29px" ImageUrl="~/image/go.jpg" OnClick="btnGo_Click" Width="30px"></asp:ImageButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" BackColor="Red" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Width="173px"></asp:Button></td>
                    <td><asp:Button ID="btnCheck" runat="server" Text="Check Details" OnClick="btnCheck_Click" BackColor="#0066FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Width="173px"></asp:Button></td>
                </tr>
                  
            </table>
           
        
        </center>
    </div>
    <div class="cd">
        <center>
            <hr  id="hr1"/>

                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Card number: "></asp:Label>
                    <asp:Label ID="cardnoLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("cardno") %>' />
                    <br __designer:mapid="108" />
                    <hr/>
            <table>
                <tr>
                    <td class="tds"> <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Card holder name: "></asp:Label>
</td>
                    <td><asp:Label ID="nameLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("name") %>' />
                    </td>
                </tr>
                  <tr>
                    <td class="tds">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile no: "></asp:Label>
                      </td>
                    <td class="tds">
                    <asp:Label ID="mobileLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("mobile") %>' />
                      </td>
                </tr>
                  <tr>
                    <td class="tds">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="Issued date: "></asp:Label>
                      </td>
                    <td>
                    <asp:Label ID="DOILabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("DOI") %>' />
                      </td>
                </tr>
            </table>
                  <hr />
            <table>
                <tr>
                    <td class="tds">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Address: "></asp:Label>
                    </td>
                    <td class="auto-style3"><asp:Label ID="addressLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("address") %>' />
                    </td>
                </tr>
                 <tr>
                    <td class="tds">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="City: "></asp:Label>
                     </td>
                    <td>
                    <asp:Label ID="cityLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("city") %>' />
                     </td>
                </tr>
                 <tr>
                    <td class="tds">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Pincode: "></asp:Label>
                     </td>
                    <td class="auto-style3"><asp:Label ID="pinLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("pin") %>' />
                     </td>
                </tr>
                 <tr>
                    <td class="tds">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="State: "></asp:Label>
                     </td>
                    <td class="auto-style3"><asp:Label ID="stateLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("state") %>' />
                    
                     </td>
                </tr>
            </table>
            <hr />
            <table>
                <tr>
                    <td class="tds">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Your Card Balance: "></asp:Label>
                    </td>
                    <td><asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text=" Rs. "></asp:Label><asp:Label ID="balanceLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text='<%# Eval("balance") %>' />
                    </td>
                </tr>
              
            </table>                   
                    <hr />
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

