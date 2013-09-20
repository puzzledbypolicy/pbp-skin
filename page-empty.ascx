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
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>


<div id="TopestPane" style="position:fixed;top:0;right:0;z-index:9999" visible="false" runat="server"></div>
<div id="homepage-background-simple-gradient">
    <div id="art-page-background-gradient"><div id="logoLink">
            <a href="/<%=System.Threading.Thread.CurrentThread.CurrentCulture.Name %>/home.aspx" class="homeLink">&nbsp;</a></div></div>
</div>
<div id="art-main">
<div class="art-Sheet">
<div class="art-nav">
			<dnn:MENU MenuStyle="DNNMega" runat="server"></dnn:MENU>
	<div id="getInvolved">
	<a href="/<%=System.Threading.Thread.CurrentThread.CurrentCulture.Name %>/howtogetinvolved.aspx">
	<% If (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("el-GR")) Then%>
	Πώς να συμμετέχετε
	<% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("it-IT")) Then%>
	Come partecipare
	<% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("es-ES")) Then%>
	Cómo Participar
	<% ElseIf (System.Threading.Thread.CurrentThread.CurrentCulture.Name.Equals("hu-HU")) Then%>
	Hogyan kapcsolódhat be?
	<% Else%>
	How to get involved
	<% End If%>
	</a></div>
	<div id="flags">
                <dnn:language runat="server" id="dnnLANGUAGE" showmenu="False" showlinks="True"  ItemTemplate='<a href="[URL]" class="Language" title="[CULTURE:NATIVENAME]"><span class="Language[SELECTED]">[CULTURE:TWOLETTERISOCODE]</span></a>' />
   	</div>
    <div class="l">
    </div>
    <div class="r">
    </div>
	<%If(Request.IsAuthenticated) then %>	
			<dnn:login runat="server" id="LOGIN" cssclass="loginLink" visible="True" />
           <div id="userDiv">
                <asp:Label ID="Welcomelbl" runat="server" resourcekey="Welcome">dd</asp:Label>
                <dnn:user runat="server" id="USER" visible="True"  CssClass="userLink"/>
            </div>
            
            <img src="" alt="facebook" class="profilePicture"/>
			<div id="fb-root"></div>
			
			<script type="text/javascript">
jQuery(document).ready(function () {
    window.fbAsyncInit = function () {
        FB.init({
            appId: '274597442564126', // App ID
            channelURL: 'http://join.puzzledbypolicy.eu', // Channel File
            status: true, // check login status
            cookie: true, // enable cookies to allow the server to access the session
            oauth: true, // enable OAuth 2.0
            xfbml: true  // parse XFBML
        });

        // Additional initialization code here

        //            FB.api('/me', function (response) {
        //                var imglink = "http://graph.facebook.com/" + response.id + "/picture";
        //                alert("Name: " + response.name + "\nFirst name: " + response.first_name + "ID: " + response.id);
        //               
        //            });

        // FB.getLoginStatus(function (response) { alert("FB.getLoginStatus=" + response.status) });



        FB.getLoginStatus(function (response) {
            if (response.authResponse) {
                //alert("FB.getLoginStatus=" + response.status);
                FB.api('/me', function (response) {

                    // alert('Your name is ' + response.name);
                    //jQuery('.mini-profile-name').html(response.name);
                    var imglink = "http://graph.facebook.com/" + response.id + "/picture";
                    jQuery('.profilePicture').attr('src', imglink);
					jQuery('.profilePicture').show();
                });
                FB.api('/me/friends/?fields=installed', function (response) {
                    //alert(response.data);
                    var resp = response.data;
                    var size = resp.length;
                    var MAX_IMAGES = 6;
                    var currentImage = 1;

//                    for (var key in resp) {
//                        //jQuery('.facebook-output').html(jQuery('.facebook-output').html() + resp[key].id);
//                        if (currentImage <= 6) {
//                           // if (resp[key].installed != null) {
//                                var imglink2 = "http://graph.facebook.com/" + resp[key].id + "/picture";
//                                var newImg = "<img src='" + imglink2 + "' alt='' />";
//                                jQuery('.facebook-output').html(jQuery('.facebook-output').html() + newImg + "<br/>");
//                               // currentImage++;
//                          //  }
//                        }
//                    }
                    for (var key in resp) {
                        //jQuery('.facebook-output').html(jQuery('.facebook-output').html() + resp[key].id);
                        if (currentImage <= 6) {
                            if (resp[key].installed != null) {
                                var imglink2 = "http://graph.facebook.com/" + resp[key].id + "/picture";
                                var newImg = "<img src='" + imglink2 + "' alt='' />";
                                jQuery('.facebook-output').html(jQuery('.facebook-output').html() + newImg);
                                currentImage++;
                            }
                        }
                    }


                });
                // logged in and connected user, someone you know
            } else {
                // no user session available, someone you dont know
            }
        });


    };

});


// Load the SDK Asynchronously
(function (d) {
    var js, id = 'facebook-jssdk'; if (d.getElementById(id)) { return; }
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    d.getElementsByTagName('head')[0].appendChild(js);
} (document));

</script>
			
<% Else %> <dnn:LOGIN runat="server" ID="LOGIN1" CssClass="loginLink" Visible="False"/>	
 <% End If%>
				
</div>

    <div class="art-Sheet-body">
        <div id="ControlPanel" runat="server"></div>
        <div id="TopPane" visible="false" runat="server"></div>
			
		<div style="height:10px"></div>
	    <div class="art-contentLayout">
			<div id="ContentPane" runat="server" ></div>
	    </div>
       <div class="cleared"></div>
      <div id="BottomPane" visible="false" runat="server"></div><div class="art-Footer">
       </div>
	<div class="cleared"></div> 	
	</div>
</div>
</div>

<dnn:STYLES runat="server" ID="style" Name="style" StyleSheet="style.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE6" Name="styleIE6" Condition="IE 6" StyleSheet="style.ie6.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE7" Name="styleIE7" Condition="IE 7" StyleSheet="style.ie7.css" UseSkinPath="true" />

