<?php
/**
 * $ID: wiki.php
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
require(DIR_WS_LANGUAGES . $language . '/' . 'wiki.php');
require(DIR_WS_INCLUDES . 'header.php');
?>
        <div id="container">
			<div id="wiki_iframe">
				<iframe onload="iFrameHeight()"	id="wikiIframe"
				        name="iframe"
				        src="http://debpbx.org/wiki"
				        width="974px"
				        height="1610px"
				        scrolling="auto"
				        align="top"
				        frameborder="0"
				        class="XautoHeight">
				        Esta opción no funcionará correctamente. Lamentablemente su navegador no tiene soporte para Inline Frames
				</iframe>
			</div>
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
