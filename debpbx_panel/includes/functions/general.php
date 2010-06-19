<?php
/**
 * $ID: general.php
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

// Identifica lenguaje
function idenLang(){
  $idiomas = split(",", $_SERVER['HTTP_ACCEPT_LANGUAGE']);
  $Lang_es = 'spanish';
  $Lang_en = 'english';

  foreach($idiomas as $lg) {
         if (substr($lg,0,2) == "es") {
           return ($Lang_es);
         }
        else {
          return ($Lang_en);
         }
  }
 }


//Function: version detection 
function debpbxVersion(){
        $VersionFile = file("/etc/debpbx_version");
        foreach ($VersionFile as $version) {
        echo $version;
	}
}
//END-Function: version detection
?>
