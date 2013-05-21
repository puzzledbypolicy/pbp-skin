<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
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

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Page.ClientScript.RegisterClientScriptInclude("script.js", Me.TemplateSourceDirectory & "/script.js")
    End Sub    
   
    Private Function CollapseSidebars() As String
        Dim sb1 As Control = Me.FindControl("sidebar1")
        Dim sb2 As Control = Me.FindControl("sidebar2")
        
        If Not IsNothing(sb1) And Not IsNothing(sb2) Then
            If sb1.Controls.Count > 0 And sb2.Controls.Count = 0 Then
                Return "-sidebar2"
            ElseIf sb1.Controls.Count = 0 And sb2.Controls.Count > 0 Then
                Return "-sidebar1"
            ElseIf sb1.Controls.Count = 0 And sb2.Controls.Count = 0 Then
                Return "-wide"
            End If
        ElseIf Not IsNothing(sb1) And IsNothing(sb2) Then
            If sb1.Controls.Count = 0 Then
                Return "-wide"
            End If
        ElseIf IsNothing(sb2) And Not IsNothing(sb2) Then
            If sb2.Controls.Count = 0 Then
                Return "-wide"
            End If
        End If
        Return String.Empty
    End Function
</script>

<div id="homepage-background-simple-gradient">
    <div id="art-page-background-gradient"><div id="logoLink">
            <a href="/dnn6/home.aspx" class="homeLink">&nbsp;</a></div></div>
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
    <div class="art-Sheet-tl"></div>
    <div class="art-Sheet-tr"></div>
    <div class="art-Sheet-bl"></div>
    <div class="art-Sheet-br"></div>
    <div class="art-Sheet-tc"></div>
    <div class="art-Sheet-bc"></div>
    <div class="art-Sheet-cl"></div>
    <div class="art-Sheet-cr"></div>
    <div class="art-Sheet-cc"></div>
    <div class="art-Sheet-body">
        <div id="ControlPanel" runat="server"></div>
        <div id="TopPane" visible="false" runat="server"></div>
		<div style="height:10px"></div>
		<div class="art-Sheet-Cup"></div>
      <table class="position" width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr valign="top">
          <td width="33%" id="Top1" runat="server"></td>
          <td width="33%" id="Top2" runat="server"></td>
          <td id="Top3" runat="server"></td>
        </tr>
      </table><div class="art-contentLayout">
<div class="art-content<%= CollapseSidebars() %>">
<div id="Banner1" visible="false" runat="server"></div>
<table class="position" width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr valign="top">
          <td width="50%" id="User1" runat="server"></td>
          <td id="User2" runat="server"></td>
        </tr>
      </table>
<div id="Banner2" visible="false" runat="server"></div>
<div id="ContentPane" runat="server" ></div>
<div id="Banner3" visible="false" runat="server"></div>
<table class="position" width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr valign="top">
          <td width="50%" id="User3" runat="server"></td>
          <td id="User4" runat="server"></td>
        </tr>
      </table>
<div id="Banner4" visible="false" runat="server"></div>
</div>
<div class="art-sidebar1">
<div id="sidebar1" visible="true" runat="server"></div>
</div>

</div>
<div class="cleared"></div>
<table class="position" width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr valign="top">
          <td width="33%" id="Bottom1" runat="server"></td>
          <td width="33%" id="Bottom2" runat="server"></td>
          <td id="Bottom3" runat="server"></td>
        </tr>
      </table>
      <div id="BottomPane" visible="false" runat="server"></div><div class="art-Footer">
</div>

	<div class="cleared"></div>
 
<div id="uDebateLinkDiv" class="leftSlider" >
<div id="uDebateProposal" ></div>
<div id="closeLinkDiv" onclick="javascript:jQuery(this).parent().hide();"></div>	
</div>

<div id="footer">
    <% If (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("el-GR")) Then%>
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
    <% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("it-IT")) Then%>
    <div class="footerLinks">
        <a href="/it-it/contact.aspx">Contattaci</a> |
        <a href="/it-it/terms.aspx">Norme e condizioni d'uso</a> | 
		<a href="/it-it/privacy.aspx">Privacy</a> | 
		<a href="/it-it/legaldisclaimer.aspx">Disclaimer Legale</a> |
		<a href="/it-it/faq.aspx">FAQ</a>
    </div>
	<div id="footerText">
        Questo progetto è cofinanziato dalla Commissione Europea nell'ambito dell' ICT Policy Support Programme. Questo portale rispecchia il punto di vista solamente del Consorzio, la Commissione non può essere considerata responsabile per alcun uso che possa essere fatto delle informazioni qui contenute.
    </div>
	<% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("es-ES")) Then%>
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
    <% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("hu-HU")) Then%>
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
    <% Else%>
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
    <% End If%>
    <div id="footerCopy">
        &copy; 2011 Puzzled by Policy Project.
    </div>
    <div id="footerFlag">
    </div>
</div>	
	
	</div>
</div>
</div>



<!--
<div class="art-Footer2">&copy;
2010 Puzzled by Policy Project
<div id="login_style" class="user"> 
        <dnn:LOGIN runat="server" ID="dnnLOGIN" CssClass="user" />
</div>

<div id="bottom-right-footer"><div id="eu-flag"></div>This project is co-funded by the EC under the FP7 Programme.<br /> This website reflects the views only of the Consortium, and<br /> the Commission cannot be held responsible for any use which<br /> may be made of the information contained herein

</div>-->
</div>
<dnn:STYLES runat="server" ID="style" Name="style" StyleSheet="style.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE6" Name="styleIE6" Condition="IE 6" StyleSheet="style.ie6.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE7" Name="styleIE7" Condition="IE 7" StyleSheet="style.ie7.css" UseSkinPath="true" />

