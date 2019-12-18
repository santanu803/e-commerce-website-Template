<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:110px;
        }

    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>    <link href="css/logintextbox.css" rel="stylesheet" type="text/css" />
    <link href="btnporder.css" rel="stylesheet" type="text/css" />
<link href="css/btnBuy.css" rel="stylesheet" type="text/css" />
        <link href="css/btnacart.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        <!--
#Layer1 {
	position:absolute;
	left:156px;
	top:243px;
	width:492px;
	height:270px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:249px;
	top:496px;
	width:354px;
	height:180px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	left:10px;
	top:9px;
	width:292px;
	height:31px;
	z-index:3;
}
#Layer4 {
	position:absolute;
	left:66px;
	top:48px;
	width:72px;
	height:34px;
	z-index:4;
}
#Layer5 {
	position:absolute;
	left:161px;
	top:48px;
	width:67px;
	height:32px;
	z-index:5;
            right: 126px;
        }
#Layer6 {
	position:absolute;
	left:119px;
	top:49px;
	width:57px;
	height:33px;
	z-index:6;
}
#Layer7 {
	position:absolute;
	left:337px;
	top:9px;
	width:124px;
	height:33px;
	z-index:3;
}
#Layer8 {
	position:absolute;
	left:278px;
	top:200px;
	width:124px;
	height:33px;
	z-index:4;
}
#Layer9 {
	position:absolute;
	left:793px;
	top:9px;
	width:148px;
	height:31px;
	z-index:5;
}
#Layer10 {
	position:absolute;
	left:277px;
	top:248px;
	width:66px;
	height:32px;
	z-index:6;
}
#Layer11 {
	position:absolute;
	left:672px;
	top:243px;
	width:503px;
	height:414px;
	z-index:3;
}
        .auto-style4 {
            margin-top: 4px;
        }
        .auto-style6 {
            height: 638px;
            width: 1453px;
        }
        .auto-style9 {
            width: 225px;
        }
        .auto-style10 {
            height: 43px;
            width: 225px;
        }
        .auto-style11 {
            width: 569px;
        }
        .auto-style12 {
            width: 256px;
        }
        .auto-style13 {
            height: 43px;
            width: 256px;
        }
        .auto-style14 {
            left: 672px;
            top: 243px;
            width: 576px;
        }
        .auto-style15 {
            width: 256px;
            height: 61px;
        }
        .auto-style16 {
            width: 225px;
            height: 61px;
        }
        #TextArea1 {
            height: 28px;
            width: 187px;
        }
        -->
</style>
    <%--<form id="form3" name="form3" method="post" action="">
      <label>
        <input type="text" name="textfield" />
      </label>
    </form>--%></head>
    <body>
        <div class="auto-style6" width="1300">
            
            <div id="Layer1">
    <asp:Image ID="imgItem" runat="server" Height="270px" Width="490px" CssClass="auto-style4" />
    </div>
        
  <div id="Layer11" class="auto-style14">
  <table height="392" border="0" class="auto-style11">
    <tr>
      <th colspan="2" scope="col" style="font-size: x-large">&nbsp;<asp:Label ID="lblPname" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#0066FF" Font-Underline="True"></asp:Label>
                        <br />
                            <asp:Label ID="label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product id: "></asp:Label>
                            <asp:Label ID="lblPid" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
        </th>
    </tr>
       <%--<tr>
      <td>&nbsp;</td>
      <td><form id="form5" name="form5" method="post" action="">
          </form>      
        </td>
    </tr>--%>
       <tr>
      <td style="font-size: medium" class="auto-style12">
          <asp:Label ID="Label7" runat="server" Text="Price:  " Font-Bold="True" Font-Size="Large"></asp:Label>
          <asp:Label ID="Label3" runat="server" ForeColor="#FF9900" Text="Rs." Font-Bold="True" Font-Size="Large"></asp:Label>
          <asp:Label ID="lblPrice" runat="server" ForeColor="#FF9900" Font-Bold="True" Font-Size="Large"></asp:Label>
          <asp:Label ID="lblPpu" runat="server" ForeColor="#FF9900" Font-Bold="True" Font-Size="Large"></asp:Label>
          <br />
          <asp:Label ID="Label6" runat="server" Text="Price includes all taxes" Font-Size="Small" ForeColor="#0000CC"></asp:Label>
          
          <br />
          <asp:Label ID="lblAvailable" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#009933"></asp:Label>
          
          <asp:Label ID="lblsq" runat="server"></asp:Label>
          
          </td>
      <td align="right" class="auto-style9">
          <center><asp:Label ID="Label5" runat="server" Text="Delivery Policy" Font-Bold="True" Font-Size="Large"></asp:Label></center><br />
          
          <asp:Label ID="Label1" runat="server" Text="We Deliver Our Product Quickly" Font-Bold="True" Font-Size="Medium" ForeColor="#3333CC"></asp:Label><br />
          <asp:Label ID="Label4" runat="server" Text="(it may take Few Hours)" Font-Size="Small" ForeColor="#0066FF"></asp:Label><br />
           
          <br />
          <asp:Label ID="Label11" runat="server" Text="Express Delivery With In 30 Minute Rs 15/-" Font-Bold="True" Font-Size="Small" ForeColor="Maroon"></asp:Label>
          <asp:Label runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#006600">Normal Shipping Rs 10/-</asp:Label>
          <br />
          
           </td>
    </tr>
    <tr>
      <td class="auto-style15">
          <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#666666" Text="Quantity"></asp:Label>
          <asp:TextBox ID="txtQ" runat="server" Width="37px" Height="15px" AutoPostBack="True" OnTextChanged="txtQ_TextChanged"></asp:TextBox>
          <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Value="1" AutoPostBack="True">
              <asp:ListItem Value="0">select</asp:ListItem>
              <asp:ListItem Value="kg">Kg</asp:ListItem>
              <asp:ListItem Value="gm">Gm</asp:ListItem>
              <asp:ListItem Value="ltr">Liter</asp:ListItem>
              <asp:ListItem Value="piece">Piece</asp:ListItem>
          </asp:DropDownList>
        </td>
      <td align="right" class="auto-style16" style="font-size: medium; font-weight: bold;">
          <asp:Label ID="Label9" runat="server" Text="Total Price" Font-Bold="True" Font-Size="Medium"></asp:Label><br />
          <asp:Label ID="Label10" runat="server" Text="RS." Font-Bold="True" Font-Size="Medium" ForeColor="#000099"></asp:Label>&nbsp<asp:Label ID="lblTamount" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>&nbsp;/-<br />
          
        </td>
    </tr>
    <tr>
      <td class="auto-style12">
          <asp:Button ID="Button1" runat="server" Height="50px" Text="Add To Cart" Width="240px" class="btn orange" OnClick="Button1_Click"/>
        </td>
      <td align="right" class="auto-style9">
         <asp:Button ID="Button2" runat="server" Height="50px" Text="Buy Now" Width="240px" class="btn blue" OnClick="Button2_Click"/>
        </td>
    </tr>
    <tr>
      <td class="auto-style13">&nbsp;</td>
      <td class="auto-style10"><form id="form6" name="form6" method="post" action="">
          <label>
          &nbsp;</label></form>      
          <asp:Label ID="lblUid" runat="server" Text="Label" Visible="False"></asp:Label>
          <br />
          <asp:Label ID="lbltotalstock" runat="server"></asp:Label>
          <br />
        </td>
    </tr>
    <tr>
      <td class="auto-style12">&nbsp;</td>
      <td class="auto-style9"><form id="form7" name="form7" method="post" action="">
          <label>
          &nbsp;</label></form>      
        </td>
    </tr>
    <tr>
      <td class="auto-style12">&nbsp;</td>
      <td class="auto-style9"><form id="form8" name="form8" method="post" action="">
          </form>      
        </td>
    </tr>
    <tr>
      <td class="auto-style12">&nbsp;</td>
      <td class="auto-style9"><form id="form9" name="form9" method="post" action="">
          <label>
          &nbsp;</label></form>      
        </td>
    </tr>
    <tr>
      <td class="auto-style12">&nbsp;</td>
      <td class="auto-style9">
          &nbsp;</td>
    </tr>
  </table>
</div>



       

    </body>




















































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
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblSp" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Product Description"></asp:Label>
<br />
        
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
    </div>




















































</asp:Content>

