<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            margin-top:160px;
        }
        /* http://www.menucool.com */

#sliderFrame, #sliderFrame div {
    box-sizing: content-box;
    top: 2px;
    left: 4px;
    width: 850px;
   
}
#sliderFrame 
{
    width:1000px;
    margin:0 auto; /*center-aligned*/
}

#slider, #slider .sliderInner {
    width:800px;height:370px;/* Must be the same size as the slider images */
    border-radius:3px;
}

#slider {
    background-color:white;
    /*position:relative;*/
    margin:0 auto; /*center-aligned*/
    transform: translate3d(0,0,0);
    box-shadow: 0px 1px 5px #999999;
}

/* the link style (if an image is wrapped by a link) */
#slider a.imgLink, #slider .video {
    z-index:2;
    cursor:pointer;
    /*position:absolute;*/
    top:0px;left:0px;border:0;padding:0;margin:0;
    width:100%;height:100%;
}
#slider .video {
    background:transparent url(video.png) no-repeat 50% 50%;
}

/* Caption styles */
#slider .mc-caption {
    /*position:absolute;*/    
    width:100%;
    height:auto;
    padding:10px 0;/* 10px will increase the height.*/
    left:0px;
    bottom:0px;top:auto;
    overflow:hidden;
    font: bold 14px/20px Arial;
    color:#EEE;
    text-align:center;
    background:rgba(0,0,0,0.3);
}
#slider .mc-caption a {
    color:#FB0;
}
#slider .mc-caption a:hover {
    color:#DA0;
}


/* ------ built-in navigation bullets wrapper ------*/
#slider .navBulletsWrapper  {
    top:320px;
    text-align:center;
    background:none;
    /*position:relative;*/
    z-index:3;
}

/* each bullet */
#slider .navBulletsWrapper div 
{
    width:11px; height:11px;
    font-size:0;color:White;/*hide the index number in the bullet element*/
    background:transparent url(bullet.png) no-repeat 0 0;
    display:inline-block; *display:inline; zoom:1;
    overflow:hidden;cursor:pointer;
    margin:0 6px;/* set distance between each bullet*/
}

#slider .navBulletsWrapper .active {background-position:0 -11px;}


/* --------- Others ------- */

#slider img, #slider>b, #slider a>b {
    /*position:absolute;*/
     border:none; display:none;
}

#slider .sliderInner {
    overflow:hidden;
    /*position:absolute;*/
     top:0; left:0;
}

#slider>a, #slider video, #slider audio {display:none;}
#slider div {-webkit-transform: translate3d(0,0,0);transform: translate3d(0,0,0);}

.slidtable{
    width:100%;

}
.producttable{
    text-align:center;
}
.tdiv{
    margin-left:10px;
    
}

     
    </style>
     
    <script src="css/js-image-slider.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mclass">
    &nbsp;&nbsp;&nbsp;
    <table class="slidtable">
        <tr>
            <td>
                    <div id="sliderFrame">
                    <div id="slider">
          
            <img src="image/sn1.jpg" />
            <img src="image/sn2.jpg" alt="" />
            <img src="image/sn3.jpg" alt="" />
             
                     </div>
                     </div>
            </td>
        </tr>
    </table>
</div>
    <br />
    <br />
    <center><table>
        <tr>
            <td>
                <div class="tdiv">
        
        
           <asp:DataList ID="DataList1" runat="server" DataKeyField="itemid" DataSourceID="SqlDataSource1" RepeatColumns="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
             <HeaderTemplate>
        <asp:Label ID="Label1" runat="server" Text="Today's Special" foreColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label>
<hr />
                </HeaderTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton1_Click1"/>
       
                <br />
               <asp:Label ID="lblItemid" runat="server" Font-Bold="False" Font-Size="X-Small" Text='<%# Eval("itemid") %>' Visible="false"/>

                

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="item_nameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("iname") %>' ForeColor="#0066FF" />
                &nbsp;<br />
                <hr />
                <br />&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Rs : "></asp:Label>
                <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("price") %>' />
                <asp:Label ID="price_per_UnitLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ppu") %>' />
                <br />
                <hr />
                <br />
           </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          
        </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [ppu], [image] FROM [tblItem] WHERE ([offer] = @offer)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="tdsp" Name="offer" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
            </td>
        </tr>
        <br />
        <tr>
            <td>
                <div class="tdiv">
        
       
           <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
                  <HeaderTemplate>
        <asp:Label ID="Label1" runat="server" Text="Deal Of The Day" foreColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label>
<hr />
                </HeaderTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton1_Click1"/>
       
                <br />
               <asp:Label ID="lblItemid" runat="server" Font-Bold="False" Font-Size="X-Small" Text='<%# Eval("itemid") %>' Visible="false"/>

                

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="item_nameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("iname") %>' ForeColor="#0066FF" />
                &nbsp;<br />
                <hr />
                <br />&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Rs : "></asp:Label>
                <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("price") %>' />
                <asp:Label ID="price_per_UnitLabel" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ppu") %>' />
                <br />
                <hr />
                <br />
           </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [itemid], [iname], [price], [ppu], [image] FROM [tblItem] WHERE ([offer] = @offer)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="dod" Name="offer" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
            </td>
        </tr>
    </table></center>
    
        
   



</asp:Content>

