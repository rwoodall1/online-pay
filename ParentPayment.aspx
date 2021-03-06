﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ParentPayment.aspx.vb" Inherits="ParentPayment" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Parent Payment</title>
    <!-- Bootstrap core CSS -->
    <link href="new_look/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
.shoppingcart {border:2px solid #000;}
        .shoppingcart .header{background-color:#7A090B;color:#ffffff;width:100%!important;height:auto!important;padding:5px 0px 5px 2px}
        .shoppingcart .header .column{float:left;width:120px;font-weight:bold;display:block }
        .shoppingcart .row{padding:3px;margin:0px !important}
        .shoppingcart .rowAlt{background-color:gainsboro;padding:3px;margin:0px !important}
        .shoppingcart .rowAlt .column{float:left;width:100%;}
        .shoppingcart .row .column{float:left;width:100%;}
        .smalltext{font-size:8px;font-style:italic}

         .columnTotal{float:right!important;text-align:right!important;padding-right:10px}
        .shoppingcart .footer{text-align:right;float:right;width:15%!important}
        .shoppingcart .footer .column{background-color:white;border:2px solid #a8a8a8;width:100%;float:right;text-align:right;font-weight:bold;padding:10px}
         .clear {clear:left;}
        .floatLeft {float:left;}

.listcontaino {
	background-color: #eee;
	position:relative;
	overflow:hidden;
	padding:.25em;
}
.infoCol {
	display: inline-block;
	width:25%;
	background-color:#7A090B;
	font-weight:bold;
	color:#FCF9F9;
	font-size:12px;
	padding:.5em;
	text-align:right
}
.ResutoCol {
	width:65%;
	background-color:#fff;
	font-weight:bold;
	color:#000;
	font-size:12px;
	display: inline-block;
	padding:.5em;
}
.deleteSelection {
	display: inline-block;
	width:25%;
	background-color:#eee;
	font-weight:bold;
	font-size:14px;
	padding:.5em;
	text-align:center
}		   
/* Smartphones (portrait and landscape) ----------- 
@media only screen 
and (min-device-width : 320px) 
and (max-device-width : 480px) {
	.columnEmpty{width:30px!important}
	.columnQty {width:20px!important;text-align:center!important;}
	.columnStudent {width:80px!important; font-size:24px}
	.columnTeacher {width:60px!important;}
	.columnIcons {width:60px!important;}
	.shoppingcart .rowAlt .column{float:left;width:60px;}
	.shoppingcart .row .column{float:left;width:60px;}
}*/

.style1 {
	font-family: "Open Sans", Arial, sans-serif;
}
#pageZZ {
	width: 90%;
	max-width:900px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
	z-index: 10;
	background-color: #FFF;
	padding-left:2%;
	padding-right:2%;
}
.headerASP {
	text-align:center;
}
.headline {
	float: left;
	padding-bottom: 50px;
	padding-left: 20px;
	height: 30px;
	z-index: 50;
	margin-top:20px;
	font-size: 30px;
	font-weight: normal;
	color: #666;
	width: 98%;
	text-decoration: none;
	font-family: "Open Sans", Arial, sans-serif;
}
.headline2 {
	float: left;
	padding-left: 20px;
	padding-bottom: 40px;
	height: 30px;
	z-index: 50;
	margin-top:10px;
	font-size: 20px;
	font-weight: normal;
	color: #666;
	width: 95%;
	text-decoration: none;
	font-family: "Open Sans", Arial, sans-serif;
}
.pay_sidebar {
	width:266px;
	background-image:url(online-pay/new_look/sidebar.jpg);
	height:697px;
	background-repeat:no-repeat;
	display:block;
	float:left
}
.pay_contain {
	width:800px;
	height:697px;
	background-repeat:no-repeat;
	display:block;
	float:left
}
.code_contain {
	width:100%;
	display:block;
	float:left;
	background-color:#FFF
}
.page_footer {
	text-align: center;
	padding: 2em;
	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #FFF;
}
.formDivs {
	padding-left:20px;
	padding-top:8px;
	padding-bottom:8px;
	font-family: "Open Sans", Arial, sans-serif;
}
.formDivsTITLE {
	padding-left: 20px;
	padding-top: 8px;
	padding-bottom: 8px;
	font-family: "Open Sans", Arial, sans-serif;
	font-size: 20px;
	font-weight: bold;
	font-style: oblique;
}
.formDivsBottom {
	padding-left:20px;
	padding-top:8px;
	padding-bottom:20px;
	font-family: "Open Sans", Arial, sans-serif;
}
.formContHolder {
	width:100%;
}
.formCont {
	padding-left:20px;
	padding-top:8px;
	padding-bottom:8px;
	font-family: "Open Sans", Arial, sans-serif;
        top: 0px;
        left: 0px;
    }
.formCont30 {
	padding-left:20px;
	padding-top:8px;
	padding-bottom:8px;
	font-family: "Open Sans", Arial, sans-serif;
	width:30%;
	float:left;
	display:block;
}
.formCont50 {
	padding-left:20px;
	padding-top:8px;
	padding-bottom:8px;
	font-family: "Open Sans", Arial, sans-serif;
	width:50%;
	float:left;
	display:block;
}
    body,td,th {
	font-family: Gotham, "Helvetica Neue", Helvetica, Arial, sans-serif;
}
    body {
	background-color: #E5E4E4;
}
.redtext {
	font-size: 10pt;
	font-style: normal;
	line-height: 12pt;
	color: #C00;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
}
.Green_Text_NEW {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-weight: bold;
	font-variant: normal;
	color: #060;
	text-decoration: none;
	float: left;
	width: 100%;
	padding-top:6px;
	padding-bottom:6px;
	padding-left:20px;
}
.error_text {
	font-family: "Open Sans", Arial, sans-serif;
	list-style:none;
	color:#E80F12;
	font-weight:bold;
}
    #icons {
        height: 122px;
    }
    p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
<script src="new_look/modernizr.js"></script>
    <!--[if lt IE 9]><script src="new_look/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body background-color="#333" link="blue">
<div id="pageZZ">
    <div class="code_contain">
        <div class="hidden-xs headerASP">
            <a href="http://memorybook.com/">
                <img src="new_look/headbig.jpg" alt="Memory Book Header" width="90%" border="0" /></a>
        </div>
        <div class="visible-xs headerASP">
            <img src="new_look/logo-1.png" width="70%" alt="" style="margin-top: 1em" />
        </div>
        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="formDivsTITLE">
                <asp:Label
                    ID="lblschname" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label
                    ID="Label10" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Large" ForeColor="Black">PAY SITE</asp:Label>
            &nbsp;</div>
            <div class="hidden-xs headline">
                Parent Order/Payment
            </div>
            <div class="visible-xs headline2">Parent Order/Payment</div>
            <div class="formDivs">
                <span class="redtext"><strong>Check that your Pay Code and School Name below are 
    correct. If they are not, return to the previous page and carefully re-enter 
    your Pay Code.</strong></span>
            </div>
            <div class="Green_Text_NEW"><%Response.Write(Session("cAddress"))%></div>

            <div class="formContHolder">
                <div id="shpinfo" runat="server" visible="false">
                    <div class="formDivsTITLE">
                        <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Size="Large"
                            Text=" Shipping Information"></asp:Label>
                    </div>
                    <div class="formCont">
                        Name:
                <br />
                        <asp:TextBox ID="txtname" runat="server" Height="26px"
                            Width="298px" MaxLength="90"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server"
                            ControlToValidate="txtname" Display="Dynamic" ErrorMessage=" Name Required"
                            Font-Size="Small" ForeColor="Red" ValidationGroup="s1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="formCont">
                        Address:
                <br />
                        <asp:TextBox ID="txtaddress" runat="server" Height="26px" Width="299px" MaxLength="75"></asp:TextBox>
                        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                ControlToValidate="txtaddress" Display="Dynamic"
                ErrorMessage="Address Required" Font-Size="Small" ForeColor="Red" ValidationGroup="s1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-5 formCont">
                        &nbsp;
                City:
                <br />
                        <asp:TextBox ID="txtcity" runat="server" Width="298px" MaxLength="45"></asp:TextBox>
                        &nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server"
          ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="City Required"
          Font-Size="Small" ForeColor="Red" ValidationGroup="s1"></asp:RequiredFieldValidator>
                        &nbsp;
                    </div>
                    <div class="col-md-5 formCont">
                        State:
                <br />
                        <asp:DropDownList ID="ddlstate" runat="server" DataSourceID="dsStates"
                            DataTextField="name" DataValueField="name" Height="28px" Width="236px">
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-8 formCont">
                        &nbsp;Postal Code:<br />
                        <asp:TextBox ID="txtzip"
                            runat="server" Height="26px" Width="302px" MaxLength="5"></asp:TextBox>
                        &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                    ControlToValidate="txtzip" Display="Dynamic" ErrorMessage="Zip Code Required"
                    Font-Size="Small" ForeColor="Red" ValidationGroup="s1"></asp:RequiredFieldValidator>
                        &nbsp;
                    </div>
                </div>
             
            </div>
            <div style="clear:left; height:0px"></div>
            <div class="col-md-11 formCont">
                Grade:
            <br />
                <asp:DropDownList ID="ddlgrade" runat="server"
                    Height="27px" Width="186px" DataSourceID="dsgrade"
                    DataTextField="grade" DataValueField="grade" CausesValidation="True" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator
                    ControlToValidate="ddlgrade" ErrorMessage="Select Grade"
                    ID="RequiredFieldValidator2" runat="server" mm_ta_nowrap="error_text" Display="Dynamic" ValidationGroup="s1"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3 formCont">
                Teacher:          
            <br />
                <asp:TextBox ID="txtteacher" runat="server" Style="margin-top: 0px"
                    Visible="False" Height="26px" Width="151px"></asp:TextBox>
                &nbsp;</span><asp:DropDownList ID="dlteacher" runat="server" Height="26px" Width="149px"
                    DataSourceID="dsteacher" DataTextField="teacher" DataValueField="teacher" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator
                    ControlToValidate="dlteacher" ErrorMessage="Select Teacher"
                    ID="rfteacher" runat="server" mm_ta_nowrap="error_text" Display="Dynamic" ValidationGroup="s1"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3 formCont">
              
            </div>
    
<div style="clear:left; height:0px"></div>

<div class="col-md-5 formCont">
Student First Name:<br>
<asp:TextBox ID="studfname" runat="server" Width="190px" MaxLength="20"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
          ControlToValidate="studfname" ErrorMessage="Enter First Name" 
            ForeColor="Red" Display="Dynamic" ValidationGroup="s1"></asp:RequiredFieldValidator>
</div>
<div class="col-md-5 formCont">
Student Last Name:<br>
<asp:TextBox ID="studlname" runat="server" Width="190px" MaxLength="20"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
          ControlToValidate="studlname" ErrorMessage="Enter Last Name" ForeColor="Red" Display="Dynamic" ValidationGroup="s1"></asp:RequiredFieldValidator>
</div>
<div class="col-md-11 formCont">
 Enter email address for receipt to your inbox: <br>
        <asp:TextBox ID="txtcustemail" runat="server" Width="273px" CausesValidation="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="emailvalidator" runat="server" 
          ControlToValidate="txtcustemail" ErrorMessage="Invalid format for email address" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          Display="Dynamic" ForeColor="Red" ValidationGroup="s1"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
          runat="server" ControlToValidate="txtcustemail" 
          ErrorMessage="Email address is required." Display="Dynamic" 
        ForeColor="Red" ValidationGroup="s1"></asp:RequiredFieldValidator><br /><br />
            
</div>
     
<asp:UpdatePanel ID="UpdateOptions" runat="server">
 <ContentTemplate>
 <hr>
<div class="col-md-6 formCont" >
   
   <div style="font-size: medium; font-weight: bold; height: 33px;">
  Order Your Yearbook 
   </div>
    <div style="padding-left: 20px; width: 1365px;">
     <asp:RadioButtonList ID="rbBookType" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="9pt" AutoPostBack="True" Height="34px" Width="374px" RepeatColumns="1">
            <asp:ListItem Selected="True">Standard Yearbook</asp:ListItem>
        </asp:RadioButtonList>
       
     QTY: <asp:TextBox ID="txtqty" runat="server" AutoPostBack="True"
                    Width="32px" Height="26px" CausesValidation="True">1</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="Qty Required" ValidationGroup="yb"></asp:RequiredFieldValidator>
 
  
        &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="Qty Amount Not Available" MaximumValue="9" MinimumValue="1" ValidationGroup="yb"></asp:RangeValidator>
 
  
        <br />
        <asp:Label ID="lblperpic" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#FF3300" Text="(Student portrait and name will appear on the Cover)" Visible="False" Width="535px"></asp:Label>
        <br />
      <div class="col-md-12 formCont" id="perstext" runat="server" visible="false">   <%--icons div------------------------------------------------------%>
                     
                            Personalized Text:&nbsp;&nbsp;<asp:TextBox ID="txtperstext1" runat="server" MaxLength="29" 
                                Width="443px" ></asp:TextBox>
                                                   &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtperstext1" 
                                ErrorMessage="Enter Text For Personalization " Font-Bold="True" Display="Dynamic" ValidationGroup="yb"></asp:RequiredFieldValidator><br /> 
          <div style="font-weight: bold">
        PLEASE CHECK YOUR GRAMMAR AND SPELLING, TEXT WILL BE PRINTED AS SUBMITTED.</div><br />
 
<div id="icontext" runat="server" visible="false">&nbsp;
  <asp:Label ID="lblchooseicon" runat="server" Text="Choose Your Icons"></asp:Label>
  &nbsp;<asp:Label ID="lbliconamt" runat="server" Text="(Icons are $1.25 extra per icon)" 
        Font-Italic="True" Font-Size="Smaller" ForeColor="#FF3300" Visible="False"></asp:Label>
</div>
        <asp:UpdatePanel ID="UpdateImages" runat="server">
            <ContentTemplate>
                <div id="icons" runat="server" visible="false">
                    <div style="float: left; width: 200px;">
                        &nbsp;
    <asp:Label ID="lblicon1" runat="server" Text="First Icon"></asp:Label>
                        &nbsp;&nbsp;<asp:DropDownList ID="ddlicon1" runat="server"
                            DataSourceID="dsicon" DataTextField="caption" DataValueField="ivalue"
                            AutoPostBack="True" Height="19px" Width="134px">
                        </asp:DropDownList>

                        &nbsp;&nbsp;&nbsp;

    <br />

                        <asp:Image ID="imgicon1" runat="server" Height="66px" Width="73px"
                            ImageUrl="~/Images/Icons/0.jpg" />
                    </div>
                    <div style="float: left; width: 200px;">
                        &nbsp;
    <asp:Label ID="lblicon2" runat="server" Text="Second Icon"></asp:Label>
                        &nbsp;&nbsp;<asp:DropDownList ID="ddlicon2" runat="server"
                            DataSourceID="dsicon" DataTextField="caption" DataValueField="ivalue"
                            Height="19px" AutoPostBack="True" Width="134px" Enabled="False">
                        </asp:DropDownList>

                        &nbsp;&nbsp;

    <br />

                        <asp:Image ID="imgicon2" runat="server" Height="66px" Width="61px"
                            ImageUrl="~/Images/Icons/0.jpg" />
                    </div>
                    <div style="float: left; width: 200px; height: 108px;">
                        &nbsp;
    <asp:Label ID="lblicon3" runat="server" Text="Third Icon"></asp:Label>
                        &nbsp;&nbsp;<asp:DropDownList ID="ddlicon3" runat="server"
                            DataSourceID="dsicon" DataTextField="caption" DataValueField="ivalue"
                            Height="19px" AutoPostBack="True" Width="134px" Enabled="False">
                        </asp:DropDownList>

                        &nbsp;&nbsp;

    <br />

                        <asp:Image ID="imgicon3" runat="server" Height="60px" Width="59px"
                            ImageUrl="~/Images/Icons/0.jpg" />
                    </div>
                    <div style="float: left; width: 161px;">
                        &nbsp;
    <asp:Label ID="lblicon4" runat="server" Text="Fourth Icon"></asp:Label>
                        &nbsp;&nbsp;<asp:DropDownList ID="ddlicon4" runat="server"
                            DataSourceID="dsicon" DataTextField="caption" DataValueField="ivalue"
                            Height="19px" AutoPostBack="True" Width="134px" Enabled="False">
                        </asp:DropDownList>

                        &nbsp;&nbsp;

    <br />

                        <asp:Image ID="imgicon4" runat="server" Height="61px" Width="66px"
                            ImageUrl="~/Images/Icons/0.jpg" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>    
</div>

        <asp:Button ID="btnyearbook" runat="server" Height="26px" Text="Add To Cart" Width="170px" OnClientClick="return Validate()" ValidationGroup="yb" />
  
        &nbsp;(click to add yearbook in cart)<br />
        <br />
        Repeat step after adding to cart if ordering yearbooks for multiple students.</div>
    </div>

<div class="col-md-12 formCont" id="luvline" runat="server" visible="false">
      <hr >
    <div style="font-size: medium; font-weight: bold; height: 29px;">
        Order Love Line
    </div>
    <div>
        Add a dedication to your child that will be featured in the yearbook.
    </div>
    &nbsp;<div style="padding-left: 20px">
          Love Line Text:<br />
<asp:TextBox ID="txtluvline" runat="server" Width="459px" Height="54px" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
        &nbsp;<br /> (200 characters available) <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
          ControlToValidate="txtluvline" ErrorMessage="Enter Text" ForeColor="Red" Display="Dynamic" ValidationGroup="ll"></asp:RequiredFieldValidator>
        <br />
          (ex Love Line:Mya we are so proud of you! Good luck in Middle School! Love Mom and Dad)<br />
        <br />
        <div style="font-weight: bold">
        PLEASE CHECK YOUR GRAMMAR AND SPELLING, TEXT WILL BE PRINTED AS SUBMITTED.</div><br />
        <asp:Button ID="btnluvline" runat="server" Height="26px" Text="Add To Cart" Width="164px" OnClientClick="return Validate()" ValidationGroup="ll" />
        &nbsp;(click to add love line in cart)<br />
        <br />
        Repeat step after adding to cart if ordering love lines for multiple students.</div>
</div>
 <div class="col-md-12 formCont" id="Ad" runat="server" visible="false"> 
       <hr />
    <div style="font-size: medium; font-weight: bold; height: 33px;">
        &nbsp;Order Dedication Ad</div>
     Create a dedication ad for your child to be featured in the yearbook.
    <div style="padding-left: 20px">
        <asp:RadioButtonList ID="rbadtype" runat="server" AutoPostBack="True" Font-Bold="True" Font-Italic="False" Font-Size="9pt" Height="34px" RepeatColumns="1" Width="165px">
        </asp:RadioButtonList>
        <asp:Label ID="Label57" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Red" Text="(You will be redirected to another site to create your ad after payment is made.)"></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Button ID="btnad" runat="server" Text="Add To Cart" Width="172px" OnClientClick="return Validate()" ValidationGroup="s3" />
        &nbsp;(click to place an ad in cart)<br />
        <br />
       
         Repeat step after adding to cart if ordering ads for multiple students.
         
     </div>
</div>   

     </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="rbBookType" EventName="SelectedIndexChanged" />
    </Triggers>
</asp:UpdatePanel>
            <%--<div style="clear:left; height:0px"></div>--%>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="col-md-11 formCont">
</div>

<!--Listview Starts Here"-->
<div class="col-md-11 formCont" style="height: auto" >
   <asp:ListView ID="lvItems" class="shoppingcart" runat="server" DataKeyNames="id" DataSourceID="dsorders">
        <AlternatingItemTemplate>
            <div class="rowAlt">
		<div class="listcontaino">
			<div class="infoCol">Item Quantity:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("itemqty")%>&nbsp;&nbsp;&nbsp;@&nbsp;<%# Eval("itemamount")%></div> 
		</div>
		<div class="listcontaino">
			<div class="infoCol">Student Name / Item Description:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("studentfname") & " " & Eval("studentlname")%>&nbsp;/&nbsp;<%#  Eval("booktype") %></div>
		</div> 
		<div class="listcontaino">
			<div class="infoCol">Teacher / Grade:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("teacher")%>&nbsp;/&nbsp;<%#   Eval("grade")%></div>
		</div> 
		<div class="listcontaino">
			<div class="infoCol">Text / Personalization Options:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("perstext1")%>&nbsp;/&nbsp;<span class="smalltext"><%# Eval("cap")%>,<%# Eval("cap1")%></span></div>
		</div>
		<div class="listcontaino">
			<div class="deleteSelection"> <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete Item" /></div>
			<div class="columnTotal"><%# Eval("itemtotal")%></div> 
		</div>
            </div>
        </AlternatingItemTemplate>
        <ItemTemplate>
	<div class="row">
		<div class="listcontaino">
			<div class="infoCol">Item Quantity:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("itemqty")%>&nbsp;&nbsp;&nbsp;@&nbsp;<%# Eval("itemamount")%></div> 
		</div>
		<div class="listcontaino">
			<div class="infoCol">Student Name / Item Description:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("studentfname") & " " & Eval("studentlname")%>&nbsp;/&nbsp;<%#  Eval("booktype") %></div>
		</div> 
		<div class="listcontaino">
			<div class="infoCol">Teacher / Grade:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("teacher")%>&nbsp;/&nbsp;<%#   Eval("grade")%></div>
		</div> 
		<div class="listcontaino">
			<div class="infoCol"> Text / Personalization Options:&nbsp;</div>
			<div class="ResutoCol"><%# Eval("perstext1")%>&nbsp;/&nbsp;<span class="smalltext"><%# Eval("cap")%>,<%# Eval("cap1")%></span></div>
		</div>
		<div class="listcontaino">
			<div class="deleteSelection"> <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete Item" /></div>
			<div class="columnTotal"><%# Eval("itemtotal")%></div> 
		</div>
	</div>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div runat="server" style="background-color: #fff;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
               No data was returned.
            </div>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <div class="shoppingcart">
                <div id="itemPlaceholder" runat="server"> </div>
                <div class="footer">
                    <div class="clear"></div>
                    <div class="column" style="min-width:120px">Total:<asp:Label ID="lbltotal" runat="server" OnInit="lbltotal_Init" Text="0.00"></asp:Label></div>
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    </div>
    <eo:MsgBox ID="MsgBox1" runat="server" BackColor="#EBEBEB" 
            CloseButtonUrl="00070301" ControlSkinID="None" HeaderHtml="Dialog Title" 
            Height="216px" Width="320px">
            <HeaderStyleActive CssText="padding-right: 3px; padding-left: 8px; font-weight: bold; font-size: 10pt; background-image: url(00020213); padding-bottom: 3px; color: white; padding-top: 0px; font-family: 'trebuchet ms';height:20px;" />
            <ContentStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <FooterStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <BorderImages BottomBorder="00020212" BottomLeftCorner="00020207" 
                BottomRightCorner="00020208" LeftBorder="00020210" RightBorder="00020211" 
                TopBorder="00020209" TopLeftCorner="00020201" TopLeftCornerBottom="00020203" 
                TopLeftCornerRight="00020202" TopRightCorner="00020204" 
                TopRightCornerBottom="00020206" TopRightCornerLeft="00020205" />
        </eo:MsgBox>
    </ContentTemplate>
</asp:UpdatePanel>
    <div style="clear:both"></div>
<!--Listview Ends Here"-->
    <div class="col-md-11 formCont" align="right">
         <asp:HiddenField ID="hforderid" runat="server" />
<asp:Button ID="Button2" runat="server" Text="Submit Payment" Width="119px" 
        style="height: 26px" UseSubmitBehavior="False" />

    </div>
    
       
 <div style="clear:left"></div>
 <div class="formCont">

<div class="col-md-7 formCont" align="right">
     <asp:Label ID="Label11" runat="server" 
                    Text="Contacting payment portal. Please be patient." 
            Font-Bold="True" ForeColor="Black" style="display:none" ></asp:Label>
        </div>
            <div class="col-md-1 formCont" align="center">
     <asp:Image ID="Image1" runat="server" style="display:none" ImageUrl="~/images/loading.gif" /></div>
        <script type="text/javascript">
            function ShowImage() {
                document.getElementById('Image1').style.display = 'inherit';
                document.getElementById('Label11').style.display = 'inherit';
            }
</script>
</div>


<div class="formDivs">
    <asp:SqlDataSource ID="dsStates" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
        SelectCommand="SELECT name, abrv, id FROM states ORDER BY name">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsicon" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT id, isortorder, caption, ivalue, csortorder, typename FROM lookup WHERE (typename = 'ICON') ORDER BY caption">
    </asp:SqlDataSource>
   <asp:SqlDataSource ID="cus11" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust.* FROM cust"> </asp:SqlDataSource>
   <asp:SqlDataSource ID="dsteacher" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT distinct teacher fROM dropdowninfo WHERE (schcode =@schcode ) and grade=@grade">
     <SelectParameters>
       <asp:SessionParameter DefaultValue="038752" Name="schcode" 
                SessionField="schcode" Type="String" />
       <asp:ControlParameter ControlID="ddlgrade" DefaultValue="0" Name="grade" 
                PropertyName="SelectedValue" />
     </SelectParameters>
   </asp:SqlDataSource>    

<asp:SqlDataSource ID="dsgrade" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT DISTINCT schcode, grade FROM dropdowninfo WHERE (schcode = @schcode) ORDER BY grade">
  <SelectParameters>
            <asp:SessionParameter DefaultValue="038752" Name="schcode" 
                SessionField="schcode" Type="String" />
        </SelectParameters>
  </asp:SqlDataSource>
<asp:SqlDataSource ID="dsorders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        InsertCommand="INSERT INTO temporders(grade, booktype, teacher, perstext1, perstext2, studentfname, emailaddress, schcode, itemamount, itemqty, schinvoicenumber, orderid, orddate, itemtotal, studentlname, schname, parentpayment, sname, saddress, scity, sstate, szip, yr, icon1, icon2, icon3, icon4, josicon1, josicon2, josicon3, josicon4) VALUES (@grade, @booktype, @teacher, @perstext1, @perstext2, @studentfname, @emailaddress, @schcode, @itemamount, @itemqty, @schinvoicenumber, @orderid, NOW(), @itemtotal, @studentlname, @schname, @parentpayment, @sname, @saddress, @scity, @sstate, @szip, @yr, @icon1, @icon2, @icon3, @icon4, @josicon1, @josicon2, @josicon3, @josicon4)" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT temporders.id, temporders.grade, temporders.booktype, temporders.teacher, temporders.perstext1, temporders.perstext2, temporders.studentfname, temporders.emailaddress, temporders.schcode, temporders.itemamount, temporders.itemqty, temporders.schinvoicenumber, temporders.orderid, temporders.orddate, temporders.paytype, temporders.itemtotal, temporders.studentlname, temporders.schname, temporders.parentpayment, temporders.yr, temporders.sname, temporders.saddress, temporders.scity, temporders.szip, concat_ws(',', lookup.caption, lookup_1.caption) AS cap, concat_ws(',', lookup_3.caption, lookup_2.caption) AS cap1 FROM temporders LEFT OUTER JOIN lookup lookup_2 ON temporders.icon4 = lookup_2.ivalue LEFT OUTER JOIN lookup lookup_3 ON temporders.icon3 = lookup_3.ivalue LEFT OUTER JOIN lookup lookup_1 ON temporders.icon2 = lookup_1.ivalue LEFT OUTER JOIN lookup ON temporders.icon1 = lookup.ivalue WHERE (temporders.orderid = @orderid) ORDER BY temporders.id DESC" 
        DeleteCommand="DELETE FROM temporders WHERE (id = @id)">
  <DeleteParameters>
            <asp:ControlParameter ControlID="lvItems" Name="id" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="orderid" SessionField="orderid" />
        </SelectParameters>
  </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsmisc" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mbcConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:mbcConnectionString.ProviderName %>"></asp:SqlDataSource>
    <span class="col-md-11 formCont" style="height: 38px">
    </span></div>

</form>
</div>
<div class="page_footer"> Memory Book Company • © Copyright 2015 • All rights reserved</div>

    <script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-355460-1']);
  _gaq.push(['_setDomainName', 'memorybook.com']);
  _gaq.push(['_trackPageview']);

  (function () {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
 </script>
     <script type="text/javascript">
         function Validate() {
             var isValid = false;
             isValid = Page_ClientValidate('s1');
             if (isValid) {
                 isValid = Page_ClientValidate('s2');
             }
             if (isValid) {
                 isValid = Page_ClientValidate('Group3');
             }
             return isValid;
         }
    </script>
<!-- Start of Async HubSpot Analytics Code 
    <script type="text/javascript">
        (function(d,s,i,r) {
            if (d.getElementById(i)){return;}
            var n=d.createElement(s),e=d.getElementsByTagName(s)[0];
            n.id=i;n.src='//js.hubspot.com/analytics/'+(Math.ceil(new Date()/r)*r)+'/306026.js';
            e.parentNode.insertBefore(n, e);
        })(document,"script","hs-analytics",300000);
    </script>-->
<!-- End of Async HubSpot Analytics Code -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="new_look/bootstrap.min.js"></script>
    <script src="new_look/docs.min.js"></script>
    <script src="dist/js/respond.min.js"></script>
    
</body>
</html>
