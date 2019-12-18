<%@ Page Title="Admin Home Page" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:200px;
        }
        .divlbluser{
            position:fixed;
            top:75px;
            right:140px;
        }

        .divupdate{
            position:fixed;
            top:200px;
            left:400px;
            transition:all 1s;
        }

         .divtran{
            position:fixed;
            top:190px;
            left:575px;
            transition:all 1s;
        }

         .divbill{
              position:fixed;
            top:193px;
            left:753px;
            transition:all 1s;
         }
         .divupdate:hover{
             transform:scale(1.2);
         }
         .divtran:hover{
             transform:scale(1.2);
         }

         .divbill:hover{
             transform:scale(1.2);
         }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


   
       
        <div class="divupdate">

            <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" OnClick="ImageButton1_Click" Width="160px" ImageUrl="~/image/update.png" ToolTip="Update Order Details" />
       
       </div> 
        
    <div class="divtran">

        <asp:ImageButton ID="ImageButton2" runat="server" Height="160px" ImageUrl="~/image/transaction.png" Width="160px" PostBackUrl="~/Transection.aspx" ToolTip="Transacttion History" />

    </div>

    <div class="divbill">

        <asp:ImageButton ID="ImageButton3" runat="server" Height="165px" ImageUrl="~/image/bill copy.png" Width="165px" PostBackUrl="~/MakeBill.aspx" ToolTip="Make a bill" />

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

