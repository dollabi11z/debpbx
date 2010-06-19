<?php
/**
 * $ID: chat.php
 * 
 * DebPBX Panel Control v0.1 
 *
 * DebPBX is a platform of free software (under GPL license) based on Asterisk that
 * provides functionality of a telephone exchange (PBX).
 * Like any PBX, you can connect a number of phones to make calls to each other
 * and even connect to a VoIP provider or to an ISDN (ISDN) basic and primary.
 *
 * @author Federico Pereira
 * @copyright  Copyright (c) 2008-2010 OpenTecnologic & DebPBX
 * @content-type: text/plain; charset=UTF-8
 * @license    http://www.gnu.org/licenses/gpl-2.0.html
 */
include('includes/application_top.php');
$language=idenLang();
require(DIR_WS_LANGUAGES . $language . '/' . 'chat.php');
require(DIR_WS_INCLUDES . 'header.php');
?>

        <div id="container">
		<script type="text/javascript" src="includes/library/lightirc/swfobject.js"></script>
			<div id="chat">
				<div id="lightIRC" style="height:100%; text-align:center;">
				<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
				</div>

				<script type="text/javascript">
					/* lightIRC has a lot of customization parameters. See the complete list here: http://www.lightirc.com/faq.html#parameters */
					var params = {};
    					/* The host where lightIRC should connect to */
    					params.host               = "chat.universochat.net";
    					/* Maybe you need to change this parameter dependent on where you run your flash policy daemon */
    					// params.policyPort         = 843;
    					/* Language of the user interface
    					en, de, fr, es, tr, hu, nl, se, fi, ee, ro, sr_cyr, sr_lat, al, pl, br, gr, it, bg, cat */
    					params.language           = "es";
    					/* Show a popup to select a nickname? */
    					params.nickselect         = "yes";
   					/* Predefined nickname (for the popup) */
    					params.nick               = "guest_%25";
    					/* Channel to join after connecting */
    					params.autojoin           = "#debpbx";
    					/* Webcam feature - only possible when connecting to lightirc.com */
    					params.webcam           = "yes";
					/* miselaneas */
					params.soundAlerts = "yes";
					/* params.wmode = "transparent"; */		
					swfobject.embedSWF("includes/library/lightirc/lightIRC.swf", "lightIRC", "100%", "100%", "9.0.0", null, params, null, {"wmode":"transparent"} );
				</script>
			</div>
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
