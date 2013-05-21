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
                <div class="influence ti_es">
                </div>
                <div id="titleText">
                    Deje que los políticos conozcan sus propuestas sobre las políticas de inmigración. Participe ahora!</div>
                <div id="tools">
                    <div class="understand un_es">
                        <div class="boxText">
                            Está de acuerdo con las políticas actuales de inmigración? Haga clic en "COMENZAR" para ver sus puntos de vista sobre la inmigración en comparación con las políticas del gobierno.</div>
							<div class="cleared"> </div>
                        <a href="/es-es/policyprofiler.aspx" class="start st_es"><span>&nbsp;</span></a>
                    </div>
                    <div class="discuss di_es">
                        <div class="boxText">
                            Únase con otros participantes al debate social sobre la inmigración.</div>
							<div class="cleared"> </div>
                        <a href="/es-es/uDebate.aspx" class="start st_es"><span>&nbsp;</span></a>
                    </div>
                    <div class="share sh_es">
                        <div class="boxText">
                            Comparta con sus amigos esta iniciativa y use nuestra aplicación!</div>
							<div class="cleared"> </div>
                        <a href="#next" class="start st_es"><span>&nbsp;</span></a>
                    </div>
                </div>
                <div class="cleared">
                </div>
                <div id="follow">
                    <div class="followText fol_es">
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
        <a href="/es-es/contact.aspx">Contáctenos</a> |
        <a href="/es-es/terms.aspx">Términos y Condiciones</a> | 
		<a href="/es-es/privacy.aspx">Política de Privacidad</a> | 
		<a href="/es-es/legaldisclaimer.aspx">Aviso Legal</a> |
		<a href="/es-es/faq.aspx">Preguntas más Frecuentes</a>
    </div>
    <div id="footerText">
        Este proyecto está co-financiado por la Comisión Europea a través del Programa de Apoyo a las Políticas TIC. Este portal es responsabilidad exlusiva del Consorcio, y la Comisión Europea no se hace responsable del uso que se pudiera hacer de la información aquí contenida.
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
