<%@ Page Title="Users" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="User_List.aspx.cs" Inherits="User_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:160px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="width: 1090px">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_email" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="#333333" GridLines="None" Height="149px" RowHeaderColumn="Date Of Birth" Width="820px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField></asp:TemplateField>
                <asp:BoundField DataField="user_name" HeaderText="User_Name" SortExpression="user_name" />
                <asp:BoundField DataField="user_email" HeaderText="Email id" ReadOnly="True" SortExpression="user_email" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="cpasssword" HeaderText="C_Password" SortExpression="cpasssword" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile_No" SortExpression="mobile" />
                <asp:BoundField DataField="dob" HeaderText="Date_Of_Birth" SortExpression="dob" />
                <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" />
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="Large" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [user_table] WHERE [user_email] = @original_user_email" InsertCommand="INSERT INTO [user_table] ([user_name], [user_email], [password], [cpasssword], [mobile], [dob], [sex]) VALUES (@user_name, @user_email, @password, @cpasssword, @mobile, @dob, @sex)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user_table]" UpdateCommand="UPDATE [user_table] SET [user_name] = @user_name, [password] = @password, [cpasssword] = @cpasssword, [mobile] = @mobile, [dob] = @dob, [sex] = @sex WHERE [user_email] = @original_user_email">
            <DeleteParameters>
                <asp:Parameter Name="original_user_email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="cpasssword" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="cpasssword" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="original_user_email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</center>
</asp:Content>

