<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/admin/Skins/terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>

<div id="homepage-background-simple-gradient">
    <div id="art-page-background-gradient"><div id="logoLink">
            <a href="/" class="homeLink">&nbsp;</a></div></div>
</div>
<div id="art-main">
    <div class="art-Sheet">
        <div class="art-nav">
	<div id="flags">
	<dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" />	
   	</div>
    <div class="l">
    </div>
    <div class="r">
    </div>
	<%If(Request.IsAuthenticated) then %>
           <dnn:LOGIN runat="server" ID="LOGIN" CssClass="loginLink" Visible="True"/>		   
<% Else %> <dnn:LOGIN runat="server" ID="LOGIN1" CssClass="loginLink" Visible="False"/>	
 <% End If%>
				
</div>

        <div class="art-Sheet-body">
            <div id="ControlPanel" runat="server">
            </div>
            <div id="TopPane" visible="false" runat="server">
            </div>
            <div style="height: 10px">
            </div>
			<div id="ContentPane" runat="server">
            </div>
            <div id="homeBackground">
                <div class="influence ti_en">
                </div>
                <div id="titleText">
                    Let decision makers know what immigration practises should be adopted and why! Be
                    involved now!</div>
                <div id="tools">
                    <div class="understand un_en">
                        <div class="boxText">
                            Do you agree with your country's current immigration policy? Click start below to
                            see how your views match those of government.</div> 
							<div class="cleared">  </div>
                        <a href="/dnn6/en-gb/policyprofiler.aspx" class="start st_en"><span>&nbsp;</span></a>
                    </div>
                    <div class="discuss di_en">
                        <div class="boxText">
                            Be part of the democratic dialogue by communicating, discussing and sharing your
                            ideas with other citizens about immigration issues.</div> 
							<div class="cleared"> </div>
                        <a href="/dnn6/en-gb/uDebate.aspx" class="start st_en"><span>&nbsp;</span></a>
                    </div>
                    <div class="share sh_en">
                        <div class="boxText">
                            Tell your friends about Puzzled by Policy and share our unique App!</div> 
							<div class="cleared"> </div>
                        <a href="#next" class="start st_en"><span>&nbsp;</span></a>
                    </div>
                </div>
                <div class="cleared">
                </div>
                <div id="follow">
                    <div class="followText fol_en">
                    </div>
                    <div id="followLinks">
                        <a href="http://www.facebook.com/pages/Puzzled-by-Policy/167052726656341">
                            <img src="<%=SkinPath %>images/fbook.png" /></a> 
						<a href="http://www.linkedin.com/groups?about=&gid=3750508&trk=anet_ug_grppr">
                            <img src="<%=SkinPath %>images/linkedin.png" /></a> 
						<a href="http://twitter.com/#!/puzzledbypolicy">
                            <img src="<%=SkinPath %>images/twitter.png" /></a> 
						<a href="http://www.flickr.com/photos/puzzledbypolicy/">
                            <img src="<%=SkinPath %>images/flickr.png" /></a> 
						<a href="http://www.youtube.com/user/PuzzledbyPolicy">
                            <img src="<%=SkinPath %>images/youtube.png" /></a>
                    </div>
                </div>
            </div>            
        </div>
    </div>
</div>
<div id="footer">
    <div class="footerLinks">
        <a href="/en-gb/contact.aspx">Contact us</a> | 
		<a href="/en-gb/terms.aspx">Terms & Conditions</a> | 
		<a href="/en-gb/privacy.aspx">Privacy Statement</a> | 
		<a href="/en-gb/legaldisclaimer.aspx">Legal Disclaimer</a> | 
		<a href="/en-gb/faq.aspx">FAQ</a>
    </div>
    <div id="footerText">
        This project is co-funded by the EC under the ICT Policy Support Programme. This
        portal reflects the views only of the Consortium, and the Commission cannot be held
        responsible for any use which may be made of the information contained herein.
    </div>
	<div id="footerCopy">
        &copy; 2010 Puzzled by Policy Project. Created by ATC S.A.
    </div>
    <div id="footerFlag">
    </div>
</div>

</div>
<dnn:STYLES runat="server" ID="style" Name="style" StyleSheet="style.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE6" Name="styleIE6" Condition="IE 6" StyleSheet="style.ie6.css"
    UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE7" Name="styleIE7" Condition="IE 7" StyleSheet="style.ie7.css"
    UseSkinPath="true" />
