<?php
/**
 * $ID: team.php
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
require(DIR_WS_LANGUAGES . $language . '/' . 'team.php');
require(DIR_WS_INCLUDES . 'header.php');

$url = "team.xml";
$contenido_xml = "";
if($d = fopen($url, "r")){
  while ($aux= fgets($d, 1024)){
    $contenido_xml .= $aux;
  }
  fclose($d);
}else{
  echo "No se pudo abrir el XML";
}
$xml = simplexml_load_string($contenido_xml);
?>
        <div id="container">
<div class="title"><h3><?php echo TITLE_TEAM; ?></h3></div>

<?php
	for($i=0; $i<count($xml->people); $i++){

		$name=$xml->people[$i]->name;
                $nickname=$xml->people[$i]->nickname;
		$birthday=$xml->people[$i]->birthday;
		$collaborator=$xml->people[$i]->collaborator;
                $desc=$xml->people[$i]->desc;
                $link=$xml->people[$i]->link;
                $image=$xml->people[$i]->image;
		$phone=$xml->people[$i]->phone;
		$email=$xml->people[$i]->email;

		echo '
 		<div class="text gris about fotonifty"><div class="round-image" style="float: left; border: 0pt none; margin-left: 20px; margin-right: 20px; border: 1px solid rgb(244, 148, 11); background: transparent url(/images/team/'.$image.') repeat scroll 0% 0%; width: 140px; height: 200px; -moz-border-radius-topleft: 50px; -moz-border-radius-topright: 50px; -moz-border-radius-bottomright: 50px; -moz-border-radius-bottomleft: 50px; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial;"></div>
                <div class="title_team"><h3>'.$name.' / '.$nickname.'</h3></div><b>'. BIRTHDAY. '</b>'.$birthday.'<br><b>'.COLLABORATOR.'</b>'.$collaborator.'<br><b>'.PHONE.'</b>'.$phone.'<br><b>'.EMAIL.'</b>'.$email.'<br><b>'.SITE.'</b><a href="'.$link.'">'.$link.' </a><br>'.$desc.'</div>
		<br><br>';
	}
?>
	</div>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
