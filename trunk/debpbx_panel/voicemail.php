<?php
/**
 * $ID: voicemail.php
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
require(DIR_WS_LANGUAGES . $language . '/' . 'voicemail.php');
require(DIR_WS_INCLUDES . 'header.php');
?>
        <div id="container">
                        <div id="recordings_iframe">
				<iframe onload="iFrameHeight()" id="recordingsIframe"
                                        name="iframe"
                                        src="../recordings"
                                        width="974px"
                                        height="980px"
                                        scrolling="auto"
                                        align="top"
                                        frameborder="0"
                                        class="XautoHeight">
                                        Esta opción no funcionará correctamente. Lamentablemente su navegador no tiene sopor$
                                </iframe>
                        </div>
$_SERVER['HTTP_REFERRER'
echo $_SERVER['HTTP_REFERRER'
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
