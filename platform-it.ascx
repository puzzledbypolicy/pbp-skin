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
                <div class="influence ti_it">
                </div>
                <div id="titleText">
                    Fai sapere a chi decide cosa bisognerebbe fare riguardo l'immigrazione e perche! Lasciati coinvolgere!</div>
                <div id="tools">
                    <div class="understand un_it">
                        <div class="boxText">
                            Sei d'accordo con la legge sull'immigrazione del tuo Paese? Clicca su Inizia e verifica quanto il tuo punto di vista corrisponde a quello del governo</div>
							<div class="cleared"> </div>
                        <a href="/it-it/policyprofiler.aspx" class="start st_it"><span>&nbsp;</span></a>
                    </div>
                    <div class="discuss di_it">
                        <div class="boxText">
                            Entra a far parte del confronto democratico: comunica, discuti e condividi le tue idee sull'immigrazione con gli altri cittadini.</div>
							<div class="cleared"> </div>
                        <a href="/it-IT/uDebate.aspx" class="start st_it"><span>&nbsp;</span></a>
                    </div>
                    <div class="share sh_it">
                        <div class="boxText">
                            Fai conoscere Puzzled by Policy ai tuoi amici e condividi la nostra App!</div>
							<div class="cleared"> </div>
                        <a href="#next" class="start st_it"><span>&nbsp;</span></a>
                    </div>
                </div>
                <div class="cleared">
                </div>
                <div id="follow">
                    <div class="followText fol_it">
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
        <a href="/it-it/contact.aspx">Contattaci</a> |
        <a href="/it-it/terms.aspx">Norme e condizioni d'uso</a> | 
		<a href="/it-it/privacy.aspx">Privacy</a> | 
		<a href="/it-it/legaldisclaimer.aspx">Disclaimer Legale</a> |
		<a href="/it-it/faq.aspx">FAQ</a>
    </div>
    <div id="footerText">
        Questo progetto e cofinanziato dalla Commissione Europea nell'ambito dell' ICT Policy Support Programme. Questo portale rispecchia il punto di vista solamente del Consorzio, la Commissione non puo essere considerata responsabile per alcun uso che possa essere fatto delle informazioni qui contenute.
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
