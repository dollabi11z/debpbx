<?php
/**
 * $ID: index.php
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
require(DIR_WS_LANGUAGES . $language . '/' . 'index.php');
require(DIR_WS_INCLUDES . 'header.php');
?>
	<div id="container_left">
                <div id="mbox">
                        <div id="mbox_top"><div class="title_about"><h3><?php echo TITLE_ABOUT; ?></h3></div></div>
                        <div id="mbox_container">
				<div class="text gris about"><?php echo ABOUT_TEXT; ?></div>
				<div id="audioplayer">
					<object type="application/x-shockwave-flash" data="includes/library/js/audioplayer/player.swf" id="audioplayer1" height="24" width="250">
					<param name="movie" value="includes/library/js/audioplayer/player.swf">
					<param name="FlashVars" value="bg=0xf8f8f8&amp;leftbg=0xeeeeee&amp;lefticon=0x666666&amp;rightbg=0xcccccc&amp;rightbghover=0x999999&amp;righticon=0x666666&amp;righticonhover=0xffffff&amp;text=0x666666&amp;slider=0x666666&amp;track=0xFFFFFF&amp;border=0x666666&amp;loader=0xf8f8f8&amp;loop=no&amp;playerID=1&amp;soundFile=/includes/media/mp3/index_about_<?php echo $language; ?>.mp3">
					<param name="quality" value="high">
					<param name="menu" value="false">
					<param name="wmode" value="transparent">
					</object>
				</div>
                        </div>
                        <div id="mbox_bot"></div>
                </div>
		<div id="smoothgallery">
		<script type="text/javascript">
			      	function startGallery() {
				var myGallery = new gallery($('myGallery'), {
				timed: false,
				defaultTransition: "continuoushorizontal"
				});
				}
		window.addEvent('domready', startGallery);
		</script>
		
		<div class="content">
			<div id="myGallery">
				<div class="imageElement">
					<h3>Embebide FreePBX</h3>
					<p>Item 1 Description</p>
					<a href="#" title="open image" class="open"></a>
					<img src="skin/default/smoothgallery/banner/banner_freepbx.png" class="full" />
					<img src="skin/default/smoothgallery/banner/banner_freepbx_mini.png" class="thumbnail" />
				</div>
				<div class="imageElement">
					<h3>Item 2 Title</h3>
					<p>Item 2 Description</p>
					<a href="#" title="open image" class="open"></a>
					<img src="skin/default/smoothgallery/images/brugges2006/2.jpg" class="full" />
					<img src="skin/default/smoothgallery/images/brugges2006/2-mini.jpg" class="thumbnail" />
				</div>
				
				
			</div>
		</div>
			</div>
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
