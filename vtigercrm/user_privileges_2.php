<?php
#
#   HMMMMI              MI       MMMMI    MMMMM.  MMI    MM
#   HM: IMMM            MI       MM IMMM  MM  MMM  MM.  MMI
#   HM:    MM   MMMMM   MIMMMM   MM   MM  MM   MM   MM MMI
#   HM:     MM MM   MM  MM   MM  MM   MM  MMMMMM     MMM.
#   HM:     MM:MMMMMMM  MI   MM  MMMMMM   MM   MM:   MMM:
#   HM:    MM .MM       MI   MM  MM       MM    MM  MM MMM
#   HM: IMMM   MMM  HM  MM  MMI  MM       MM  MMM  MM   MMI
#   HMMMMI      .MMMM   MHMMM    MM       MMMMM   MM     MM
#
#                                            www.debpbx.org
#
# $ID: user_privileges_2.php, v 0.1  2009/12/24 00:00:00 federico Exp $
#
# Vitigercrm
# Author: Federico Pereira <fpereira@debpbx.org>
# Copyright 2008 DebPBX - Federico Pereira (LordBaseX)
# Content-Type: text/plain; charset=UTF-8
# This script is licensed under GNU GPL version 2.0
#
//This is the access privilege file
$is_admin=false;

$current_user_roles='H3';

$current_user_parent_role_seq='H1::H2::H3';

$current_user_profiles=array(2,);

$profileGlobalPermission=array('1'=>1,'2'=>1,);

$profileTabsPermission=array('1'=>0,'2'=>0,'3'=>0,'4'=>0,'6'=>0,'7'=>0,'8'=>0,'9'=>0,'10'=>0,'13'=>0,'14'=>0,'15'=>0,'16'=>0,'18'=>0,'19'=>0,'20'=>0,'21'=>0,'22'=>0,'23'=>0,'24'=>0,'25'=>0,'26'=>0,'27'=>0,'30'=>0,'31'=>0,'32'=>0,);

$profileActionPermission=array(2=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,10=>0,),4=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,8=>0,10=>0,),6=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,8=>0,10=>0,),7=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,8=>0,9=>0,10=>0,),8=>array(0=>0,1=>0,2=>0,3=>0,4=>0,6=>1,),9=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),13=>array(0=>1,1=>1,2=>1,3=>0,4=>0,5=>1,6=>1,8=>0,10=>0,),14=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,10=>0,),15=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),16=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),18=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>1,6=>1,10=>0,),19=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),20=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),21=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),22=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),23=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),26=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),30=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>0,6=>0,10=>0,),31=>array(0=>0,1=>0,2=>0,3=>0,4=>0,5=>0,6=>0,10=>0,),32=>array(0=>0,1=>0,2=>0,3=>0,4=>0,),);

$current_user_groups=array(3,4,5,);

$subordinate_roles=array('H4','H5',);

$parent_roles=array('H1','H2',);

$subordinate_roles_users=array('H4'=>array(),'H5'=>array(),);

$user_info=array('user_name'=>'standarduser','is_admin'=>'off','user_password'=>'$1$st$uLfsbaxHqXKBxU5m5SkIg0','confirm_password'=>'$1$st$1iX6Nfn6NbdWdlCljgg3u1','first_name'=>'','last_name'=>'StandardUser','roleid'=>'H3','email1'=>'demo@debpbx.org','status'=>'Active','activity_view'=>'This Week','lead_view'=>'Today','currency_id'=>'1','currency_name'=>'Argentina, Pesos','currency_code'=>'ARS','currency_symbol'=>'&#36;','conv_rate'=>'1.000','hour_format'=>'24','end_hour'=>'23:00','start_hour'=>'08:00','title'=>'','phone_work'=>'','department'=>'','phone_mobile'=>'','reports_to_id'=>'','phone_other'=>'','email2'=>'','phone_fax'=>'','yahoo_id'=>'','phone_home'=>'','imagename'=>'','date_format'=>'yyyy-mm-dd','signature'=>'','description'=>'','reminder_interval'=>'1 Minute','internal_mailer'=>'1','address_street'=>'','address_city'=>'','address_state'=>'','address_postalcode'=>'','address_country'=>'','asterisk_extension'=>'','use_asterisk'=>'','accesskey'=>'IA6xvLgXtrf1ASvb','record_id'=>'','record_module'=>'','id'=>'2');
?>
