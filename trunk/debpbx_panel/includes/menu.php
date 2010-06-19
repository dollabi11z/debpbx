<? /**
 * $ID: menu.php
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
?>
<!-- # beginning menu -->
<ul class="dropdown dropdown-horizontal">
	<li><a href="./" class="dir"><?php echo HOME; ?></a></li>
	<li><a href="./" class="dir"><?php echo PBX; ?></a>
		<ul>
			<li><a href="./freepbx.php"><?php echo FREEPBX; ?></a></li>
			<li><a href="/fop.php"><?php echo FOP; ?></a></li>
			<li><a href="./vtigercrm.php"><?php echo VITIGERCRM; ?></a></li>
			<li><a href="./avantfax.php"><?php echo AVANTFAX; ?></a></li>
			<li><a href="./voicemail.php"><?php echo VOICEMAIL; ?></a></li>
			<li><a href="./calllog.php"><?php echo CALLLOG; ?></a></li>
		</ul>
	</li>
	<li><a href="./" class="dir"><?php echo SUPPORT; ?></a>
		<ul>
			<li><a href="http://debpbx.org/index.php?option=com_content&view=article&id=52&Itemid=58"><?php echo PAID_SUPPORT; ?></a></li>
		</ul>
	</li>
	<li><a href="./" class="dir"><?php echo	COMMUNITIES; ?></a>
		<ul>
			<li><a href="./chat.php"><?php echo CHAT; ?></a></li>
			<li><a href="./forum.php"><?php echo FORUM; ?></a></li>
			<li><a href="./wiki.php"><?php echo WIKI; ?></a></li>
			<li><a href="http://www.youtube.com/debpbx"><?php echo YOUTUBE; ?></a></li>
			<li><a href="http://www.facebook.com/debpbx"><?php echo FACEBOOK; ?></a></li>
			<li><a href="http://www.twitter.com/debpbx"><?php echo TWITTER; ?></a></li>
		</ul>
	</li>
	<li><a href="./" class="dir"><?php echo ABOUT; ?></a>
		<ul>
			<li><a href="./history.php"><?php echo HISTORY; ?></a></li>
			<li><a href="./version.php"><?php echo VERSION; ?></a></li>
			<li><a href="./team.php"><?php echo TEAM; ?></a></li>
			<li><a href="./fags.php"><?php echo FAQS; ?></a></li>
		</ul>
	</li>
</ul>
<!-- # end menu -->
