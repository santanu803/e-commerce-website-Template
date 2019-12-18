<%@ Page Title="List Upload" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListUpload.aspx.cs" Inherits="ListUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }

          .divborder
        {
             /*position:fixed;*/
            width:307px;
           margin-left:750px;
           border-top:dotted;
           border-top-color:lightgray;
            border-left:solid;
            border-left-width:20px;
            border-left-color:lightgray;
            border-right:solid;
            border-right-width:20px;
            border-right-color:lightgray;

        }
           .div2{
             position:fixed;
             width:300px;
             top:200px;
           left:300px;
           /*border-top:solid;
           border-top-color:lightgray;      
           border-top-width:20px;*/
           

         }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="divborder">
         <table>
            <tr>
               <center> <asp:label runat="server" text="Shipping Details" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0066FF"></asp:label></center>
            </tr>
              <tr>
                <td class="td">
                    <asp:label runat="server" text="Order Id" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtOid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td">
                    <asp:label runat="server" text="Name" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Your Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="td">
                    <asp:label runat="server" text="Email id" Font-Bold="True" Font-Size="Medium" ID="lblEemail"></asp:label>
                </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Your Email id" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Mobile No" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMno" ErrorMessage="Enter Your Valid Mobile no" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style5"><asp:label runat="server" text="Address" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter your Shipping Aaddress" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Land Mark" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLand" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLand" ErrorMessage="Enter a Valid Land Mark" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Pincode" Font-Bold="True" Font-Size="Medium"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPin" ErrorMessage="Enter Your Pincode" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payable amount"></asp:Label>
                 </td>
                <td class="auto-style3">
                   <asp:TextBox ID="txtsalary" runat="server" Enabled="False"></asp:TextBox>
                   </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Mode"></asp:Label>
                 </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlPmode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPmode_SelectedIndexChanged">
                        <asp:ListItem>Cash On Delivery</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlPmode" ErrorMessage="Please Select a payment mode" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payback Card No"></asp:Label>
                 </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPcard" runat="server" placeholder="Enter Your card no (Optional)"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td class="td"><asp:label runat="server" text="Payment Status" Font-Bold="True" Font-Size="Medium" ID="label3"></asp:label>
                 </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPstatus" runat="server"></asp:TextBox>
                    <br />
                 </td>
            </tr>
            <tr>
                <td><asp:label runat="server" text="Order Date" Font-Bold="True" Font-Size="Medium" ID="label1"></asp:label></td>
                    
                <td>
                    <asp:TextBox ID="txtOrderdate" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td></td>
                <td class="auto-style3"></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblPbalance" runat="server"></asp:Label><asp:Label ID="lblUid" runat="server" Text="Label" Visible="False"></asp:Label>
                 </td>
                <td class="auto-style3">
                    <asp:Button ID="btnCorder" runat="server" Text="Confirm Order" OnClick="btnCorder_Click" /></td>
          
                   </tr>
        </table>

    </div>
    <div class="div2">
        <center>
            <hr />
<asp:Label ID="Label2" runat="server" Text="Upload Your Item List" Font-Bold="True" Font-Size="Large"></asp:Label>
            <hr />
            <table>
                <tr>
                    <td>
<asp:Image ID="imgList" runat="server" Height="150px" Width="100px"></asp:Image>
                    </td>

                </tr>
                <tr>
                    <td><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></td>
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

