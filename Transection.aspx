<%@ Page Title="Transection" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Transection.aspx.cs" Inherits="Transection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 



    <style type="text/css">
       
        body{
            margin-top:170px;
        }




         .divborder
        {
            width:400px;
           margin-left:420px;
           border-top:dotted;
           border-top-color:white;
            border-left:solid;
            border-left-width:20px;
            border-left-color:white;
            border-right:solid;
            border-right-width:20px;
            border-right-color:white;

        }

        

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="divborder">
        <center>
            
            <hr />

<asp:Label ID="Label4" runat="server" Text="Income Details" Font-Size="Large" Font-Bold="True"></asp:Label>

            <hr />

                     <table>
                
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Enter a date : " Font-Bold="True" Font-Size="Medium"></asp:Label><asp:TextBox ID="txtFrom" runat="server"></asp:TextBox></td>
                     <td><asp:Button ID="btnChek" runat="server" Text="Check" OnClick="btnChek_Click"></asp:Button></td>
                 
                </tr>
                <tr>
                      <td><asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></td>
                 </tr>
            </table>



            

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="slno" DataSourceID="SqlDataSource1" Width="360px" Font-Size="Medium" GridLines="None" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
        <asp:BoundField DataField="slno" HeaderText="slno" SortExpression="slno" InsertVisible="False" ReadOnly="True" Visible="false" >
        </asp:BoundField>
        <asp:BoundField DataField="invoiceno" HeaderText="Invoice No" SortExpression="invoiceno" FooterText="Total Amount :" >
        <FooterStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Left" />
        <HeaderStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Left" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" >
        <FooterStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Right" />
        <HeaderStyle HorizontalAlign="Right" />
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
    </Columns>
            <FooterStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" BackColor="#EAEAEA" CssClass="GVFixedFooter" />
    <HeaderStyle BackColor="#EAEAEA" Font-Bold="True" Font-Size="Large" CssClass="GVFixedHeader" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [slno], [invoiceno], [date], [amount] FROM [tblPaymentrecord] WHERE ([date] = @date)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtFrom" Name="date" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

 
        

  

    

    

   

            <hr />
<asp:Label ID="Label2" runat="server" Text="www.sastabazzar.com" Font-Size="Small" Font-Bold="True"></asp:Label>
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
</asp:Content>

