<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ARTMENU" Src="~/DesktopModules/ArtMenuSO/ArtMenuSO.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/admin/Skins/terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/admin/Skins/Text.ascx" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Page.ClientScript.RegisterClientScriptInclude("script.js", Me.TemplateSourceDirectory & "/script.js")
    End Sub
    
    Private Function CollapseSidebars() As String
        Return String.Empty
    End Function
</script>

<div id="art-page-background-simple-gradient">
    <div id="art-page-background-gradient"></div>
</div>
<div id="art-main">
<div class="art-Sheet">
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
        <dnn:ARTMENU ID="ArtMenu1" ShowHiddenTabs="False" ShowAdminTabs="True" ShowDeletedTabs="False" ShowLoginTab="True" ShowUserTab="True" runat="server" /><div class="art-contentLayout">
<div class="art-content<%= CollapseSidebars() %>">
<div class="art-Post">
    <div class="art-Post-tl"></div>
    <div class="art-Post-tr"></div>
    <div class="art-Post-bl"></div>
    <div class="art-Post-br"></div>
    <div class="art-Post-tc"></div>
    <div class="art-Post-bc"></div>
    <div class="art-Post-cl"></div>
    <div class="art-Post-cr"></div>
    <div class="art-Post-cc"></div>
    <div class="art-Post-body">
<div class="art-Post-inner art-article">
<div class="art-PostContent">
<dnn:TEXT runat="server" id="dnnTEXT" Text="You are here >" ResourceKey="Breadcrumb" /> <dnn:BREADCRUMB ID="dnnBREADCRUMB" RootLevel="0" Separator="&nbsp;>&nbsp;" runat="server" />
</div>
<div class="cleared"></div>

</div>

		<div class="cleared"></div>
    </div>
</div>
<div id="ContentPane" runat="server"></div>
</div>

</div>
<div class="cleared"></div>
<div class="art-Footer">
    <div class="art-Footer-inner">
        <div class="art-Footer-text">
<p><dnn:TERMS runat="server" ID="dnnTerms" />
    | <dnn:PRIVACY ID="dnnPrivacy" runat="server" /><br />
    <dnn:COPYRIGHT runat="server" id="dnnCopyright" /></p>

        </div>
    </div>
    <div class="art-Footer-background"></div>
</div>

		<div class="cleared"></div>
    </div>
</div>
<div class="cleared"></div>
<p class="art-page-footer"></p>
</div>


<dnn:STYLES runat="server" ID="style" Name="style" StyleSheet="style-admin.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE6" Name="styleIE6" Condition="IE 6" StyleSheet="style.ie6.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE7" Name="styleIE7" Condition="IE 7" StyleSheet="style.ie7.css" UseSkinPath="true" />

