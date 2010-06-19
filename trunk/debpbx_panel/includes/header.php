<?php
/**
 * $ID: header.php
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
require(DIR_WS_LANGUAGES . $language . '.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php require(DIR_WS_INCLUDES . 'meta_tags.php'); ?>
<title><?php echo TITLE; ?></title>
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="skin/default/css/style.css" rel="stylesheet" type="text/css" />
<link href="skin/default/css/iframe.css" rel="stylesheet" type="text/css" />
<link href="skin/default/css/class.css" rel="stylesheet" type="text/css" />

<link href="skin/default/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="skin/default/dropdown/themes/orange/default.advanced.css" media="screen" rel="stylesheet" type="text/css" />

<link href="skin/default/smoothgallery/jd.gallery.css" media="screen" rel="stylesheet" type="text/css" charset="utf-8" />

<script type="text/javascript" src="includes/library/js/swfobject/swfobject.js"></script>
<script type="text/javascript" src="includes/library/js/jquery/jquery.js"></script>
<script type="text/javascript" src="includes/library/js/jquery/jquery.dropdown.js"></script>
<script type="text/javascript" src="includes/library/js/jquery/jquery.autoheight.js"></script>

<script src="includes/library/js/mootools/mootools-1.2.1-core-yc.js" type="text/javascript"></script>
<script src="includes/library/js/mootools/mootools-1.2-more.js" type="text/javascript"></script>
<script src="includes/library/js/smoothgallery/jd.gallery.js" type="text/javascript"></script>
<script src="includes/library/js/smoothgallery/jd.gallery.transitions.js" type="text/javascript"></script>

</head>
<body>
<div id="header">
 	<? require(DIR_WS_INCLUDES . 'banner.php'); ?>
 	<div id="logo"><a href="http://www.debpbx.org" target="_blank"><img src="skin/default/debpbx_logo.png" height="61" width="224" border="0"></a></div>	
</div>
<!-- # beginning box -->
<div id="box">
	<div id="upper_left"></div>
	<div id="upper_right"></div>
	<div id="upper_top"><? require(DIR_WS_INCLUDES . 'menu.php'); ?></div>

