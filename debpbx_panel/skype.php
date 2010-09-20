<?php
/**
 * $ID: skype.php
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
require(DIR_WS_LANGUAGES . $language . '/' . 'freepbx.php');
require(DIR_WS_INCLUDES . 'header.php');
?>
        <div id="container">
			<div id="vnc">

<APPLET CODE="../includes/library/tightvnc-java/VncViewer.class" ARCHIVE="../includes/library/tightvnc-java/tightvncviewer-1.2.7.jar"
WIDTH="950" HEIGHT="800">
<PARAM NAME="PORT" VALUE="5901">
<PARAM NAME="Scaling factor" VALUE="50">
<param name="HOST" value="172.16.1.6">




			</div>
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
