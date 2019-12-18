<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowFeedback.aspx.cs" Inherits="ShowFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        .div1{
            width:600px;
            position:absolute;
            left:360px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div1">
        <center>
        <hr />
        <h1>Customer FeedBack</h1>
        <hr />
            <br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Slno" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Size="Medium" Width="521px" GridLines="None">
    <Columns>
        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        <asp:BoundField DataField="Slno" HeaderText="Sl.No." InsertVisible="False" ReadOnly="True" SortExpression="Slno">
        <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" />
        </asp:BoundField>
        <asp:BoundField DataField="userid" HeaderText="User id" SortExpression="userid">
        <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" />
        </asp:BoundField>
        <asp:BoundField DataField="feedback" HeaderText="Message" SortExpression="feedback">
        <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" />
        </asp:BoundField>
    </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [tblFeedback] WHERE [Slno] = @Slno" InsertCommand="INSERT INTO [tblFeedback] ([userid], [feedback]) VALUES (@userid, @feedback)" SelectCommand="SELECT * FROM [tblFeedback]" UpdateCommand="UPDATE [tblFeedback] SET [userid] = @userid, [feedback] = @feedback WHERE [Slno] = @Slno">
                <DeleteParameters>
                    <asp:Parameter Name="Slno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="userid" Type="String" />
                    <asp:Parameter Name="feedback" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userid" Type="String" />
                    <asp:Parameter Name="feedback" Type="String" />
                    <asp:Parameter Name="Slno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
</asp:Content>

