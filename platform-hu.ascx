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
                <div class="influence ti_hu">
                </div>
                <div id="titleText">
                    Bevándorlási szabályokat javasolhat a döntéshozók számára, és érvelhet mellettük. Kezdje most!</div>
                <div id="tools">
                    <div class="understand un_hu">
                        <div class="boxText">
                            Egyetért hazája jelenlegi bevándorláspolitikájával? Hasonlítsa össze saját nézeteit a fő véleményformáló szervezetekével.</div>
							<div class="cleared"> </div>
                        <a href="/hu-hu/policyprofiler.aspx" class="start st_hu"><span>&nbsp;</span></a>
                    </div>
                    <div class="discuss di_hu">
                        <div class="boxText">
                            Demokratikus párbeszéd keretében fejtse ki és ossza meg bevándorlással kapcsolatos elgondolásait a többi állampolgárral.</div>
							<div class="cleared"> </div>
                        <a href="/hu-Hu/uDebate.aspx" class="start st_hu"><span>&nbsp;</span></a>
                    </div>
                    <div class="share sh_hu">
                        <div class="boxText">
                            Mutassa be ismerőseinek a Puzzled by Policy-t és a kapcsolódó alkalmazásunkat!</div>
							<div class="cleared"> </div>
                        <a href="#next" class="start st_hu"><span>&nbsp;</span></a>
                    </div>
                </div>
                <div class="cleared">
                </div>
                <div id="follow">
                    <div class="followText fol_hu">
                    </div>
                    <div id="followLinks">
                        <a href="http://www.facebook.com/pages/Puzzled-by-Policy/167052726656341">
                            <img src="<%= SkinPath %>images/fbook.png" /></a> 
						<a href="http://www.linkedin.com/groups?about=&gid=3750508&trk=anet_ug_grppr">
                            <img src="<%= SkinPath %>images/linkedin.png" /></a> 
						<a href="http://twitter.com/#!/puzzledbypolicy">
                            <img src="<%= SkinPath %>images/twitter.png" /></a> 
						<a href="http://www.flickr.com/photos/puzzledbypolicy/">
                            <img src="<%= SkinPath %>images/flickr.png" /></a> 
						<a href="http://www.youtube.com/user/PuzzledbyPolicy">
                            <img src="<%= SkinPath %>images/youtube.png" /></a>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
<div id="footer">
    <div class="footerLinks">
        <a href="/hu-hu/contact.aspx">Kapcsolat</a> |
        <a href="/hu-hu/terms.aspx">Felhasználási feltételek</a> | 
		<a href="/hu-hu/privacy.aspx">Adatvédelmi nyilatkozat</a> | 
		<a href="/hu-hu/legaldisclaimer.aspx">Jogi nyilatkozat</a> |
		<a href="/hu-hu/faq.aspx">GyIK</a>
    </div>
    <div id="footerText">
        A projekt az Európai Bizottság társfinanszírozásában, az ICT Policy Support Programme keretében valósul meg. A portálon megjelenő tartalmak csak a megvalósítást végző konzorcium véleményét tükrözik; a Bizottság nem tehető felelőssé azok bárminemű felhasználásáért.
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
