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
# $ID: sharing_privileges_2.php, v 0.1  2009/12/24 00:00:00 federico Exp $
#
# Vitigercrm
# Author: Federico Pereira <fpereira@debpbx.org>
# Copyright 2008 DebPBX - Federico Pereira (LordBaseX)
# Content-Type: text/plain; charset=UTF-8
# This script is licensed under GNU GPL version 2.0
#
//This is the sharing access privilege file
$defaultOrgSharingPermission=array('2'=>2,'4'=>2,'6'=>2,'7'=>2,'9'=>3,'13'=>2,'16'=>3,'20'=>2,'21'=>2,'22'=>2,'23'=>2,'26'=>2,'8'=>2,'31'=>2,'32'=>3,);

$related_module_share=array(2=>array(6,),13=>array(6,),20=>array(6,2,),22=>array(6,2,20,),23=>array(6,22,),);

$Leads_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Leads_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Leads_Emails_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Leads_Emails_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Contacts_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Contacts_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Potentials_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Potentials_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_HelpDesk_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_HelpDesk_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Emails_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Emails_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Quotes_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Quotes_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_SalesOrder_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_SalesOrder_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Invoice_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Accounts_Invoice_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_Quotes_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_Quotes_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_SalesOrder_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Potentials_SalesOrder_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$HelpDesk_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$HelpDesk_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Emails_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Emails_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Campaigns_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Campaigns_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Quotes_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Quotes_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Quotes_SalesOrder_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Quotes_SalesOrder_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$PurchaseOrder_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$PurchaseOrder_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$SalesOrder_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$SalesOrder_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$SalesOrder_Invoice_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$SalesOrder_Invoice_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Invoice_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Invoice_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$Documents_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$Documents_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$ServiceContracts_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$ServiceContracts_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

$PBXManager_share_read_permission=array('ROLE'=>array(),'GROUP'=>array());

$PBXManager_share_write_permission=array('ROLE'=>array(),'GROUP'=>array());

?>
