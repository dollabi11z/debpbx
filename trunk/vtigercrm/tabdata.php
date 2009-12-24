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
# $ID: tabdata.php, v 0.1  2009/12/24 00:00:00 federico Exp $
#
# Vitigercrm
# Author: Federico Pereira <fpereira@debpbx.org>
# Copyright 2008 DebPBX - Federico Pereira (LordBaseX)
# Content-Type: text/plain; charset=UTF-8
# This script is licensed under GNU GPL version 2.0
#
/*********************************************************************************
  ** The contents of this file are subject to the vtiger CRM Public License Version 1.0
   * ("License"); You may not use this file except in compliance with the License
   * The Original Code is:  vtiger CRM Open Source
   * The Initial Developer of the Original Code is vtiger.
   * Portions created by vtiger are Copyright (C) vtiger.
   * All Rights Reserved.
  *
 ********************************************************************************/

//This file contains the commonly used variables 

$tab_info_array=array('Dashboard'=>1,'Potentials'=>2,'Home'=>3,'Contacts'=>4,'Accounts'=>6,'Leads'=>7,'Documents'=>8,'Calendar'=>9,'Emails'=>10,'HelpDesk'=>13,'Products'=>14,'Faq'=>15,'Events'=>16,'Vendors'=>18,'PriceBooks'=>19,'Quotes'=>20,'PurchaseOrder'=>21,'SalesOrder'=>22,'Invoice'=>23,'Rss'=>24,'Reports'=>25,'Campaigns'=>26,'Portal'=>27,'Webmails'=>28,'Users'=>29,'Services'=>30,'ServiceContracts'=>31,'PBXManager'=>32,'RecycleBin'=>33,'CustomerPortal'=>34,'FieldFormulas'=>35,'Webforms'=>36,'Tooltip'=>37,);

$tab_seq_array=array('1'=>0,'2'=>0,'3'=>0,'4'=>0,'6'=>0,'7'=>0,'8'=>0,'9'=>0,'10'=>0,'13'=>0,'14'=>0,'15'=>0,'16'=>2,'18'=>0,'19'=>0,'20'=>0,'21'=>0,'22'=>0,'23'=>0,'24'=>0,'25'=>0,'26'=>0,'27'=>0,'28'=>0,'29'=>0,'30'=>0,'31'=>0,'32'=>0,'33'=>0,'34'=>0,'35'=>0,'36'=>0,'37'=>0,);

$tab_ownedby_array=array('1'=>1,'2'=>0,'3'=>1,'4'=>0,'6'=>0,'7'=>0,'8'=>0,'9'=>0,'10'=>1,'13'=>0,'14'=>1,'15'=>1,'16'=>0,'18'=>1,'19'=>1,'20'=>0,'21'=>0,'22'=>0,'23'=>0,'24'=>1,'25'=>1,'26'=>0,'27'=>1,'28'=>1,'29'=>1,'30'=>1,'31'=>0,'32'=>0,'33'=>0,'34'=>0,'35'=>0,'36'=>0,'37'=>0,);

$action_id_array=array('Save'=>0,'SavePriceBook'=>0,'SaveVendor'=>0,'DetailViewAjax'=>1,'EditView'=>1,'PriceBookEditView'=>1,'QuickCreate'=>1,'VendorEditView'=>1,'Delete'=>2,'DeletePriceBook'=>2,'DeleteVendor'=>2,'index'=>3,'Popup'=>3,'DetailView'=>4,'PriceBookDetailView'=>4,'TagCloud'=>4,'VendorDetailView'=>4,'Import'=>5,'Export'=>6,'Merge'=>8,'ConvertLead'=>9,'DuplicatesHandling'=>10);

$action_name_array=array(0=>'Save',1=>'EditView',2=>'Delete',3=>'index',4=>'DetailView',5=>'Import',6=>'Export',8=>'Merge',9=>'ConvertLead',10=>'DuplicatesHandling');
?>
