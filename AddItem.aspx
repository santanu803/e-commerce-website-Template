<%@ Page Title="AddItem" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:190px;
        }
        .auto-style2 {
            width: 810px;
            height: 516px;
        }
        .auto-style3 {
            width: 307px;
            height: 203px;
        }
        .auto-style32 {
            height: 19px;
            width: 303px;
        }
        .auto-style36 {
            height: 25px;
            width: 303px;
        }
        .auto-style38 {
            height: 63px;
            width: 303px;
        }
        .auto-style40 {
            height: 47px;
            width: 303px;
        }
        .auto-style41 {
            height: 1859px;
        }
        .auto-style43 {
            height: 20px;
            width: 303px;
        }
        .auto-style45 {
            height: 21px;
            width: 303px;
        }
        .auto-style47 {
            height: 26px;
            width: 303px;
        }
        .auto-style48 {
            margin-bottom: 3px;
        }
        .auto-style49 {
            width: 303px;
        }
        .auto-style50 {
            height: 20px;
            width: 307px;
        }
        .auto-style51 {
            height: 26px;
            width: 307px;
        }
        .auto-style52 {
            height: 21px;
            width: 307px;
        }
        .auto-style53 {
            height: 19px;
            width: 307px;
        }
        .auto-style54 {
            height: 25px;
            width: 307px;
        }
        .auto-style55 {
            height: 47px;
            width: 307px;
        }
        .auto-style56 {
            height: 63px;
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="auto-style41">
        
        
        <center>
            <table class="auto-style2">
                <tr>
                    <h1>Add New Item</h1>
                    
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="imgItem" runat="server" Height="189px" Width="292px" />
                    </td>
                    <td class="auto-style49">
                        <asp:FileUpload ID="ItemUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50" style="font-size: large">&nbsp;</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="txtItemid" runat="server" class="" Width="168px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style51" style="font-size: large">Item Name :</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txtItemname" runat="server" Width="168px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtItemname" ErrorMessage="Please enter a name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style52" style="font-size: large">Price :</td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtPrice" runat="server" Width="168px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter a Price" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50" style="font-size: large">Price Per Unit :</td>
                    <td class="auto-style43">
                        <asp:DropDownList ID="ddlPunit" runat="server" CssClass="auto-style48" Width="173px">
                            <asp:ListItem>Select One</asp:ListItem>
                            <asp:ListItem>/Kg</asp:ListItem>
                            <asp:ListItem>/Piece</asp:ListItem>
                            <asp:ListItem>/Gram</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPunit" ErrorMessage="Please Select a option" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50" style="font-size: large">Stock Quantity :</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="txtStock" runat="server" Width="168px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStock" ErrorMessage="Please enter how many item you have" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53" style="font-size: large">Stock Unit :</td>
                    <td class="auto-style32">
                        <asp:DropDownList ID="ddlStockunit" runat="server" Width="173px">
                            <asp:ListItem>Select One</asp:ListItem>
                            <asp:ListItem>Kg</asp:ListItem>
                            <asp:ListItem>Piece</asp:ListItem>
                            <asp:ListItem>Gram</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlStockunit" ErrorMessage="Please Select a option" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style54" style="font-size: large">Category :</td>
                    <td class="auto-style36">
                        <asp:DropDownList ID="ddlCategory" runat="server" Width="173px" AutoPostBack="True">
                            <asp:ListItem>Select One</asp:ListItem>
                            <asp:ListItem>Veg</asp:ListItem>
                            <asp:ListItem>Nonveg</asp:ListItem>
                            <asp:ListItem>Today special</asp:ListItem>
                            <asp:ListItem>Grocary</asp:ListItem>
                            <asp:ListItem>Wine</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Please Select a option" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style54" style="font-size: large">Offer :</td>
                    <td class="auto-style36">
                        <asp:DropDownList ID="ddlOffer" runat="server" Width="173px">
                            <asp:ListItem>Optional</asp:ListItem>
                            <asp:ListItem>tdsp</asp:ListItem>
                            <asp:ListItem>dod</asp:ListItem>
                          
                        </asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Please Select a option" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style54" style="font-size: large">Stock Status :</td>
                    <td class="auto-style36">
                        <asp:DropDownList ID="ddlStatus" runat="server" Width="173px">
                            <asp:ListItem>Select One</asp:ListItem>
                            <asp:ListItem>Instock</asp:ListItem>
                            <asp:ListItem>Out Of Stock</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlStatus" ErrorMessage="Please Select a option" Font-Size="Small" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style55" style="font-size: large"><asp:Label ID="lblSubcat" runat="server" Text="Sub Catagory"></asp:Label></td>
                    <td class="auto-style40">
                        <asp:DropDownList ID="ddlsubcat" runat="server" Width="173px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="subcat" DataValueField="subcat">
                            <asp:ListItem>None</asp:ListItem>
                            <asp:ListItem>Cookies</asp:ListItem>
                            <asp:ListItem>Dal</asp:ListItem>
                            <asp:ListItem>Cook oil</asp:ListItem>
                            <asp:ListItem>Hair oil</asp:ListItem>
                            <asp:ListItem>Rice</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:CheckBox ID="chk1" runat="server" AutoPostBack="True" />
                     <asp:Label ID="lblSub" runat="server" Text="Add new Sub category" Font-Bold="True" Font-Size="Small"></asp:Label><br />   <asp:TextBox runat="server" ID="txtUscat" placeholder="Add new Sub category"></asp:TextBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [subcat] FROM [catagory]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style56">&nbsp;</td>
                    <td class="auto-style38">
                     <asp:Button ID="btnSubmit" runat="server" Height="35px" Text="Submit" Width="175px" OnClick="btnSubmit_Click" BackColor="#33CC33" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                         
	
                    </td>
                </tr>
            </table>
        </center>
        
    </div><br />
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

