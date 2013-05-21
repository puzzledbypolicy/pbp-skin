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
                <div class="influence ti_el">
                </div>
                <div id="titleText">
                    Ενημερώστε τους φορείς λήψης αποφάσεων ως προς το ποιες πρακτικές μετανάστευσης <br />θα πρέπει να υιοθετηθούν και γιατί! Αναμειχθείτε τώρα!</div>
                <div id="tools">
                    <div class="understand un_el">
                        <div class="boxText">
                            Συμφωνείτε με την τρέχουσα πολιτική μετανάστευσης της χώρας σας? Πατήστε "Έναρξη" για να δείτε πώς συσχετίζονται οι απόψεις σας με εκείνες της κυβέρνησης.</div>
							<div class="cleared"> </div>
                        <a href="/dnn6/el-gr/policyprofiler.aspx" class="start st_el"><span>&nbsp;</span></a>
                    </div>
                    <div class="discuss di_el">
                        <div class="boxText">
                            Γίνετε μέρος του δημοκρατικού διαλόγου για τα θέματα μετανάστευσης επικοινωνώντας, συζητώντας και μοιράζοντας τις ιδέες σας με άλλους πολίτες.</div>
							<div class="cleared"> </div>
                        <a href="/dnn6/el-GR/uDebate.aspx" class="start st_el"><span>&nbsp;</span></a>
                    </div>
                    <div class="share sh_el">
                        <div class="boxText">
                            Ενημερώστε τους φίλους σας για το Puzzled by Policy και μοιραστείτε τη μοναδική εφαρμογή μας!</div>
							<div class="cleared"> </div>
                        <a href="#next" class="start st_el"><span>&nbsp;</span></a>
                    </div>
                </div>
                <div class="cleared">
                </div>
                <div id="follow">
                    <div class="followText fol_en">
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
        <a href="/el-gr/contact.aspx">Επικοινωνία</a> |
        <a href="/el-gr/terms.aspx">Όροι Χρήσης</a> | 
		<a href="/el-gr/privacy.aspx">Δήλωση Προστασίας Απορρήτου</a> | 
		<a href="/el-gr/legaldisclaimer.aspx">Νομική Αποποίηση</a> |
		<a href="/el-gr/faq.aspx">Συχνές Ερωτήσεις</a>
    </div>
    <div id="footerText">
        Αυτό το έργο συγχρηματοδοτείται από την ΕΕ στο πλαίσιο του ICT Policy Support Programme. Αυτός ο ιστότοπος αντανακλά μόνο τις απόψεις της Κοινοπραξίας και η Επιτροπή δε μπορεί να φέρει ευθύνη για καμία πιθανή χρήση της πληροφορίας που περιλαμβάνεται εδώ.
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
