--
--   HMMMMI              MI       MMMMI    MMMMM.  MMI    MM
--   HM: IMMM            MI       MM IMMM  MM  MMM  MM.  MMI
--   HM:    MM   MMMMM   MIMMMM   MM   MM  MM   MM   MM MMI
--   HM:     MM MM   MM  MM   MM  MM   MM  MMMMMM     MMM.
--   HM:     MM:MMMMMMM  MI   MM  MMMMMM   MM   MM:   MMM:
--   HM:    MM .MM       MI   MM  MM       MM    MM  MM MMM
--   HM: IMMM   MMM  HM  MM  MMI  MM       MM  MMM  MM   MMI
--   HMMMMI      .MMMM   MHMMM    MM       MMMMM   MM     MM
--
--                                            www.debpbx.org
--
-- $ID: config.ini.php, v 0.1  2009/12/24 00:00:00 federico Exp $
--
-- Vitigercrm
-- Author: Federico Pereira <fpereira@debpbx.org>
-- Copyright 2008 DebPBX - Federico Pereira (LordBaseX)
-- Content-Type: text/plain; charset=UTF-8
-- This script is licensed under GNU GPL version 2.0
--

-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-12-2009 a las 21:03:05
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6-1+lenny3
--
--

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vtigercrm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflows`
--

DROP TABLE IF EXISTS `com_vtiger_workflows`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `summary` varchar(400) NOT NULL,
  `test` text,
  `execution_condition` int(11) NOT NULL,
  PRIMARY KEY  (`workflow_id`),
  UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflows`
--

INSERT INTO `com_vtiger_workflows` (`workflow_id`, `module_name`, `summary`, `test`, `execution_condition`) VALUES
(1, 'Invoice', 'UpdateInventoryProducts On Every Save', '[{"fieldname":"subject","operation":"does not contain","value":"`!`"}]', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflows_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflows_seq`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflows_seq`
--

INSERT INTO `com_vtiger_workflows_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtasks`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL auto_increment,
  `workflow_id` int(11) default NULL,
  `summary` varchar(400) NOT NULL,
  `task` text,
  PRIMARY KEY  (`task_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtasks`
--

INSERT INTO `com_vtiger_workflowtasks` (`task_id`, `workflow_id`, `summary`, `task`) VALUES
(1, 1, '', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:1;s:7:"summary";s:0:"";s:6:"active";b:1;s:10:"methodName";s:15:"UpdateInventory";s:2:"id";i:1;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtasks_entitymethod`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) default NULL,
  `method_name` varchar(100) default NULL,
  `function_path` varchar(400) default NULL,
  `function_name` varchar(100) default NULL,
  PRIMARY KEY  (`workflowtasks_entitymethod_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtasks_entitymethod`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod` (`workflowtasks_entitymethod_id`, `module_name`, `method_name`, `function_path`, `function_name`) VALUES
(1, 'SalesOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(2, 'Invoice', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtasks_entitymethod_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod_seq`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtasks_entitymethod_seq`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtasks_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_seq`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtasks_seq`
--

INSERT INTO `com_vtiger_workflowtasks_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtask_queue`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtask_queue`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtask_queue` (
  `task_id` int(11) default NULL,
  `entity_id` varchar(100) default NULL,
  `do_after` int(11) default NULL,
  UNIQUE KEY `com_vtiger_workflowtask_queue_idx` (`task_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtask_queue`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflowtemplates`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtemplates`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `title` varchar(400) default NULL,
  `template` text,
  PRIMARY KEY  (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflowtemplates`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_vtiger_workflow_activatedonce`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_activatedonce`;
CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY  (`workflow_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `com_vtiger_workflow_activatedonce`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_account`
--

DROP TABLE IF EXISTS `vtiger_account`;
CREATE TABLE IF NOT EXISTS `vtiger_account` (
  `accountid` int(19) NOT NULL default '0',
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) default '0',
  `account_type` varchar(200) default NULL,
  `industry` varchar(200) default NULL,
  `annualrevenue` int(19) default '0',
  `rating` varchar(200) default NULL,
  `ownership` varchar(50) default NULL,
  `siccode` varchar(50) default NULL,
  `tickersymbol` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `otherphone` varchar(30) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `website` varchar(100) default NULL,
  `fax` varchar(30) default NULL,
  `employees` int(10) default '0',
  `emailoptout` varchar(3) default '0',
  `notify_owner` varchar(3) default '0',
  PRIMARY KEY  (`accountid`),
  KEY `account_account_type_idx` (`account_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_account`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountbillads`
--

DROP TABLE IF EXISTS `vtiger_accountbillads`;
CREATE TABLE IF NOT EXISTS `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_accountbillads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountdepstatus`
--

DROP TABLE IF EXISTS `vtiger_accountdepstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_accountdepstatus` (
  `deploymentstatusid` int(19) NOT NULL auto_increment,
  `deploymentstatus` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`deploymentstatusid`),
  UNIQUE KEY `accountdepstatus_deploymentstatus_idx` (`deploymentstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_accountdepstatus`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountownership`
--

DROP TABLE IF EXISTS `vtiger_accountownership`;
CREATE TABLE IF NOT EXISTS `vtiger_accountownership` (
  `acctownershipid` int(19) NOT NULL auto_increment,
  `ownership` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`acctownershipid`),
  UNIQUE KEY `accountownership_ownership_idx` (`ownership`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_accountownership`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountrating`
--

DROP TABLE IF EXISTS `vtiger_accountrating`;
CREATE TABLE IF NOT EXISTS `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL auto_increment,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`accountratingid`),
  UNIQUE KEY `accountrating_rating_idx` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_accountrating`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountregion`
--

DROP TABLE IF EXISTS `vtiger_accountregion`;
CREATE TABLE IF NOT EXISTS `vtiger_accountregion` (
  `accountregionid` int(19) NOT NULL auto_increment,
  `region` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`accountregionid`),
  UNIQUE KEY `accountregion_region_idx` (`region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_accountregion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountscf`
--

DROP TABLE IF EXISTS `vtiger_accountscf`;
CREATE TABLE IF NOT EXISTS `vtiger_accountscf` (
  `accountid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_accountscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accountshipads`
--

DROP TABLE IF EXISTS `vtiger_accountshipads`;
CREATE TABLE IF NOT EXISTS `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_pobox` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  PRIMARY KEY  (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_accountshipads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accounttype`
--

DROP TABLE IF EXISTS `vtiger_accounttype`;
CREATE TABLE IF NOT EXISTS `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL auto_increment,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`accounttypeid`),
  UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcar la base de datos para la tabla `vtiger_accounttype`
--

INSERT INTO `vtiger_accounttype` (`accounttypeid`, `accounttype`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 1),
(2, 'Analyst', 1, 2),
(3, 'Competitor', 1, 3),
(4, 'Customer', 1, 4),
(5, 'Integrator', 1, 5),
(6, 'Investor', 1, 6),
(7, 'Partner', 1, 7),
(8, 'Press', 1, 8),
(9, 'Prospect', 1, 9),
(10, 'Reseller', 1, 10),
(11, 'Other', 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_accounttype_seq`
--

DROP TABLE IF EXISTS `vtiger_accounttype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_accounttype_seq`
--

INSERT INTO `vtiger_accounttype_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_actionmapping`
--

DROP TABLE IF EXISTS `vtiger_actionmapping`;
CREATE TABLE IF NOT EXISTS `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) default NULL,
  PRIMARY KEY  (`actionid`,`actionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_actionmapping`
--

INSERT INTO `vtiger_actionmapping` (`actionid`, `actionname`, `securitycheck`) VALUES
(0, 'Save', 0),
(0, 'SavePriceBook', 1),
(0, 'SaveVendor', 1),
(1, 'DetailViewAjax', 1),
(1, 'EditView', 0),
(1, 'PriceBookEditView', 1),
(1, 'QuickCreate', 1),
(1, 'VendorEditView', 1),
(2, 'Delete', 0),
(2, 'DeletePriceBook', 1),
(2, 'DeleteVendor', 1),
(3, 'index', 0),
(3, 'Popup', 1),
(4, 'DetailView', 0),
(4, 'PriceBookDetailView', 1),
(4, 'TagCloud', 1),
(4, 'VendorDetailView', 1),
(5, 'Import', 0),
(6, 'Export', 0),
(8, 'Merge', 0),
(9, 'ConvertLead', 0),
(10, 'DuplicatesHandling', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activity`
--

DROP TABLE IF EXISTS `vtiger_activity`;
CREATE TABLE IF NOT EXISTS `vtiger_activity` (
  `activityid` int(19) NOT NULL default '0',
  `subject` varchar(100) NOT NULL,
  `semodule` varchar(20) default NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date default NULL,
  `time_start` varchar(50) default NULL,
  `time_end` varchar(50) default NULL,
  `sendnotification` varchar(3) NOT NULL default '0',
  `duration_hours` varchar(200) default NULL,
  `duration_minutes` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `eventstatus` varchar(200) default NULL,
  `priority` varchar(200) default NULL,
  `location` varchar(150) default NULL,
  `notime` varchar(3) NOT NULL default '0',
  `visibility` varchar(50) NOT NULL default 'all',
  `recurringtype` varchar(200) default NULL,
  PRIMARY KEY  (`activityid`),
  KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  KEY `activity_eventstatus_idx` (`eventstatus`),
  KEY `activity_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activity`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activitycf`
--

DROP TABLE IF EXISTS `vtiger_activitycf`;
CREATE TABLE IF NOT EXISTS `vtiger_activitycf` (
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activitycf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activityproductrel`
--

DROP TABLE IF EXISTS `vtiger_activityproductrel`;
CREATE TABLE IF NOT EXISTS `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL default '0',
  `productid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`activityid`,`productid`),
  KEY `activityproductrel_activityid_idx` (`activityid`),
  KEY `activityproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activityproductrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activitytype`
--

DROP TABLE IF EXISTS `vtiger_activitytype`;
CREATE TABLE IF NOT EXISTS `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL auto_increment,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`activitytypeid`),
  UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_activitytype`
--

INSERT INTO `vtiger_activitytype` (`activitytypeid`, `activitytype`, `presence`, `picklist_valueid`) VALUES
(1, 'Call', 0, 12),
(2, 'Meeting', 0, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activitytype_seq`
--

DROP TABLE IF EXISTS `vtiger_activitytype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activitytype_seq`
--

INSERT INTO `vtiger_activitytype_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activity_reminder`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder`;
CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL,
  PRIMARY KEY  (`activity_id`,`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activity_reminder`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activity_reminder_popup`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder_popup`;
CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL auto_increment,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY  (`reminderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_activity_reminder_popup`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activity_view`
--

DROP TABLE IF EXISTS `vtiger_activity_view`;
CREATE TABLE IF NOT EXISTS `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL auto_increment,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`activity_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_activity_view`
--

INSERT INTO `vtiger_activity_view` (`activity_viewid`, `activity_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'This Week', 1, 1),
(3, 'This Month', 2, 1),
(4, 'This Year', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activity_view_seq`
--

DROP TABLE IF EXISTS `vtiger_activity_view_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_activity_view_seq`
--

INSERT INTO `vtiger_activity_view_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_activsubtype`
--

DROP TABLE IF EXISTS `vtiger_activsubtype`;
CREATE TABLE IF NOT EXISTS `vtiger_activsubtype` (
  `activesubtypeid` int(19) NOT NULL auto_increment,
  `activsubtype` varchar(100) default NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`activesubtypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_activsubtype`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_announcement`
--

DROP TABLE IF EXISTS `vtiger_announcement`;
CREATE TABLE IF NOT EXISTS `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text,
  `title` varchar(255) default NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`creatorid`),
  KEY `announcement_creatorid_idx` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_announcement`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_asterisk`
--

DROP TABLE IF EXISTS `vtiger_asterisk`;
CREATE TABLE IF NOT EXISTS `vtiger_asterisk` (
  `server` varchar(30) default NULL,
  `port` varchar(30) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `version` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_asterisk`
--

INSERT INTO `vtiger_asterisk` (`server`, `port`, `username`, `password`, `version`) VALUES
('127.0.0.1', '5038', 'crm', 'DebPBX2009', '1.4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_asteriskextensions`
--

DROP TABLE IF EXISTS `vtiger_asteriskextensions`;
CREATE TABLE IF NOT EXISTS `vtiger_asteriskextensions` (
  `userid` int(11) default NULL,
  `asterisk_extension` varchar(50) default NULL,
  `use_asterisk` varchar(3) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_asteriskextensions`
--

INSERT INTO `vtiger_asteriskextensions` (`userid`, `asterisk_extension`, `use_asterisk`) VALUES
(1, '100', ''),
(2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_asteriskincomingcalls`
--

DROP TABLE IF EXISTS `vtiger_asteriskincomingcalls`;
CREATE TABLE IF NOT EXISTS `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) default NULL,
  `from_name` varchar(50) default NULL,
  `to_number` varchar(50) default NULL,
  `callertype` varchar(30) default NULL,
  `flag` int(19) default NULL,
  `timer` int(19) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_asteriskincomingcalls`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_asteriskoutgoingcalls`
--

DROP TABLE IF EXISTS `vtiger_asteriskoutgoingcalls`;
CREATE TABLE IF NOT EXISTS `vtiger_asteriskoutgoingcalls` (
  `userid` int(11) default NULL,
  `from_number` varchar(50) default NULL,
  `to_number` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_asteriskoutgoingcalls`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_attachments`
--

DROP TABLE IF EXISTS `vtiger_attachments`;
CREATE TABLE IF NOT EXISTS `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(100) default NULL,
  `path` text,
  `subject` varchar(255) default NULL,
  PRIMARY KEY  (`attachmentsid`),
  KEY `attachments_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_attachments`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_attachmentsfolder`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder`;
CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL auto_increment,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) default NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) default NULL,
  PRIMARY KEY  (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_attachmentsfolder`
--

INSERT INTO `vtiger_attachmentsfolder` (`folderid`, `foldername`, `description`, `createdby`, `sequence`) VALUES
(1, 'Default', 'This is a Default Folder', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_attachmentsfolder_seq`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_attachmentsfolder_seq`
--

INSERT INTO `vtiger_attachmentsfolder_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_audit_trial`
--

DROP TABLE IF EXISTS `vtiger_audit_trial`;
CREATE TABLE IF NOT EXISTS `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) default NULL,
  `module` varchar(255) default NULL,
  `action` varchar(255) default NULL,
  `recordid` varchar(20) default NULL,
  `actiondate` datetime default NULL,
  PRIMARY KEY  (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_audit_trial`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_blocks`
--

DROP TABLE IF EXISTS `vtiger_blocks`;
CREATE TABLE IF NOT EXISTS `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) default NULL,
  `show_title` int(2) default NULL,
  `visible` int(2) NOT NULL default '0',
  `create_view` int(2) NOT NULL default '0',
  `edit_view` int(2) NOT NULL default '0',
  `detail_view` int(2) NOT NULL default '0',
  `display_status` int(1) NOT NULL default '1',
  `iscustom` int(1) NOT NULL default '0',
  PRIMARY KEY  (`blockid`),
  KEY `block_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_blocks`
--

INSERT INTO `vtiger_blocks` (`blockid`, `tabid`, `blocklabel`, `sequence`, `show_title`, `visible`, `create_view`, `edit_view`, `detail_view`, `display_status`, `iscustom`) VALUES
(1, 2, 'LBL_OPPORTUNITY_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(2, 2, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(3, 2, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(4, 4, 'LBL_CONTACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(5, 4, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(6, 4, 'LBL_CUSTOMER_PORTAL_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(7, 4, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(8, 4, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(9, 6, 'LBL_ACCOUNT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(10, 6, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(11, 6, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(12, 6, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(13, 7, 'LBL_LEAD_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(14, 7, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(15, 7, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(16, 7, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(17, 8, 'LBL_NOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(18, 8, 'LBL_FILE_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
(19, 9, 'LBL_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(20, 9, '', 2, 1, 0, 0, 0, 0, 1, 0),
(21, 10, 'LBL_EMAIL_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(22, 10, '', 2, 1, 0, 0, 0, 0, 1, 0),
(23, 10, '', 3, 1, 0, 0, 0, 0, 1, 0),
(24, 10, '', 4, 1, 0, 0, 0, 0, 1, 0),
(25, 13, 'LBL_TICKET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(26, 13, '', 2, 1, 0, 0, 0, 0, 1, 0),
(27, 13, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(28, 13, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(29, 13, 'LBL_TICKET_RESOLUTION', 5, 0, 0, 1, 0, 0, 1, 0),
(30, 13, 'LBL_COMMENTS', 6, 0, 0, 1, 0, 0, 1, 0),
(31, 14, 'LBL_PRODUCT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(32, 14, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(33, 14, 'LBL_STOCK_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(34, 14, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(35, 14, 'LBL_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(36, 14, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(37, 15, 'LBL_FAQ_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(38, 15, 'LBL_COMMENT_INFORMATION', 4, 0, 0, 1, 0, 0, 1, 0),
(39, 16, 'LBL_EVENT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(40, 16, '', 2, 1, 0, 0, 0, 0, 1, 0),
(41, 16, '', 3, 1, 0, 0, 0, 0, 1, 0),
(42, 18, 'LBL_VENDOR_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(43, 18, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(44, 18, 'LBL_VENDOR_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(45, 18, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(46, 19, 'LBL_PRICEBOOK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(47, 19, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(48, 19, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(49, 20, 'LBL_QUOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(50, 20, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(51, 20, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(52, 20, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(53, 20, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(54, 20, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(55, 21, 'LBL_PO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(56, 21, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(57, 21, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(58, 21, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(59, 21, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(60, 21, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(61, 22, 'LBL_SO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(62, 22, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(63, 22, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(64, 22, 'LBL_RELATED_PRODUCTS', 5, 0, 0, 0, 0, 0, 1, 0),
(65, 22, 'LBL_TERMS_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(66, 22, 'LBL_DESCRIPTION_INFORMATION', 7, 0, 0, 0, 0, 0, 1, 0),
(67, 23, 'LBL_INVOICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(68, 23, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(69, 23, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(70, 23, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(71, 23, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(72, 23, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(73, 4, 'LBL_IMAGE_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(74, 26, 'LBL_CAMPAIGN_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(75, 26, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(76, 26, 'LBL_EXPECTATIONS_AND_ACTUALS', 3, 0, 0, 0, 0, 0, 1, 0),
(77, 29, 'LBL_USERLOGIN_ROLE', 1, 0, 0, 0, 0, 0, 1, 0),
(78, 29, 'LBL_MORE_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(79, 29, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(80, 26, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(81, 29, 'LBL_USER_IMAGE_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(82, 29, 'LBL_USER_ADV_OPTIONS', 5, 0, 0, 0, 0, 0, 1, 0),
(83, 8, 'LBL_DESCRIPTION', 2, 0, 0, 0, 0, 0, 1, 0),
(84, 22, 'Recurring Invoice Information', 2, 0, 0, 0, 0, 0, 1, 0),
(85, 9, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(86, 16, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(88, 30, 'LBL_SERVICE_CONTRACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(89, 30, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(90, 31, 'LBL_SERVICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(91, 31, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(92, 31, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(93, 31, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(94, 32, 'LBL_CALL_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(95, 32, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(96, 29, 'Asterisk Configuration', 6, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_blocks_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_blocks_seq`
--

INSERT INTO `vtiger_blocks_seq` (`id`) VALUES
(96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_businesstype`
--

DROP TABLE IF EXISTS `vtiger_businesstype`;
CREATE TABLE IF NOT EXISTS `vtiger_businesstype` (
  `businesstypeid` int(19) NOT NULL auto_increment,
  `businesstype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`businesstypeid`),
  UNIQUE KEY `businesstype_businesstype_idx` (`businesstype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_businesstype`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaign`
--

DROP TABLE IF EXISTS `vtiger_campaign`;
CREATE TABLE IF NOT EXISTS `vtiger_campaign` (
  `campaign_no` varchar(100) NOT NULL,
  `campaignname` varchar(255) default NULL,
  `campaigntype` varchar(200) default NULL,
  `campaignstatus` varchar(200) default NULL,
  `expectedrevenue` decimal(25,3) default NULL,
  `budgetcost` decimal(25,3) default NULL,
  `actualcost` decimal(25,3) default NULL,
  `expectedresponse` varchar(200) default NULL,
  `numsent` decimal(11,0) default NULL,
  `product_id` int(19) default NULL,
  `sponsor` varchar(255) default NULL,
  `targetaudience` varchar(255) default NULL,
  `targetsize` int(19) default NULL,
  `expectedresponsecount` int(19) default NULL,
  `expectedsalescount` int(19) default NULL,
  `expectedroi` decimal(25,3) default NULL,
  `actualresponsecount` int(19) default NULL,
  `actualsalescount` int(19) default NULL,
  `actualroi` decimal(25,3) default NULL,
  `campaignid` int(19) NOT NULL,
  `closingdate` date default NULL,
  PRIMARY KEY  (`campaignid`),
  KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  KEY `campaign_campaignname_idx` (`campaignname`),
  KEY `campaign_campaignid_idx` (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaign`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaigncontrel`
--

DROP TABLE IF EXISTS `vtiger_campaigncontrel`;
CREATE TABLE IF NOT EXISTS `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL default '0',
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`,`contactid`),
  KEY `campaigncontrel_contractid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaigncontrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaignleadrel`
--

DROP TABLE IF EXISTS `vtiger_campaignleadrel`;
CREATE TABLE IF NOT EXISTS `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL default '0',
  `leadid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`,`leadid`),
  KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaignleadrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaignscf`
--

DROP TABLE IF EXISTS `vtiger_campaignscf`;
CREATE TABLE IF NOT EXISTS `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaignscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaignstatus`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL auto_increment,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaignstatusid`),
  KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_campaignstatus`
--

INSERT INTO `vtiger_campaignstatus` (`campaignstatusid`, `campaignstatus`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 14),
(2, 'Planning', 1, 15),
(3, 'Active', 1, 16),
(4, 'Inactive', 1, 17),
(5, 'Completed', 1, 18),
(6, 'Cancelled', 1, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaignstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaignstatus_seq`
--

INSERT INTO `vtiger_campaignstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaigntype`
--

DROP TABLE IF EXISTS `vtiger_campaigntype`;
CREATE TABLE IF NOT EXISTS `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL auto_increment,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`campaigntypeid`),
  UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `vtiger_campaigntype`
--

INSERT INTO `vtiger_campaigntype` (`campaigntypeid`, `campaigntype`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 20),
(2, 'Conference', 1, 21),
(3, 'Webinar', 1, 22),
(4, 'Trade Show', 1, 23),
(5, 'Public Relations', 1, 24),
(6, 'Partners', 1, 25),
(7, 'Referral Program', 1, 26),
(8, 'Advertisement', 1, 27),
(9, 'Banner Ads', 1, 28),
(10, 'Direct Mail', 1, 29),
(11, 'Email', 1, 30),
(12, 'Telemarketing', 1, 31),
(13, 'Others', 1, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_campaigntype_seq`
--

DROP TABLE IF EXISTS `vtiger_campaigntype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_campaigntype_seq`
--

INSERT INTO `vtiger_campaigntype_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_carrier`
--

DROP TABLE IF EXISTS `vtiger_carrier`;
CREATE TABLE IF NOT EXISTS `vtiger_carrier` (
  `carrierid` int(19) NOT NULL auto_increment,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`carrierid`),
  UNIQUE KEY `carrier_carrier_idx` (`carrier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_carrier`
--

INSERT INTO `vtiger_carrier` (`carrierid`, `carrier`, `presence`, `picklist_valueid`) VALUES
(1, 'FedEx', 1, 33),
(2, 'UPS', 1, 34),
(3, 'USPS', 1, 35),
(4, 'DHL', 1, 36),
(5, 'BlueDart', 1, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_carrier_seq`
--

DROP TABLE IF EXISTS `vtiger_carrier_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_carrier_seq`
--

INSERT INTO `vtiger_carrier_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_chat_msg`
--

DROP TABLE IF EXISTS `vtiger_chat_msg`;
CREATE TABLE IF NOT EXISTS `vtiger_chat_msg` (
  `id` int(20) NOT NULL auto_increment,
  `chat_from` int(20) NOT NULL default '0',
  `chat_to` int(20) NOT NULL default '0',
  `born` datetime default NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `chat_msg_chat_from_idx` (`chat_from`),
  KEY `chat_msg_chat_to_idx` (`chat_to`),
  KEY `chat_msg_born_idx` (`born`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_chat_msg`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_chat_pchat`
--

DROP TABLE IF EXISTS `vtiger_chat_pchat`;
CREATE TABLE IF NOT EXISTS `vtiger_chat_pchat` (
  `id` int(20) NOT NULL auto_increment,
  `msg` int(20) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `chat_pchat_msg_idx` (`msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_chat_pchat`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_chat_pvchat`
--

DROP TABLE IF EXISTS `vtiger_chat_pvchat`;
CREATE TABLE IF NOT EXISTS `vtiger_chat_pvchat` (
  `id` int(20) NOT NULL auto_increment,
  `msg` int(20) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `chat_pvchat_msg_idx` (`msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_chat_pvchat`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_chat_users`
--

DROP TABLE IF EXISTS `vtiger_chat_users`;
CREATE TABLE IF NOT EXISTS `vtiger_chat_users` (
  `id` int(20) NOT NULL auto_increment,
  `nick` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL default '000.000.000.000',
  `ping` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `chat_users_nick_idx` (`nick`),
  KEY `chat_users_session_idx` (`session`),
  KEY `chat_users_ping_idx` (`ping`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_chat_users`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_cntactivityrel`
--

DROP TABLE IF EXISTS `vtiger_cntactivityrel`;
CREATE TABLE IF NOT EXISTS `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL default '0',
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`,`activityid`),
  KEY `cntactivityrel_contactid_idx` (`contactid`),
  KEY `cntactivityrel_activityid_idx` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_cntactivityrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_competitor`
--

DROP TABLE IF EXISTS `vtiger_competitor`;
CREATE TABLE IF NOT EXISTS `vtiger_competitor` (
  `competitorid` int(19) NOT NULL,
  `competitorname` varchar(100) NOT NULL,
  `website` varchar(100) default NULL,
  `strength` varchar(250) default NULL,
  `weakness` varchar(250) default NULL,
  PRIMARY KEY  (`competitorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_competitor`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contactaddress`
--

DROP TABLE IF EXISTS `vtiger_contactaddress`;
CREATE TABLE IF NOT EXISTS `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL default '0',
  `mailingcity` varchar(40) default NULL,
  `mailingstreet` varchar(250) default NULL,
  `mailingcountry` varchar(40) default NULL,
  `othercountry` varchar(30) default NULL,
  `mailingstate` varchar(30) default NULL,
  `mailingpobox` varchar(30) default NULL,
  `othercity` varchar(40) default NULL,
  `otherstate` varchar(50) default NULL,
  `mailingzip` varchar(30) default NULL,
  `otherzip` varchar(30) default NULL,
  `otherstreet` varchar(250) default NULL,
  `otherpobox` varchar(30) default NULL,
  PRIMARY KEY  (`contactaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contactaddress`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contactdetails`
--

DROP TABLE IF EXISTS `vtiger_contactdetails`;
CREATE TABLE IF NOT EXISTS `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL default '0',
  `contact_no` varchar(100) NOT NULL,
  `accountid` int(19) default NULL,
  `salutation` varchar(200) default NULL,
  `firstname` varchar(40) default NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(30) default NULL,
  `fax` varchar(50) default NULL,
  `reportsto` varchar(30) default NULL,
  `training` varchar(50) default NULL,
  `usertype` varchar(50) default NULL,
  `contacttype` varchar(50) default NULL,
  `otheremail` varchar(100) default NULL,
  `yahooid` varchar(100) default NULL,
  `donotcall` varchar(3) default NULL,
  `emailoptout` varchar(3) default '0',
  `imagename` varchar(150) default NULL,
  `reference` varchar(3) default NULL,
  `notify_owner` varchar(3) default '0',
  PRIMARY KEY  (`contactid`),
  KEY `contactdetails_accountid_idx` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contactdetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contactscf`
--

DROP TABLE IF EXISTS `vtiger_contactscf`;
CREATE TABLE IF NOT EXISTS `vtiger_contactscf` (
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contactscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contactsubdetails`
--

DROP TABLE IF EXISTS `vtiger_contactsubdetails`;
CREATE TABLE IF NOT EXISTS `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL default '0',
  `homephone` varchar(50) default NULL,
  `otherphone` varchar(50) default NULL,
  `assistant` varchar(30) default NULL,
  `assistantphone` varchar(50) default NULL,
  `birthday` date default NULL,
  `laststayintouchrequest` int(30) default '0',
  `laststayintouchsavedate` int(19) default '0',
  `leadsource` varchar(200) default NULL,
  PRIMARY KEY  (`contactsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contactsubdetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contacttype`
--

DROP TABLE IF EXISTS `vtiger_contacttype`;
CREATE TABLE IF NOT EXISTS `vtiger_contacttype` (
  `contacttypeid` int(19) NOT NULL auto_increment,
  `contacttype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`contacttypeid`),
  UNIQUE KEY `contacttype_contacttype_idx` (`contacttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_contacttype`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contpotentialrel`
--

DROP TABLE IF EXISTS `vtiger_contpotentialrel`;
CREATE TABLE IF NOT EXISTS `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL default '0',
  `potentialid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`contactid`,`potentialid`),
  KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  KEY `contpotentialrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contpotentialrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_priority`
--

DROP TABLE IF EXISTS `vtiger_contract_priority`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL auto_increment,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`contract_priorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_contract_priority`
--

INSERT INTO `vtiger_contract_priority` (`contract_priorityid`, `contract_priority`, `presence`, `picklist_valueid`) VALUES
(1, 'Low', 1, 220),
(2, 'Normal', 1, 221),
(3, 'High', 1, 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_priority_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_priority_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contract_priority_seq`
--

INSERT INTO `vtiger_contract_priority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_status`
--

DROP TABLE IF EXISTS `vtiger_contract_status`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL auto_increment,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`contract_statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_contract_status`
--

INSERT INTO `vtiger_contract_status` (`contract_statusid`, `contract_status`, `presence`, `picklist_valueid`) VALUES
(1, 'Undefined', 1, 214),
(2, 'In Planning', 1, 215),
(3, 'In Progress', 1, 216),
(4, 'On Hold', 1, 217),
(5, 'Complete', 0, 218),
(6, 'Archived', 1, 219);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_status_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_status_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contract_status_seq`
--

INSERT INTO `vtiger_contract_status_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_type`
--

DROP TABLE IF EXISTS `vtiger_contract_type`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL auto_increment,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`contract_typeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_contract_type`
--

INSERT INTO `vtiger_contract_type` (`contract_typeid`, `contract_type`, `presence`, `picklist_valueid`) VALUES
(1, 'Support', 1, 223),
(2, 'Services', 1, 224),
(3, 'Administrative', 1, 225);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_contract_type_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_type_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_contract_type_seq`
--

INSERT INTO `vtiger_contract_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_convertleadmapping`
--

DROP TABLE IF EXISTS `vtiger_convertleadmapping`;
CREATE TABLE IF NOT EXISTS `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL auto_increment,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) default NULL,
  `contactfid` int(19) default NULL,
  `potentialfid` int(19) default NULL,
  PRIMARY KEY  (`cfmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_convertleadmapping`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_crmentity`
--

DROP TABLE IF EXISTS `vtiger_crmentity`;
CREATE TABLE IF NOT EXISTS `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL default '0',
  `smownerid` int(19) NOT NULL default '0',
  `modifiedby` int(19) NOT NULL default '0',
  `setype` varchar(30) NOT NULL,
  `description` text,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime default NULL,
  `status` varchar(50) default NULL,
  `version` int(19) NOT NULL default '0',
  `presence` int(1) default '1',
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`crmid`),
  KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  KEY `crmentity_smownerid_idx` (`smownerid`),
  KEY `crmentity_modifiedby_idx` (`modifiedby`),
  KEY `crmentity_deleted_idx` (`deleted`),
  KEY `crmentity_smownerid_deleted_idx` (`smownerid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_crmentity`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_crmentitynotesrel`
--

DROP TABLE IF EXISTS `vtiger_crmentitynotesrel`;
CREATE TABLE IF NOT EXISTS `vtiger_crmentitynotesrel` (
  `crmid` int(19) NOT NULL default '0',
  `notesid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`notesid`),
  KEY `crmentitynotesrel_notesid_idx` (`notesid`),
  KEY `crmentitynotesrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_crmentitynotesrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_crmentityrel`
--

DROP TABLE IF EXISTS `vtiger_crmentityrel`;
CREATE TABLE IF NOT EXISTS `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_crmentityrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_crmentity_seq`
--

DROP TABLE IF EXISTS `vtiger_crmentity_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_crmentity_seq`
--

INSERT INTO `vtiger_crmentity_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_currencies`
--

DROP TABLE IF EXISTS `vtiger_currencies`;
CREATE TABLE IF NOT EXISTS `vtiger_currencies` (
  `currencyid` int(19) NOT NULL auto_increment,
  `currency_name` varchar(200) default NULL,
  `currency_code` varchar(50) default NULL,
  `currency_symbol` varchar(11) default NULL,
  PRIMARY KEY  (`currencyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Volcar la base de datos para la tabla `vtiger_currencies`
--

INSERT INTO `vtiger_currencies` (`currencyid`, `currency_name`, `currency_code`, `currency_symbol`) VALUES
(1, 'Albania, Leke', 'ALL', 'Lek'),
(2, 'Argentina, Pesos', 'ARS', '$'),
(3, 'Aruba, Guilders', 'AWG', 'ƒ'),
(4, 'Australia, Dollars', 'AUD', '$'),
(5, 'Azerbaijan, New Manats', 'AZN', 'ман'),
(6, 'Bahamas, Dollars', 'BSD', '$'),
(7, 'Bahrain, Dinar', 'BHD', 'BD'),
(8, 'Barbados, Dollars', 'BBD', '$'),
(9, 'Belarus, Rubles', 'BYR', 'p.'),
(10, 'Belize, Dollars', 'BZD', 'BZ$'),
(11, 'Bermuda, Dollars', 'BMD', '$'),
(12, 'Bolivia, Bolivianos', 'BOB', '$b'),
(13, 'Convertible Marka', 'BAM', 'KM'),
(14, 'Botswana, Pulas', 'BWP', 'P'),
(15, 'Bulgaria, Leva', 'BGN', 'лв'),
(16, 'Brazil, Reais', 'BRL', 'R$'),
(17, 'Great Britain Pounds', 'GBP', '£'),
(18, 'Brunei Darussalam, Dollars', 'BND', '$'),
(19, 'Canada, Dollars', 'CAD', '$'),
(20, 'Cayman Islands, Dollars', 'KYD', '$'),
(21, 'Chile, Pesos', 'CLP', '$'),
(22, 'Colombia, Pesos', 'COP', '$'),
(23, 'Costa Rica, Colón', 'CRC', '₡'),
(24, 'Croatia, Kuna', 'HRK', 'kn'),
(25, 'Cuba, Pesos', 'CUP', '₱'),
(26, 'Czech Republic, Koruny', 'CZK', 'Kč'),
(27, 'Denmark, Kroner', 'DKK', 'kr'),
(28, 'Dominican Republic, Pesos', 'DOP', 'RD$'),
(29, 'East Caribbean, Dollars', 'XCD', '$'),
(30, 'Egypt, Pounds', 'EGP', '£'),
(31, 'El Salvador, Colones', 'SVC', '$'),
(32, 'England, Pounds', 'GBP', '£'),
(33, 'Estonia, Krooni', 'EEK', 'kr'),
(34, 'Euro', 'EUR', '€'),
(35, 'Falkland Islands, Pounds', 'FKP', '£'),
(36, 'Fiji, Dollars', 'FJD', '$'),
(37, 'Ghana, Cedis', 'GHC', '¢'),
(38, 'Gibraltar, Pounds', 'GIP', '£'),
(39, 'Guatemala, Quetzales', 'GTQ', 'Q'),
(40, 'Guernsey, Pounds', 'GGP', '£'),
(41, 'Guyana, Dollars', 'GYD', '$'),
(42, 'Honduras, Lempiras', 'HNL', 'L'),
(43, 'LvHong Kong, Dollars ', 'HKD', 'HK$'),
(44, 'Hungary, Forint', 'HUF', 'Ft'),
(45, 'Iceland, Krona', 'ISK', 'kr'),
(46, 'India, Rupees', 'INR', '₨'),
(47, 'Indonesia, Rupiahs', 'IDR', 'Rp'),
(48, 'Iran, Rials', 'IRR', '﷼'),
(49, 'Isle of Man, Pounds', 'IMP', '£'),
(50, 'Israel, New Shekels', 'ILS', '₪'),
(51, 'Jamaica, Dollars', 'JMD', 'J$'),
(52, 'Japan, Yen', 'JPY', '¥'),
(53, 'Jersey, Pounds', 'JEP', '£'),
(54, 'Kazakhstan, Tenge', 'KZT', 'лв'),
(55, 'Korea (North), Won', 'KPW', '₩'),
(56, 'Korea (South), Won', 'KRW', '₩'),
(57, 'Kyrgyzstan, Soms', 'KGS', 'лв'),
(58, 'Laos, Kips', 'LAK', '₭'),
(59, 'Latvia, Lati', 'LVL', 'Ls'),
(60, 'Lebanon, Pounds', 'LBP', '£'),
(61, 'Liberia, Dollars', 'LRD', '$'),
(62, 'Switzerland Francs', 'CHF', 'CHF'),
(63, 'Lithuania, Litai', 'LTL', 'Lt'),
(64, 'Macedonia, Denars', 'MKD', 'ден'),
(65, 'Malaysia, Ringgits', 'MYR', 'RM'),
(66, 'Mauritius, Rupees', 'MUR', '₨'),
(67, 'Mexico, Pesos', 'MXN', '$'),
(68, 'Mongolia, Tugriks', 'MNT', '₮'),
(69, 'Mozambique, Meticais', 'MZN', 'MT'),
(70, 'Namibia, Dollars', 'NAD', '$'),
(71, 'Nepal, Rupees', 'NPR', '₨'),
(72, 'Netherlands Antilles, Guilders', 'ANG', 'ƒ'),
(73, 'New Zealand, Dollars', 'NZD', '$'),
(74, 'Nicaragua, Cordobas', 'NIO', 'C$'),
(75, 'Nigeria, Nairas', 'NGN', '₦'),
(76, 'North Korea, Won', 'KPW', '₩'),
(77, 'Norway, Krone', 'NOK', 'kr'),
(78, 'Oman, Rials', 'OMR', '﷼'),
(79, 'Pakistan, Rupees', 'PKR', '₨'),
(80, 'Panama, Balboa', 'PAB', 'B/.'),
(81, 'Paraguay, Guarani', 'PYG', 'Gs'),
(82, 'Peru, Nuevos Soles', 'PEN', 'S/.'),
(83, 'Philippines, Pesos', 'PHP', 'Php'),
(84, 'Poland, Zlotych', 'PLN', 'zł'),
(85, 'Romania, New Lei', 'RON', 'lei'),
(86, 'Russia, Rubles', 'RUB', 'руб'),
(87, 'Saint Helena, Pounds', 'SHP', '£'),
(88, 'Saudi Arabia, Riyals', 'SAR', '﷼'),
(89, 'Serbia, Dinars', 'RSD', 'Дин.'),
(90, 'Seychelles, Rupees', 'SCR', '₨'),
(91, 'Singapore, Dollars', 'SGD', '$'),
(92, 'Solomon Islands, Dollars', 'SBD', '$'),
(93, 'Somalia, Shillings', 'SOS', 'S'),
(94, 'South Africa, Rand', 'ZAR', 'R'),
(95, 'South Korea, Won', 'KRW', '₩'),
(96, 'Sri Lanka, Rupees', 'LKR', '₨'),
(97, 'Sweden, Kronor', 'SEK', 'kr'),
(98, 'Switzerland, Francs', 'CHF', 'CHF'),
(99, 'Suriname, Dollars', 'SRD', '$'),
(100, 'Syria, Pounds', 'SYP', '£'),
(101, 'Taiwan, New Dollars', 'TWD', 'NT$'),
(102, 'Thailand, Baht', 'THB', '฿'),
(103, 'Trinidad and Tobago, Dollars', 'TTD', 'TT$'),
(104, 'Turkey, New Lira', 'TRY', 'YTL'),
(105, 'Turkey, Liras', 'TRL', '₤'),
(106, 'Tuvalu, Dollars', 'TVD', '$'),
(107, 'Ukraine, Hryvnia', 'UAH', '₴'),
(108, 'United Kingdom, Pounds', 'GBP', '£'),
(109, 'USA, Dollars', 'USD', '$'),
(110, 'Uruguay, Pesos', 'UYU', '$U'),
(111, 'Uzbekistan, Sums', 'UZS', 'лв'),
(112, 'Venezuela, Bolivares Fuertes', 'VEF', 'Bs'),
(113, 'Vietnam, Dong', 'VND', '₫'),
(114, 'Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_currencies_seq`
--

DROP TABLE IF EXISTS `vtiger_currencies_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_currencies_seq`
--

INSERT INTO `vtiger_currencies_seq` (`id`) VALUES
(114);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_currency`
--

DROP TABLE IF EXISTS `vtiger_currency`;
CREATE TABLE IF NOT EXISTS `vtiger_currency` (
  `currencyid` int(19) NOT NULL auto_increment,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`currencyid`),
  UNIQUE KEY `currency_currency_idx` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_currency`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_currency_info`
--

DROP TABLE IF EXISTS `vtiger_currency_info`;
CREATE TABLE IF NOT EXISTS `vtiger_currency_info` (
  `id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(100) default NULL,
  `currency_code` varchar(100) default NULL,
  `currency_symbol` varchar(30) default NULL,
  `conversion_rate` decimal(10,3) default NULL,
  `currency_status` varchar(25) default NULL,
  `defaultid` varchar(10) NOT NULL default '0',
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_currency_info`
--

INSERT INTO `vtiger_currency_info` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `conversion_rate`, `currency_status`, `defaultid`, `deleted`) VALUES
(1, 'Argentina, Pesos', 'ARS', '$', 1.000, 'Active', '-11', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_currency_info_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_info_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_currency_info_seq`
--

INSERT INTO `vtiger_currency_info_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customaction`
--

DROP TABLE IF EXISTS `vtiger_customaction`;
CREATE TABLE IF NOT EXISTS `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text,
  KEY `customaction_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customaction`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customerdetails`
--

DROP TABLE IF EXISTS `vtiger_customerdetails`;
CREATE TABLE IF NOT EXISTS `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) default NULL,
  `support_start_date` date default NULL,
  `support_end_date` date default NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customerdetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customerportal_fields`
--

DROP TABLE IF EXISTS `vtiger_customerportal_fields`;
CREATE TABLE IF NOT EXISTS `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) default NULL,
  `visible` int(1) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customerportal_fields`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customerportal_prefs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_prefs`;
CREATE TABLE IF NOT EXISTS `vtiger_customerportal_prefs` (
  `tabid` int(11) NOT NULL,
  `prefkey` varchar(100) default NULL,
  `prefvalue` int(20) default NULL,
  KEY `tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customerportal_prefs`
--

INSERT INTO `vtiger_customerportal_prefs` (`tabid`, `prefkey`, `prefvalue`) VALUES
(13, 'showrelatedinfo', 1),
(15, 'showrelatedinfo', 1),
(23, 'showrelatedinfo', 1),
(20, 'showrelatedinfo', 1),
(14, 'showrelatedinfo', 1),
(31, 'showrelatedinfo', 1),
(8, 'showrelatedinfo', 1),
(4, 'showrelatedinfo', 1),
(6, 'showrelatedinfo', 1),
(0, 'userid', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customerportal_tabs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_tabs`;
CREATE TABLE IF NOT EXISTS `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) default '1',
  `sequence` int(1) default NULL,
  PRIMARY KEY  (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customerportal_tabs`
--

INSERT INTO `vtiger_customerportal_tabs` (`tabid`, `visible`, `sequence`) VALUES
(4, 1, 8),
(6, 1, 9),
(8, 1, 7),
(13, 1, 1),
(14, 1, 5),
(15, 1, 2),
(20, 1, 4),
(23, 1, 3),
(31, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customview`
--

DROP TABLE IF EXISTS `vtiger_customview`;
CREATE TABLE IF NOT EXISTS `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) default '0',
  `setmetrics` int(1) default '0',
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) default '1',
  `userid` int(19) default '1',
  PRIMARY KEY  (`cvid`),
  KEY `customview_entitytype_idx` (`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customview`
--

INSERT INTO `vtiger_customview` (`cvid`, `viewname`, `setdefault`, `setmetrics`, `entitytype`, `status`, `userid`) VALUES
(1, 'All', 1, 0, 'Leads', 0, 1),
(2, 'Hot Leads', 0, 1, 'Leads', 3, 1),
(3, 'This Month Leads', 0, 0, 'Leads', 3, 1),
(4, 'All', 1, 0, 'Accounts', 0, 1),
(5, 'Prospect Accounts', 0, 1, 'Accounts', 3, 1),
(6, 'New This Week', 0, 0, 'Accounts', 3, 1),
(7, 'All', 1, 0, 'Contacts', 0, 1),
(8, 'Contacts Address', 0, 0, 'Contacts', 3, 1),
(9, 'Todays Birthday', 0, 0, 'Contacts', 3, 1),
(10, 'All', 1, 0, 'Potentials', 0, 1),
(11, 'Potentials Won', 0, 1, 'Potentials', 3, 1),
(12, 'Prospecting', 0, 0, 'Potentials', 3, 1),
(13, 'All', 1, 0, 'HelpDesk', 0, 1),
(14, 'Open Tickets', 0, 1, 'HelpDesk', 3, 1),
(15, 'High Prioriy Tickets', 0, 0, 'HelpDesk', 3, 1),
(16, 'All', 1, 0, 'Quotes', 0, 1),
(17, 'Open Quotes', 0, 1, 'Quotes', 3, 1),
(18, 'Rejected Quotes', 0, 0, 'Quotes', 3, 1),
(19, 'All', 1, 0, 'Calendar', 0, 1),
(20, 'All', 1, 0, 'Emails', 0, 1),
(21, 'All', 1, 0, 'Invoice', 0, 1),
(22, 'All', 1, 0, 'Documents', 0, 1),
(23, 'All', 1, 0, 'PriceBooks', 0, 1),
(24, 'All', 1, 0, 'Products', 0, 1),
(25, 'All', 1, 0, 'PurchaseOrder', 0, 1),
(26, 'All', 1, 0, 'SalesOrder', 0, 1),
(27, 'All', 1, 0, 'Vendors', 0, 1),
(28, 'All', 1, 0, 'Faq', 0, 1),
(29, 'All', 1, 0, 'Campaigns', 0, 1),
(30, 'All', 1, 0, 'Webmails', 0, 1),
(31, 'Drafted FAQ', 0, 0, 'Faq', 3, 1),
(32, 'Published FAQ', 0, 0, 'Faq', 3, 1),
(33, 'Open Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(34, 'Received Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(35, 'Open Invoices', 0, 0, 'Invoice', 3, 1),
(36, 'Paid Invoices', 0, 0, 'Invoice', 3, 1),
(37, 'Pending Sales Orders', 0, 0, 'SalesOrder', 3, 1),
(38, 'All', 1, 0, 'ServiceContracts', 0, 1),
(39, 'test', 0, 0, 'ServiceContracts', 3, 1),
(40, 'All', 1, 0, 'Services', 0, 1),
(41, 'All', 1, 0, 'PBXManager', 0, 1),
(42, 'Missed', 0, 0, 'PBXManager', 3, 1),
(43, 'Dialed', 0, 0, 'PBXManager', 3, 1),
(44, 'Received', 0, 0, 'PBXManager', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_customview_seq`
--

DROP TABLE IF EXISTS `vtiger_customview_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_customview_seq`
--

INSERT INTO `vtiger_customview_seq` (`id`) VALUES
(44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_cvadvfilter`
--

DROP TABLE IF EXISTS `vtiger_cvadvfilter`;
CREATE TABLE IF NOT EXISTS `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  `comparator` varchar(10) default '',
  `value` varchar(200) default '',
  PRIMARY KEY  (`cvid`,`columnindex`),
  KEY `cvadvfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_cvadvfilter`
--

INSERT INTO `vtiger_cvadvfilter` (`cvid`, `columnindex`, `columnname`, `comparator`, `value`) VALUES
(2, 0, 'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V', 'e', 'Hot'),
(5, 0, 'vtiger_account:account_type:accounttype:Accounts_Type:V', 'e', 'Prospect'),
(11, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Closed Won'),
(12, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Prospecting'),
(14, 0, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V', 'n', 'Closed'),
(15, 0, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V', 'e', 'High'),
(17, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Accepted'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Rejected'),
(18, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'e', 'Rejected'),
(31, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Draft'),
(32, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Published'),
(33, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Created, Approved, Delivered'),
(34, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Received Shipment'),
(35, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Created, Approved, Sent'),
(36, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Paid'),
(37, 0, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V', 'e', 'Created, Approved'),
(42, 0, 'vtiger_pbxmanager:status:status:PBXManager_Status:V', 'e', 'Missed'),
(43, 0, 'vtiger_pbxmanager:status:status:PBXManager_Status:V', 'e', 'outgoing'),
(44, 0, 'vtiger_pbxmanager:status:status:PBXManager_Status:V', 'e', 'incoming');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_cvcolumnlist`
--

DROP TABLE IF EXISTS `vtiger_cvcolumnlist`;
CREATE TABLE IF NOT EXISTS `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  PRIMARY KEY  (`cvid`,`columnindex`),
  KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  KEY `cvcolumnlist_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_cvcolumnlist`
--

INSERT INTO `vtiger_cvcolumnlist` (`cvid`, `columnindex`, `columnname`) VALUES
(1, 0, 'vtiger_leaddetails:lead_no:lead_no:Leads_Lead_No:V'),
(1, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(1, 2, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(1, 3, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(1, 4, 'vtiger_leadaddress:phone:phone:Leads_Phone:V'),
(1, 5, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(1, 6, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(1, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),
(2, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(2, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(2, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(2, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(2, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(2, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(3, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(3, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(3, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(3, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(3, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(3, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(4, 0, 'vtiger_account:account_no:account_no:Accounts_Account_No:V'),
(4, 1, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(4, 2, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(4, 3, 'vtiger_account:website:website:Accounts_Website:V'),
(4, 4, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(4, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(5, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(5, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(5, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(5, 3, 'vtiger_account:rating:rating:Accounts_Rating:V'),
(5, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(6, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(6, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(6, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(6, 3, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(6, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(7, 0, 'vtiger_contactdetails:contact_no:contact_no:Contacts_Contact_Id:V'),
(7, 1, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(7, 2, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(7, 3, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(7, 4, 'vtiger_account:accountname:accountname:Contacts_Account_Name:V'),
(7, 5, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(7, 6, 'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),
(7, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(8, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(8, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(8, 2, 'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),
(8, 3, 'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),
(8, 4, 'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),
(8, 5, 'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),
(8, 6, 'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),
(9, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(9, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(9, 2, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(9, 3, 'vtiger_account:accountname:accountname:Contacts_Account_Name:V'),
(9, 4, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(9, 5, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Phone:V'),
(9, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(10, 0, 'vtiger_potential:potential_no:potential_no:Potentials_Potential_No:V'),
(10, 1, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(10, 2, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(10, 3, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),
(10, 4, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(10, 5, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(10, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(11, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(11, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(11, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(11, 3, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(11, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(12, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(12, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(12, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(12, 3, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(12, 4, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(12, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(13, 0, 'vtiger_troubletickets:ticket_no:ticket_no:HelpDesk_Ticket_No:V'),
(13, 1, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(13, 2, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(13, 3, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(13, 4, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(13, 5, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(14, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(14, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(14, 2, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(14, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(14, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(15, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(15, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(15, 2, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(15, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(15, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(16, 0, 'vtiger_quotes:quote_no:quote_no:Quotes_Quote_No:V'),
(16, 1, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(16, 2, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(16, 3, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(16, 4, 'vtiger_account:accountname:accountname:Quotes_Account_Name:V'),
(16, 5, 'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:I'),
(16, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(17, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(17, 2, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(17, 3, 'vtiger_account:accountname:accountname:Quotes_Account_Name:V'),
(17, 4, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(17, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(18, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(18, 1, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(18, 2, 'vtiger_account:accountname:accountname:Quotes_Account_Name:V'),
(18, 3, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(18, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(19, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V'),
(19, 1, 'vtiger_activity:activitytype:activitytype:Calendar_Type:V'),
(19, 2, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(19, 3, 'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_to:V'),
(19, 4, 'vtiger_activity:date_start:date_start:Calendar_Start_Date:D'),
(19, 5, 'vtiger_activity:due_date:due_date:Calendar_End_Date:D'),
(19, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(20, 0, 'vtiger_activity:subject:subject:Emails_Subject:V'),
(20, 1, 'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),
(20, 2, 'vtiger_activity:date_start:date_start:Emails_Date_Sent:D'),
(21, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(21, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(21, 2, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(21, 3, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(21, 4, 'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:I'),
(21, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(22, 0, 'vtiger_notes:note_no:note_no:Notes_Note_No:V'),
(22, 1, 'vtiger_notes:title:notes_title:Notes_Title:V'),
(22, 2, 'vtiger_notes:filename:filename:Notes_File:V'),
(22, 3, 'vtiger_crmentity:modifiedtime:modifiedtime:Notes_Modified_Time:V'),
(22, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Notes_Assigned_To:V'),
(23, 0, 'vtiger_pricebook:pricebook_no:pricebook_no:PriceBooks_PriceBook_No:V'),
(23, 1, 'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),
(23, 2, 'vtiger_pricebook:active:active:PriceBooks_Active:V'),
(23, 3, 'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:I'),
(24, 0, 'vtiger_products:product_no:product_no:Products_Product_No:V'),
(24, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(24, 2, 'vtiger_products:productcode:productcode:Products_Part_Number:V'),
(24, 3, 'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:V'),
(24, 4, 'vtiger_products:qtyinstock:qtyinstock:Products_Quantity_In_Stock:V'),
(24, 5, 'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:V'),
(24, 6, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:V'),
(25, 0, 'vtiger_purchaseorder:purchaseorder_no:purchaseorder_no:PurchaseOrder_PurchaseOrder_No:V'),
(25, 1, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(25, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(25, 3, 'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),
(25, 4, 'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:V'),
(25, 5, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(26, 0, 'vtiger_salesorder:salesorder_no:salesorder_no:SalesOrder_SalesOrder_No:V'),
(26, 1, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(26, 2, 'vtiger_account:accountname:accountname:SalesOrder_Account_Name:V'),
(26, 3, 'vtiger_quotes:quoteid:quote_id:SalesOrder_Quote_Name:I'),
(26, 4, 'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:V'),
(26, 5, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(27, 0, 'vtiger_vendor:vendor_no:vendor_no:Vendors_Vendor_No:V'),
(27, 1, 'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),
(27, 2, 'vtiger_vendor:phone:phone:Vendors_Phone:V'),
(27, 3, 'vtiger_vendor:email:email:Vendors_Email:E'),
(27, 4, 'vtiger_vendor:category:category:Vendors_Category:V'),
(28, 0, 'vtiger_faq:faq_no:faq_no:Faq_Faq_No:V'),
(28, 1, 'vtiger_faq:question:question:Faq_Question:V'),
(28, 2, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(28, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(28, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:D'),
(28, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:D'),
(29, 0, 'vtiger_campaign:campaign_no:campaign_no:Campaigns_Campaign_No:V'),
(29, 1, 'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),
(29, 2, 'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:N'),
(29, 3, 'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:N'),
(29, 4, 'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:V'),
(29, 5, 'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),
(29, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),
(30, 0, 'subject:subject:subject:Subject:V'),
(30, 1, 'from:fromname:fromname:From:N'),
(30, 2, 'to:tpname:toname:To:N'),
(30, 3, 'body:body:body:Body:V'),
(31, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(31, 1, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(31, 2, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(31, 3, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(31, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:T'),
(32, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(32, 1, 'vtiger_faq:answer:faq_answer:Faq_Answer:V'),
(32, 2, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(32, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(32, 4, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(32, 5, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:T'),
(33, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(33, 1, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(33, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(33, 3, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(33, 4, 'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),
(34, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(34, 1, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(34, 2, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(34, 3, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(34, 4, 'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),
(34, 5, 'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),
(35, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(35, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(35, 2, 'vtiger_account:accountname:accountname:Invoice_Account_Name:V'),
(35, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(35, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(35, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(35, 6, 'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:T'),
(36, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(36, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(36, 2, 'vtiger_account:accountname:accountname:Invoice_Account_Name:V'),
(36, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(36, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(36, 5, 'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),
(36, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(37, 0, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(37, 1, 'vtiger_account:accountname:accountname:SalesOrder_Account_Name:V'),
(37, 2, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),
(37, 3, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(37, 4, 'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),
(37, 5, 'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),
(38, 0, 'vtiger_servicecontracts:contract_no:contract_no:ServiceContracts_Contract_No:V'),
(38, 1, 'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),
(38, 2, 'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),
(38, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(38, 4, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(38, 5, 'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),
(38, 7, 'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),
(38, 8, 'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),
(39, 0, 'vtiger_servicecontracts:contract_no:contract_no:ServiceContracts_Contract_No:V'),
(39, 1, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(39, 2, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(40, 0, 'vtiger_service:service_no:service_no:Services_Service_No:V'),
(40, 1, 'vtiger_service:servicename:servicename:Services_Service_Name:V'),
(40, 2, 'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),
(40, 3, 'vtiger_service:unit_price:unit_price:Services_Price:N'),
(40, 4, 'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),
(40, 5, 'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),
(40, 6, 'vtiger_service:handler:assigned_user_id:Services_Owner:I'),
(41, 0, 'vtiger_pbxmanager:callfrom:callfrom:PBXManager_Call_From:V'),
(41, 1, 'vtiger_pbxmanager:callto:callto:PBXManager_Call_To:V'),
(41, 2, 'vtiger_pbxmanager:timeofcall:timeofcall:PBXManager_Time_Of_Call:V'),
(41, 3, 'vtiger_pbxmanager:status:status:PBXManager_Status:V'),
(42, 0, 'vtiger_pbxmanager:callfrom:callfrom:PBXManager_Call_From:V'),
(42, 1, 'vtiger_pbxmanager:callto:callto:PBXManager_Call_To:V'),
(42, 2, 'vtiger_pbxmanager:timeofcall:timeofcall:PBXManager_Time_Of_Call:V'),
(42, 3, 'vtiger_pbxmanager:status:status:PBXManager_Status:V'),
(43, 0, 'vtiger_pbxmanager:callfrom:callfrom:PBXManager_Call_From:V'),
(43, 1, 'vtiger_pbxmanager:callto:callto:PBXManager_Call_To:V'),
(43, 2, 'vtiger_pbxmanager:timeofcall:timeofcall:PBXManager_Time_Of_Call:V'),
(43, 3, 'vtiger_pbxmanager:status:status:PBXManager_Status:V'),
(44, 0, 'vtiger_pbxmanager:callfrom:callfrom:PBXManager_Call_From:V'),
(44, 1, 'vtiger_pbxmanager:callto:callto:PBXManager_Call_To:V'),
(44, 2, 'vtiger_pbxmanager:timeofcall:timeofcall:PBXManager_Time_Of_Call:V'),
(44, 3, 'vtiger_pbxmanager:status:status:PBXManager_Status:V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_cvstdfilter`
--

DROP TABLE IF EXISTS `vtiger_cvstdfilter`;
CREATE TABLE IF NOT EXISTS `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) default '',
  `stdfilter` varchar(250) default '',
  `startdate` date default NULL,
  `enddate` date default NULL,
  PRIMARY KEY  (`cvid`),
  KEY `cvstdfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_cvstdfilter`
--

INSERT INTO `vtiger_cvstdfilter` (`cvid`, `columnname`, `stdfilter`, `startdate`, `enddate`) VALUES
(3, 'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30'),
(6, 'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time', 'thisweek', '2005-06-19', '2005-06-25'),
(9, 'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate', 'today', '2005-06-25', '2005-06-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_grp2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2grp`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_grp2grp`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_grp2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2role`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_grp2role`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_grp2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2rs`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_grp2rs`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_module_rel`
--

DROP TABLE IF EXISTS `vtiger_datashare_module_rel`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_module_rel_tabid` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_module_rel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_relatedmodules`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) default NULL,
  `relatedto_tabid` int(19) default NULL,
  PRIMARY KEY  (`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_relatedmodules`
--

INSERT INTO `vtiger_datashare_relatedmodules` (`datashare_relatedmodule_id`, `tabid`, `relatedto_tabid`) VALUES
(1, 6, 2),
(2, 6, 13),
(3, 6, 20),
(4, 6, 22),
(5, 6, 23),
(6, 2, 20),
(7, 2, 22),
(8, 20, 22),
(9, 22, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_relatedmodules_seq`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_relatedmodules_seq`
--

INSERT INTO `vtiger_datashare_relatedmodules_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_relatedmodule_permission`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodule_permission`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`,`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_relatedmodule_permission`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_role2group`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2group`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  KEY `idx_datashare_role2group_to_groupid` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_role2group`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_role2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2role`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_role2role`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_role2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2rs`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_role2rs`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_rs2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2grp`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_groupid` int(19) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_rs2grp`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_rs2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2role`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_roleid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_rs2role`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_datashare_rs2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2rs`;
CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) default NULL,
  `to_roleandsubid` varchar(255) default NULL,
  `permission` int(19) default NULL,
  PRIMARY KEY  (`shareid`),
  KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_datashare_rs2rs`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_date_format`
--

DROP TABLE IF EXISTS `vtiger_date_format`;
CREATE TABLE IF NOT EXISTS `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL auto_increment,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`date_formatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_date_format`
--

INSERT INTO `vtiger_date_format` (`date_formatid`, `date_format`, `sortorderid`, `presence`) VALUES
(1, 'dd-mm-yyyy', 0, 1),
(2, 'mm-dd-yyyy', 1, 1),
(3, 'yyyy-mm-dd', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_date_format_seq`
--

DROP TABLE IF EXISTS `vtiger_date_format_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_date_format_seq`
--

INSERT INTO `vtiger_date_format_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_dealintimation`
--

DROP TABLE IF EXISTS `vtiger_dealintimation`;
CREATE TABLE IF NOT EXISTS `vtiger_dealintimation` (
  `dealintimationid` int(19) NOT NULL default '0',
  `dealname` varchar(100) NOT NULL,
  `intimationamount` int(19) NOT NULL default '0',
  `dealprobability` decimal(3,2) NOT NULL default '0.00',
  `dealintimationactive` int(1) default NULL,
  `fromname` varchar(120) NOT NULL,
  `fromemailid` varchar(100) NOT NULL,
  `notifyemails` varchar(50) NOT NULL,
  `notifybccemails` varchar(50) NOT NULL,
  `notifyccmails` varchar(50) NOT NULL,
  `notifypotentialowner` int(1) default NULL,
  PRIMARY KEY  (`dealintimationid`),
  UNIQUE KEY `dealintimation_dealname_idx` (`dealname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_dealintimation`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_defaultcv`
--

DROP TABLE IF EXISTS `vtiger_defaultcv`;
CREATE TABLE IF NOT EXISTS `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text,
  PRIMARY KEY  (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_defaultcv`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_def_org_field`
--

DROP TABLE IF EXISTS `vtiger_def_org_field`;
CREATE TABLE IF NOT EXISTS `vtiger_def_org_field` (
  `tabid` int(10) default NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) default NULL,
  `readonly` int(19) default NULL,
  PRIMARY KEY  (`fieldid`),
  KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  KEY `def_org_field_tabid_idx` (`tabid`),
  KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_def_org_field`
--

INSERT INTO `vtiger_def_org_field` (`tabid`, `fieldid`, `visible`, `readonly`) VALUES
(6, 1, 0, 1),
(6, 2, 0, 1),
(6, 3, 0, 1),
(6, 4, 0, 1),
(6, 5, 0, 1),
(6, 6, 0, 1),
(6, 7, 0, 1),
(6, 8, 0, 1),
(6, 9, 0, 1),
(6, 10, 0, 1),
(6, 11, 0, 1),
(6, 12, 0, 1),
(6, 13, 0, 1),
(6, 14, 0, 1),
(6, 15, 0, 1),
(6, 16, 0, 1),
(6, 17, 0, 1),
(6, 18, 0, 1),
(6, 19, 0, 1),
(6, 20, 0, 1),
(6, 21, 0, 1),
(6, 22, 0, 1),
(6, 23, 0, 1),
(6, 24, 0, 1),
(6, 25, 0, 1),
(6, 26, 0, 1),
(6, 27, 0, 1),
(6, 28, 0, 1),
(6, 29, 0, 1),
(6, 30, 0, 1),
(6, 31, 0, 1),
(6, 32, 0, 1),
(6, 33, 0, 1),
(6, 34, 0, 1),
(6, 35, 0, 1),
(7, 36, 0, 1),
(7, 37, 0, 1),
(7, 38, 0, 1),
(7, 39, 0, 1),
(7, 40, 0, 1),
(7, 41, 0, 1),
(7, 42, 0, 1),
(7, 43, 0, 1),
(7, 44, 0, 1),
(7, 45, 0, 1),
(7, 46, 0, 1),
(7, 47, 0, 1),
(7, 48, 0, 1),
(7, 49, 0, 1),
(7, 50, 0, 1),
(7, 51, 0, 1),
(7, 52, 0, 1),
(7, 53, 0, 1),
(7, 54, 0, 1),
(7, 55, 0, 1),
(7, 56, 0, 1),
(7, 57, 0, 1),
(7, 58, 0, 1),
(7, 59, 0, 1),
(7, 60, 0, 1),
(7, 61, 0, 1),
(7, 62, 0, 1),
(7, 63, 0, 1),
(4, 64, 0, 1),
(4, 65, 0, 1),
(4, 66, 0, 1),
(4, 67, 0, 1),
(4, 68, 0, 1),
(4, 69, 0, 1),
(4, 70, 0, 1),
(4, 71, 0, 1),
(4, 72, 0, 1),
(4, 73, 0, 1),
(4, 74, 0, 1),
(4, 75, 0, 1),
(4, 76, 0, 1),
(4, 77, 0, 1),
(4, 78, 0, 1),
(4, 79, 0, 1),
(4, 80, 0, 1),
(4, 81, 0, 1),
(4, 82, 0, 1),
(4, 83, 0, 1),
(4, 84, 0, 1),
(4, 85, 0, 1),
(4, 86, 0, 1),
(4, 87, 0, 1),
(4, 88, 0, 1),
(4, 89, 0, 1),
(4, 90, 0, 1),
(4, 91, 0, 1),
(4, 92, 0, 1),
(4, 93, 0, 1),
(4, 94, 0, 1),
(4, 95, 0, 1),
(4, 96, 0, 1),
(4, 97, 0, 1),
(4, 98, 0, 1),
(4, 99, 0, 1),
(4, 100, 0, 1),
(4, 101, 0, 1),
(4, 102, 0, 1),
(4, 103, 0, 1),
(4, 104, 0, 1),
(4, 105, 0, 1),
(4, 106, 0, 1),
(2, 107, 0, 1),
(2, 108, 0, 1),
(2, 109, 0, 1),
(2, 110, 0, 1),
(2, 111, 0, 1),
(2, 112, 0, 1),
(2, 113, 0, 1),
(2, 114, 0, 1),
(2, 115, 0, 1),
(2, 116, 0, 1),
(2, 117, 0, 1),
(2, 118, 0, 1),
(2, 119, 0, 1),
(2, 120, 0, 1),
(2, 121, 0, 1),
(26, 122, 0, 1),
(26, 123, 0, 1),
(26, 124, 0, 1),
(26, 125, 0, 1),
(26, 126, 0, 1),
(26, 127, 0, 1),
(26, 128, 0, 1),
(26, 129, 0, 1),
(26, 130, 0, 1),
(26, 131, 0, 1),
(26, 132, 0, 1),
(26, 133, 0, 1),
(26, 134, 0, 1),
(26, 135, 0, 1),
(26, 136, 0, 1),
(26, 137, 0, 1),
(26, 138, 0, 1),
(26, 139, 0, 1),
(26, 140, 0, 1),
(26, 141, 0, 1),
(26, 142, 0, 1),
(26, 143, 0, 1),
(26, 144, 0, 1),
(26, 145, 0, 1),
(13, 146, 0, 1),
(13, 147, 0, 1),
(13, 148, 0, 1),
(13, 149, 0, 1),
(13, 150, 0, 1),
(13, 151, 0, 1),
(13, 152, 0, 1),
(13, 153, 0, 1),
(13, 154, 0, 1),
(13, 155, 0, 1),
(13, 156, 0, 1),
(13, 157, 0, 1),
(13, 158, 0, 1),
(13, 159, 0, 1),
(13, 160, 0, 1),
(13, 161, 0, 1),
(13, 162, 0, 1),
(14, 163, 0, 1),
(14, 164, 0, 1),
(14, 165, 0, 1),
(14, 166, 0, 1),
(14, 167, 0, 1),
(14, 168, 0, 1),
(14, 169, 0, 1),
(14, 170, 0, 1),
(14, 171, 0, 1),
(14, 172, 0, 1),
(14, 173, 0, 1),
(14, 174, 0, 1),
(14, 175, 0, 1),
(14, 176, 0, 1),
(14, 177, 0, 1),
(14, 178, 0, 1),
(14, 179, 0, 1),
(14, 180, 0, 1),
(14, 181, 0, 1),
(14, 182, 0, 1),
(14, 183, 0, 1),
(14, 184, 0, 1),
(14, 185, 0, 1),
(14, 186, 0, 1),
(14, 187, 0, 1),
(14, 188, 0, 1),
(14, 189, 0, 1),
(14, 190, 0, 1),
(14, 191, 0, 1),
(14, 192, 0, 1),
(8, 193, 0, 1),
(8, 194, 0, 1),
(8, 195, 0, 1),
(8, 196, 0, 1),
(8, 197, 0, 1),
(8, 198, 0, 1),
(8, 199, 0, 1),
(8, 200, 0, 1),
(8, 201, 0, 1),
(8, 202, 0, 1),
(8, 203, 0, 1),
(8, 204, 0, 1),
(8, 205, 0, 1),
(8, 206, 0, 1),
(10, 207, 0, 1),
(10, 208, 0, 1),
(10, 209, 0, 1),
(10, 210, 0, 1),
(10, 211, 0, 1),
(10, 212, 0, 1),
(10, 213, 0, 1),
(10, 214, 0, 1),
(10, 215, 0, 1),
(10, 216, 0, 1),
(10, 217, 0, 1),
(10, 218, 0, 1),
(9, 219, 0, 1),
(9, 220, 0, 1),
(9, 221, 0, 1),
(9, 222, 0, 1),
(9, 223, 0, 1),
(9, 224, 0, 1),
(9, 225, 0, 1),
(9, 226, 0, 1),
(9, 227, 0, 1),
(9, 228, 0, 1),
(9, 229, 0, 1),
(9, 230, 0, 1),
(9, 231, 0, 1),
(9, 232, 0, 1),
(9, 233, 0, 1),
(9, 234, 0, 1),
(9, 235, 0, 1),
(9, 236, 0, 1),
(9, 237, 0, 1),
(9, 238, 0, 1),
(9, 239, 0, 1),
(9, 240, 0, 1),
(9, 241, 0, 1),
(16, 242, 0, 1),
(16, 243, 0, 1),
(16, 244, 0, 1),
(16, 245, 0, 1),
(16, 246, 0, 1),
(16, 247, 0, 1),
(16, 248, 0, 1),
(16, 249, 0, 1),
(16, 250, 0, 1),
(16, 251, 0, 1),
(16, 252, 0, 1),
(16, 253, 0, 1),
(16, 254, 0, 1),
(16, 255, 0, 1),
(16, 256, 0, 1),
(16, 257, 0, 1),
(16, 258, 0, 1),
(16, 259, 0, 1),
(16, 260, 0, 1),
(16, 261, 0, 1),
(16, 262, 0, 1),
(16, 263, 0, 1),
(15, 264, 0, 1),
(15, 265, 0, 1),
(15, 266, 0, 1),
(15, 267, 0, 1),
(15, 268, 0, 1),
(15, 269, 0, 1),
(15, 270, 0, 1),
(15, 271, 0, 1),
(15, 272, 0, 1),
(18, 273, 0, 1),
(18, 274, 0, 1),
(18, 275, 0, 1),
(18, 276, 0, 1),
(18, 277, 0, 1),
(18, 278, 0, 1),
(18, 279, 0, 1),
(18, 280, 0, 1),
(18, 281, 0, 1),
(18, 282, 0, 1),
(18, 283, 0, 1),
(18, 284, 0, 1),
(18, 285, 0, 1),
(18, 286, 0, 1),
(18, 287, 0, 1),
(18, 288, 0, 1),
(19, 289, 0, 1),
(19, 290, 0, 1),
(19, 291, 0, 1),
(19, 292, 0, 1),
(19, 293, 0, 1),
(19, 294, 0, 1),
(19, 295, 0, 1),
(20, 296, 0, 1),
(20, 297, 0, 1),
(20, 298, 0, 1),
(20, 299, 0, 1),
(20, 300, 0, 1),
(20, 301, 0, 1),
(20, 302, 0, 1),
(20, 303, 0, 1),
(20, 304, 0, 1),
(20, 305, 0, 1),
(20, 306, 0, 1),
(20, 307, 0, 1),
(20, 308, 0, 1),
(20, 309, 0, 1),
(20, 310, 0, 1),
(20, 311, 0, 1),
(20, 312, 0, 1),
(20, 313, 0, 1),
(20, 314, 0, 1),
(20, 315, 0, 1),
(20, 316, 0, 1),
(20, 317, 0, 1),
(20, 318, 0, 1),
(20, 319, 0, 1),
(20, 320, 0, 1),
(20, 321, 0, 1),
(20, 322, 0, 1),
(20, 323, 0, 1),
(20, 324, 0, 1),
(20, 325, 0, 1),
(20, 326, 0, 1),
(20, 327, 0, 1),
(20, 328, 0, 1),
(20, 329, 0, 1),
(20, 330, 0, 1),
(20, 331, 0, 1),
(21, 332, 0, 1),
(21, 333, 0, 1),
(21, 334, 0, 1),
(21, 335, 0, 1),
(21, 336, 0, 1),
(21, 337, 0, 1),
(21, 338, 0, 1),
(21, 339, 0, 1),
(21, 340, 0, 1),
(21, 341, 0, 1),
(21, 342, 0, 1),
(21, 343, 0, 1),
(21, 344, 0, 1),
(21, 345, 0, 1),
(21, 346, 0, 1),
(21, 347, 0, 1),
(21, 348, 0, 1),
(21, 349, 0, 1),
(21, 350, 0, 1),
(21, 351, 0, 1),
(21, 352, 0, 1),
(21, 353, 0, 1),
(21, 354, 0, 1),
(21, 355, 0, 1),
(21, 356, 0, 1),
(21, 357, 0, 1),
(21, 358, 0, 1),
(21, 359, 0, 1),
(21, 360, 0, 1),
(21, 361, 0, 1),
(21, 362, 0, 1),
(21, 363, 0, 1),
(21, 364, 0, 1),
(21, 365, 0, 1),
(21, 366, 0, 1),
(21, 367, 0, 1),
(21, 368, 0, 1),
(22, 369, 0, 1),
(22, 370, 0, 1),
(22, 371, 0, 1),
(22, 372, 0, 1),
(22, 373, 0, 1),
(22, 374, 0, 1),
(22, 375, 0, 1),
(22, 376, 0, 1),
(22, 377, 0, 1),
(22, 378, 0, 1),
(22, 379, 0, 1),
(22, 380, 0, 1),
(22, 381, 0, 1),
(22, 382, 0, 1),
(22, 383, 0, 1),
(22, 384, 0, 1),
(22, 385, 0, 1),
(22, 386, 0, 1),
(22, 387, 0, 1),
(22, 388, 0, 1),
(22, 389, 0, 1),
(22, 390, 0, 1),
(22, 391, 0, 1),
(22, 392, 0, 1),
(22, 393, 0, 1),
(22, 394, 0, 1),
(22, 395, 0, 1),
(22, 396, 0, 1),
(22, 397, 0, 1),
(22, 398, 0, 1),
(22, 399, 0, 1),
(22, 400, 0, 1),
(22, 401, 0, 1),
(22, 402, 0, 1),
(22, 403, 0, 1),
(22, 404, 0, 1),
(22, 405, 0, 1),
(22, 406, 0, 1),
(22, 407, 0, 1),
(22, 408, 0, 1),
(22, 409, 0, 1),
(22, 410, 0, 1),
(22, 411, 0, 1),
(22, 412, 0, 1),
(22, 413, 0, 1),
(22, 414, 0, 1),
(23, 415, 0, 1),
(23, 416, 0, 1),
(23, 417, 0, 1),
(23, 418, 0, 1),
(23, 419, 0, 1),
(23, 420, 0, 1),
(23, 421, 0, 1),
(23, 422, 0, 1),
(23, 423, 0, 1),
(23, 424, 0, 1),
(23, 425, 0, 1),
(23, 426, 0, 1),
(23, 427, 0, 1),
(23, 428, 0, 1),
(23, 429, 0, 1),
(23, 430, 0, 1),
(23, 431, 0, 1),
(23, 432, 0, 1),
(23, 433, 0, 1),
(23, 434, 0, 1),
(23, 435, 0, 1),
(23, 436, 0, 1),
(23, 437, 0, 1),
(23, 438, 0, 1),
(23, 439, 0, 1),
(23, 440, 0, 1),
(23, 441, 0, 1),
(23, 442, 0, 1),
(23, 443, 0, 1),
(23, 444, 0, 1),
(23, 445, 0, 1),
(23, 446, 0, 1),
(23, 447, 0, 1),
(23, 448, 0, 1),
(23, 449, 0, 1),
(23, 450, 0, 1),
(23, 451, 0, 1),
(23, 452, 0, 1),
(10, 490, 0, 1),
(10, 491, 0, 1),
(10, 492, 0, 1),
(10, 493, 0, 1),
(10, 494, 0, 1),
(10, 495, 0, 1),
(30, 496, 0, 1),
(30, 497, 0, 1),
(30, 498, 0, 1),
(30, 499, 0, 1),
(30, 500, 0, 1),
(30, 501, 0, 1),
(30, 502, 0, 1),
(30, 503, 0, 1),
(30, 504, 0, 1),
(30, 505, 0, 1),
(30, 506, 0, 1),
(30, 507, 0, 1),
(30, 508, 0, 1),
(30, 509, 0, 1),
(30, 510, 0, 1),
(30, 511, 0, 1),
(30, 512, 0, 1),
(30, 513, 0, 1),
(31, 514, 0, 1),
(31, 515, 0, 1),
(31, 516, 0, 1),
(31, 517, 0, 1),
(31, 518, 0, 1),
(31, 519, 0, 1),
(31, 520, 0, 1),
(31, 521, 0, 1),
(31, 522, 0, 1),
(31, 523, 0, 1),
(31, 524, 0, 1),
(31, 525, 0, 1),
(31, 526, 0, 1),
(31, 527, 0, 1),
(31, 528, 0, 1),
(31, 529, 0, 1),
(31, 530, 0, 1),
(31, 531, 0, 1),
(32, 532, 0, 1),
(32, 533, 0, 1),
(32, 534, 0, 1),
(32, 535, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_def_org_share`
--

DROP TABLE IF EXISTS `vtiger_def_org_share`;
CREATE TABLE IF NOT EXISTS `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL auto_increment,
  `tabid` int(11) NOT NULL,
  `permission` int(19) default NULL,
  `editstatus` int(19) default NULL,
  PRIMARY KEY  (`ruleid`),
  KEY `fk_1_vtiger_def_org_share` (`permission`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `vtiger_def_org_share`
--

INSERT INTO `vtiger_def_org_share` (`ruleid`, `tabid`, `permission`, `editstatus`) VALUES
(1, 2, 2, 0),
(2, 4, 2, 2),
(3, 6, 2, 0),
(4, 7, 2, 0),
(5, 9, 3, 1),
(6, 13, 2, 0),
(7, 16, 3, 2),
(8, 20, 2, 0),
(9, 21, 2, 0),
(10, 22, 2, 0),
(11, 23, 2, 0),
(12, 26, 2, 0),
(13, 8, 2, 0),
(14, 30, 2, 0),
(15, 32, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_def_org_share_seq`
--

DROP TABLE IF EXISTS `vtiger_def_org_share_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_def_org_share_seq`
--

INSERT INTO `vtiger_def_org_share_seq` (`id`) VALUES
(15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_downloadpurpose`
--

DROP TABLE IF EXISTS `vtiger_downloadpurpose`;
CREATE TABLE IF NOT EXISTS `vtiger_downloadpurpose` (
  `downloadpurposeid` int(19) NOT NULL auto_increment,
  `purpose` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`downloadpurposeid`),
  UNIQUE KEY `downloadpurpose_purpose_idx` (`purpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_downloadpurpose`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_durationhrs`
--

DROP TABLE IF EXISTS `vtiger_durationhrs`;
CREATE TABLE IF NOT EXISTS `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL auto_increment,
  `hrs` varchar(50) default NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`hrsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_durationhrs`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_durationmins`
--

DROP TABLE IF EXISTS `vtiger_durationmins`;
CREATE TABLE IF NOT EXISTS `vtiger_durationmins` (
  `minsid` int(19) NOT NULL auto_increment,
  `mins` varchar(50) default NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`minsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_durationmins`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_duration_minutes`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes`;
CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL auto_increment,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`minutesid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_duration_minutes`
--

INSERT INTO `vtiger_duration_minutes` (`minutesid`, `duration_minutes`, `sortorderid`, `presence`) VALUES
(1, '00', 0, 1),
(2, '15', 1, 1),
(3, '30', 2, 1),
(4, '45', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_duration_minutes_seq`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_duration_minutes_seq`
--

INSERT INTO `vtiger_duration_minutes_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_emaildetails`
--

DROP TABLE IF EXISTS `vtiger_emaildetails`;
CREATE TABLE IF NOT EXISTS `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL default '',
  `to_email` text,
  `cc_email` text,
  `bcc_email` text,
  `assigned_user_email` varchar(50) NOT NULL default '',
  `idlists` text,
  `email_flag` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_emaildetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_emailtemplates`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates`;
CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates` (
  `foldername` varchar(100) default NULL,
  `templatename` varchar(100) default NULL,
  `subject` varchar(100) default NULL,
  `description` text,
  `body` text,
  `deleted` int(1) NOT NULL default '0',
  `templateid` int(19) NOT NULL auto_increment,
  PRIMARY KEY  (`templateid`),
  KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `vtiger_emailtemplates`
--

INSERT INTO `vtiger_emailtemplates` (`foldername`, `templatename`, `subject`, `description`, `body`, `deleted`, `templateid`) VALUES
('Public', 'Announcement for Release', 'Announcement for Release', 'Announcement of a release', 'Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST', 0, 1),
('Public', 'Pending Invoices', 'Invoices Pending', 'Payment Due', 'name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.', 0, 2),
('Public', 'Acceptance Proposal', 'Acceptance Proposal', 'Acceptance of Proposal', ' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.', 0, 3),
('Public', 'Goods received acknowledgement', 'Goods received acknowledgement', 'Acknowledged Receipt of Goods', ' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>', 0, 4),
('Public', 'Accept Order', 'Accept Order', 'Acknowledgement/Acceptance of Order', ' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.', 0, 5),
('Public', 'Address Change', 'Change of Address', 'Address Change', 'Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.', 0, 6),
('Public', 'Follow Up', 'Follow Up', 'Follow Up of meeting', 'Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.', 0, 7),
('Public', 'Target Crossed!', 'Target Crossed!', 'Fantastic Sales Spree!', 'Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!', 0, 8),
('Public', 'Thanks Note', 'Thanks Note', 'Note of thanks', 'Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.', 0, 9),
('Public', 'Customer Login Details', 'Customer Portal Login Details', 'Send Portal login details to customer', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM<br /> </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contact_name$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"> Thank you very much for subscribing to the vtiger CRM - annual support service.<br />Here is your self service portal login details:</td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center">\n                                                <table width="75%" cellspacing="0" cellpadding="10" border="0" style="border: 2px solid rgb(180, 180, 179); background-color: rgb(226, 226, 225); font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal;">\n                                                        <tr>\n                                                            <td><br />User ID     : <font color="#990000"><strong> $login_name$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td>Password: <font color="#990000"><strong> $password$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td align="center"> <strong>  $URL$<br /> </strong> </td>\n                                                        </tr>\n                                                </table>\n                                                </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"><strong>NOTE:</strong> We suggest you to change your password after logging in first time. <br /><br /> <strong><u>Help Documentation</u></strong><br />  <br /> After logging in to vtiger Self-service Portal first time, you can access the vtiger CRM documents from the <strong>Documents</strong> tab. Following documents are available for your reference:<br />\n                                                <ul>\n                                                    <li>Installation Manual (Windows &amp; Linux OS)<br /> </li>\n                                                    <li>User &amp; Administrator Manual<br /> </li>\n                                                    <li>vtiger Customer Portal - User Manual<br /> </li>\n                                                    <li>vtiger Outlook Plugin - User Manual<br /> </li>\n                                                    <li>vtiger Office Plug-in - User Manual<br /> </li>\n                                                    <li>vtiger Thunderbird Extension - User Manual<br /> </li>\n                                                    <li>vtiger Web Forms - User Manual<br /> </li>\n                                                    <li>vtiger Firefox Tool bar - User Manual<br /> </li>\n                                                </ul>\n                                                <br />  <br /> <strong><u>Knowledge Base</u></strong><br /> <br /> Periodically we update frequently asked question based on our customer experiences. You can access the latest articles from the <strong>FAQ</strong> tab.<br /> <br /> <strong><u>vtiger CRM - Details</u></strong><br /> <br /> Kindly let us know your current vtiger CRM version and system specification so that we can provide you necessary guidelines to enhance your vtiger CRM system performance. Based on your system specification we alert you about the latest security &amp; upgrade patches.<br />  <br />			 Thank you once again and wish you a wonderful experience with vtiger CRM.<br /> </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Best Regards</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">$support_team$ </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:support@vtiger.com">support@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 10),
('Public', 'Support end notification before a week', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a week of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:info@vtiger.com">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 11),
('Public', 'Support end notification before a month', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a month of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a href="http://www.vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a href="mailto:info@vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_emailtemplates_seq`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_emailtemplates_seq`
--

INSERT INTO `vtiger_emailtemplates_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_email_access`
--

DROP TABLE IF EXISTS `vtiger_email_access`;
CREATE TABLE IF NOT EXISTS `vtiger_email_access` (
  `crmid` int(11) default NULL,
  `mailid` int(11) default NULL,
  `accessdate` date default NULL,
  `accesstime` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_email_access`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_email_track`
--

DROP TABLE IF EXISTS `vtiger_email_track`;
CREATE TABLE IF NOT EXISTS `vtiger_email_track` (
  `crmid` int(11) default NULL,
  `mailid` int(11) default NULL,
  `access_count` int(11) default NULL,
  UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_email_track`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_entityname`
--

DROP TABLE IF EXISTS `vtiger_entityname`;
CREATE TABLE IF NOT EXISTS `vtiger_entityname` (
  `tabid` int(19) NOT NULL default '0',
  `modulename` varchar(50) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL,
  PRIMARY KEY  (`tabid`),
  KEY `entityname_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_entityname`
--

INSERT INTO `vtiger_entityname` (`tabid`, `modulename`, `tablename`, `fieldname`, `entityidfield`, `entityidcolumn`) VALUES
(2, 'Potentials', 'vtiger_potential', 'potentialname', 'potentialid', 'potential_id'),
(4, 'Contacts', 'vtiger_contactdetails', 'lastname,firstname', 'contactid', 'contact_id'),
(6, 'Accounts', 'vtiger_account', 'accountname', 'accountid', 'account_id'),
(7, 'Leads', 'vtiger_leaddetails', 'lastname,firstname', 'leadid', 'leadid'),
(8, 'Documents', 'vtiger_notes', 'title', 'notesid', 'notesid'),
(9, 'Calendar', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(10, 'Emails', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(13, 'HelpDesk', 'vtiger_troubletickets', 'title', 'ticketid', 'ticketid'),
(14, 'Products', 'vtiger_products', 'productname', 'productid', 'product_id'),
(15, 'Faq', 'vtiger_faq', 'question', 'id', 'id'),
(18, 'Vendors', 'vtiger_vendor', 'vendorname', 'vendorid', 'vendor_id'),
(19, 'PriceBooks', 'vtiger_pricebook', 'bookname', 'pricebookid', 'pricebookid'),
(20, 'Quotes', 'vtiger_quotes', 'subject', 'quoteid', 'quote_id'),
(21, 'PurchaseOrder', 'vtiger_purchaseorder', 'subject', 'purchaseorderid', 'purchaseorderid'),
(22, 'SalesOrder', 'vtiger_salesorder', 'subject', 'salesorderid', 'salesorder_id'),
(23, 'Invoice', 'vtiger_invoice', 'subject', 'invoiceid', 'invoiceid'),
(26, 'Campaigns', 'vtiger_campaign', 'campaignname', 'campaignid', 'campaignid'),
(29, 'Users', 'vtiger_users', 'last_name,first_name', 'id', 'id'),
(30, 'ServiceContracts', 'vtiger_servicecontracts', 'subject', 'servicecontractsid', 'servicecontractsid'),
(31, 'Services', 'vtiger_service', 'servicename', 'serviceid', 'serviceid'),
(32, 'PBXManager', 'vtiger_pbxmanager', 'callfrom', 'pbxmanagerid', 'pbxmanagerid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_evaluationstatus`
--

DROP TABLE IF EXISTS `vtiger_evaluationstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_evaluationstatus` (
  `evalstatusid` int(19) NOT NULL auto_increment,
  `status` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`evalstatusid`),
  UNIQUE KEY `evaluationstatus_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_evaluationstatus`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventhandlers`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers`;
CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL auto_increment,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY  (`eventhandler_id`,`event_name`,`handler_class`),
  UNIQUE KEY `eventhandler_idx` (`eventhandler_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_eventhandlers`
--

INSERT INTO `vtiger_eventhandlers` (`eventhandler_id`, `event_name`, `handler_path`, `handler_class`, `cond`, `is_active`) VALUES
(1, 'vtiger.entity.aftersave', 'modules/SalesOrder/RecurringInvoiceHandler.php', 'RecurringInvoiceHandler', '', 1),
(2, 'vtiger.entity.aftersave', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1),
(3, 'vtiger.entity.beforesave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1),
(4, 'vtiger.entity.aftersave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1),
(5, 'vtiger.entity.beforesave.modifiable', 'modules/FieldFormulas/VTFieldFormulasEventHandler.inc', 'VTFieldFormulasEventHandler', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventhandlers_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_eventhandlers_seq`
--

INSERT INTO `vtiger_eventhandlers_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventhandler_module`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module`;
CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(100) default NULL,
  `handler_class` varchar(100) default NULL,
  PRIMARY KEY  (`eventhandler_module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_eventhandler_module`
--

INSERT INTO `vtiger_eventhandler_module` (`eventhandler_module_id`, `module_name`, `handler_class`) VALUES
(1, 'ServiceContracts', 'ServiceContractsHandler'),
(2, 'FieldFormulas', 'VTFieldFormulasEventHandler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventhandler_module_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_eventhandler_module_seq`
--

INSERT INTO `vtiger_eventhandler_module_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventstatus`
--

DROP TABLE IF EXISTS `vtiger_eventstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL auto_increment,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`eventstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_eventstatus`
--

INSERT INTO `vtiger_eventstatus` (`eventstatusid`, `eventstatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Planned', 0, 38),
(2, 'Held', 0, 39),
(3, 'Not Held', 0, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_eventstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_eventstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_eventstatus_seq`
--

INSERT INTO `vtiger_eventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_expectedresponse`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse`;
CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL auto_increment,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`expectedresponseid`),
  UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_expectedresponse`
--

INSERT INTO `vtiger_expectedresponse` (`expectedresponseid`, `expectedresponse`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 41),
(2, 'Excellent', 1, 42),
(3, 'Good', 1, 43),
(4, 'Average', 1, 44),
(5, 'Poor', 1, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_expectedresponse_seq`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_expectedresponse_seq`
--

INSERT INTO `vtiger_expectedresponse_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faq`
--

DROP TABLE IF EXISTS `vtiger_faq`;
CREATE TABLE IF NOT EXISTS `vtiger_faq` (
  `id` int(11) NOT NULL auto_increment,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) default NULL,
  `question` text,
  `answer` text,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `faq_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_faq`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faqcategories`
--

DROP TABLE IF EXISTS `vtiger_faqcategories`;
CREATE TABLE IF NOT EXISTS `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL auto_increment,
  `faqcategories` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`faqcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_faqcategories`
--

INSERT INTO `vtiger_faqcategories` (`faqcategories_id`, `faqcategories`, `presence`, `picklist_valueid`) VALUES
(1, 'General', 1, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faqcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_faqcategories_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_faqcategories_seq`
--

INSERT INTO `vtiger_faqcategories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faqcomments`
--

DROP TABLE IF EXISTS `vtiger_faqcomments`;
CREATE TABLE IF NOT EXISTS `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL auto_increment,
  `faqid` int(19) default NULL,
  `comments` text,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY  (`commentid`),
  KEY `faqcomments_faqid_idx` (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_faqcomments`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faqstatus`
--

DROP TABLE IF EXISTS `vtiger_faqstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL auto_increment,
  `faqstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`faqstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_faqstatus`
--

INSERT INTO `vtiger_faqstatus` (`faqstatus_id`, `faqstatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Draft', 0, 47),
(2, 'Reviewed', 0, 48),
(3, 'Published', 0, 49),
(4, 'Obsolete', 0, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_faqstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_faqstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_faqstatus_seq`
--

INSERT INTO `vtiger_faqstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_field`
--

DROP TABLE IF EXISTS `vtiger_field`;
CREATE TABLE IF NOT EXISTS `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL auto_increment,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `generatedtype` int(19) NOT NULL default '0',
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL default '1',
  `selected` int(1) NOT NULL,
  `maximumlength` int(19) default NULL,
  `sequence` int(19) default NULL,
  `block` int(19) default NULL,
  `displaytype` int(19) default NULL,
  `typeofdata` varchar(100) default NULL,
  `quickcreate` int(10) NOT NULL default '1',
  `quickcreatesequence` int(19) default NULL,
  `info_type` varchar(20) default NULL,
  `masseditable` int(10) NOT NULL default '1',
  `helpinfo` text,
  PRIMARY KEY  (`fieldid`),
  KEY `field_tabid_idx` (`tabid`),
  KEY `field_fieldname_idx` (`fieldname`),
  KEY `field_block_idx` (`block`),
  KEY `field_displaytype_idx` (`displaytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=538 ;

--
-- Volcar la base de datos para la tabla `vtiger_field`
--

INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `selected`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`) VALUES
(6, 1, 'accountname', 'vtiger_account', 1, '2', 'accountname', 'Account Name', 1, 0, 0, 100, 1, 9, 1, 'V~M', 0, 1, 'BAS', 0, NULL),
(6, 2, 'account_no', 'vtiger_account', 1, '4', 'account_no', 'Account No', 1, 0, 0, 100, 2, 9, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(6, 3, 'phone', 'vtiger_account', 1, '11', 'phone', 'Phone', 1, 2, 0, 100, 4, 9, 1, 'V~O', 2, 2, 'BAS', 1, NULL),
(6, 4, 'website', 'vtiger_account', 1, '17', 'website', 'Website', 1, 2, 0, 100, 3, 9, 1, 'V~O', 2, 3, 'BAS', 1, NULL),
(6, 5, 'fax', 'vtiger_account', 1, '11', 'fax', 'Fax', 1, 2, 0, 100, 6, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 6, 'tickersymbol', 'vtiger_account', 1, '1', 'tickersymbol', 'Ticker Symbol', 1, 2, 0, 100, 5, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 7, 'otherphone', 'vtiger_account', 1, '11', 'otherphone', 'Other Phone', 1, 2, 0, 100, 8, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 8, 'parentid', 'vtiger_account', 1, '51', 'account_id', 'Member Of', 1, 2, 0, 100, 7, 9, 1, 'I~O', 1, NULL, 'BAS', 0, NULL),
(6, 9, 'email1', 'vtiger_account', 1, '13', 'email1', 'Email', 1, 2, 0, 100, 10, 9, 1, 'E~O', 1, NULL, 'BAS', 1, NULL),
(6, 10, 'employees', 'vtiger_account', 1, '7', 'employees', 'Employees', 1, 2, 0, 100, 9, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(6, 11, 'email2', 'vtiger_account', 1, '13', 'email2', 'Other Email', 1, 2, 0, 100, 11, 9, 1, 'E~O', 1, NULL, 'ADV', 1, NULL),
(6, 12, 'ownership', 'vtiger_account', 1, '1', 'ownership', 'Ownership', 1, 2, 0, 100, 12, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 13, 'rating', 'vtiger_account', 1, '15', 'rating', 'Rating', 1, 2, 0, 100, 14, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 14, 'industry', 'vtiger_account', 1, '15', 'industry', 'industry', 1, 2, 0, 100, 13, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 15, 'siccode', 'vtiger_account', 1, '1', 'siccode', 'SIC Code', 1, 2, 0, 100, 16, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 16, 'account_type', 'vtiger_account', 1, '15', 'accounttype', 'Type', 1, 2, 0, 100, 15, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(6, 17, 'annualrevenue', 'vtiger_account', 1, '71', 'annual_revenue', 'Annual Revenue', 1, 2, 0, 100, 18, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(6, 18, 'emailoptout', 'vtiger_account', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, 0, 100, 17, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(6, 19, 'notify_owner', 'vtiger_account', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, 0, 10, 20, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(6, 20, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 19, 9, 1, 'V~M', 0, 4, 'BAS', 1, NULL),
(6, 21, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 22, 9, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(6, 22, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 21, 9, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(6, 23, 'bill_street', 'vtiger_accountbillads', 1, '21', 'bill_street', 'Billing Address', 1, 2, 0, 100, 1, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 24, 'ship_street', 'vtiger_accountshipads', 1, '21', 'ship_street', 'Shipping Address', 1, 2, 0, 100, 2, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 25, 'bill_city', 'vtiger_accountbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, 0, 100, 5, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 26, 'ship_city', 'vtiger_accountshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, 0, 100, 6, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 27, 'bill_state', 'vtiger_accountbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, 0, 100, 7, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 28, 'ship_state', 'vtiger_accountshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, 0, 100, 8, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 29, 'bill_code', 'vtiger_accountbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, 0, 100, 9, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 30, 'ship_code', 'vtiger_accountshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, 0, 100, 10, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 31, 'bill_country', 'vtiger_accountbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, 0, 100, 11, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 32, 'ship_country', 'vtiger_accountshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, 0, 100, 12, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 33, 'bill_pobox', 'vtiger_accountbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, 0, 100, 3, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 34, 'ship_pobox', 'vtiger_accountshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, 0, 100, 4, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(6, 35, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 12, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 36, 'salutation', 'vtiger_leaddetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, 0, 100, 1, 13, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 37, 'firstname', 'vtiger_leaddetails', 1, '55', 'firstname', 'First Name', 1, 2, 0, 100, 2, 13, 1, 'V~O', 2, 1, 'BAS', 1, NULL),
(7, 38, 'lead_no', 'vtiger_leaddetails', 1, '4', 'lead_no', 'Lead No', 1, 0, 0, 100, 3, 13, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(7, 39, 'phone', 'vtiger_leadaddress', 1, '11', 'phone', 'Phone', 1, 2, 0, 100, 5, 13, 1, 'V~O', 2, 4, 'BAS', 1, NULL),
(7, 40, 'lastname', 'vtiger_leaddetails', 1, '255', 'lastname', 'Last Name', 1, 0, 0, 100, 4, 13, 1, 'V~M', 0, 2, 'BAS', 1, NULL),
(7, 41, 'mobile', 'vtiger_leadaddress', 1, '11', 'mobile', 'Mobile', 1, 2, 0, 100, 7, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 42, 'company', 'vtiger_leaddetails', 1, '2', 'company', 'Company', 1, 2, 0, 100, 6, 13, 1, 'V~M', 2, 3, 'BAS', 1, NULL),
(7, 43, 'fax', 'vtiger_leadaddress', 1, '11', 'fax', 'Fax', 1, 2, 0, 100, 9, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 44, 'designation', 'vtiger_leaddetails', 1, '1', 'designation', 'Designation', 1, 2, 0, 100, 8, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 45, 'email', 'vtiger_leaddetails', 1, '13', 'email', 'Email', 1, 2, 0, 100, 11, 13, 1, 'E~O', 2, 5, 'BAS', 1, NULL),
(7, 46, 'leadsource', 'vtiger_leaddetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, 0, 100, 10, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 47, 'website', 'vtiger_leadsubdetails', 1, '17', 'website', 'Website', 1, 2, 0, 100, 13, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(7, 48, 'industry', 'vtiger_leaddetails', 1, '15', 'industry', 'Industry', 1, 2, 0, 100, 12, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(7, 49, 'leadstatus', 'vtiger_leaddetails', 1, '15', 'leadstatus', 'Lead Status', 1, 2, 0, 100, 15, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 50, 'annualrevenue', 'vtiger_leaddetails', 1, '71', 'annualrevenue', 'Annual Revenue', 1, 2, 0, 100, 14, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(7, 51, 'rating', 'vtiger_leaddetails', 1, '15', 'rating', 'Rating', 1, 2, 0, 100, 17, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(7, 52, 'noofemployees', 'vtiger_leaddetails', 1, '1', 'noofemployees', 'No Of Employees', 1, 2, 0, 100, 16, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(7, 53, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 19, 13, 1, 'V~M', 0, 6, 'BAS', 1, NULL),
(7, 54, 'yahooid', 'vtiger_leaddetails', 1, '13', 'yahooid', 'Yahoo Id', 1, 2, 0, 100, 18, 13, 1, 'E~O', 1, NULL, 'ADV', 1, NULL),
(7, 55, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 21, 13, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(7, 56, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 20, 13, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(7, 57, 'lane', 'vtiger_leadaddress', 1, '21', 'lane', 'Street', 1, 2, 0, 100, 1, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 58, 'code', 'vtiger_leadaddress', 1, '1', 'code', 'Postal Code', 1, 2, 0, 100, 3, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 59, 'city', 'vtiger_leadaddress', 1, '1', 'city', 'City', 1, 2, 0, 100, 4, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 60, 'country', 'vtiger_leadaddress', 1, '1', 'country', 'Country', 1, 2, 0, 100, 5, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 61, 'state', 'vtiger_leadaddress', 1, '1', 'state', 'State', 1, 2, 0, 100, 6, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 62, 'pobox', 'vtiger_leadaddress', 1, '1', 'pobox', 'Po Box', 1, 2, 0, 100, 2, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(7, 63, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 16, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 64, 'salutation', 'vtiger_contactdetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, 0, 100, 1, 4, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 65, 'firstname', 'vtiger_contactdetails', 1, '55', 'firstname', 'First Name', 1, 2, 0, 100, 2, 4, 1, 'V~O', 2, 1, 'BAS', 1, NULL),
(4, 66, 'contact_no', 'vtiger_contactdetails', 1, '4', 'contact_no', 'Contact Id', 1, 0, 0, 100, 3, 4, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(4, 67, 'phone', 'vtiger_contactdetails', 1, '11', 'phone', 'Office Phone', 1, 2, 0, 100, 5, 4, 1, 'V~O', 2, 4, 'BAS', 1, NULL),
(4, 68, 'lastname', 'vtiger_contactdetails', 1, '255', 'lastname', 'Last Name', 1, 0, 0, 100, 4, 4, 1, 'V~M', 0, 2, 'BAS', 1, NULL),
(4, 69, 'mobile', 'vtiger_contactdetails', 1, '11', 'mobile', 'Mobile', 1, 2, 0, 100, 7, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 70, 'accountid', 'vtiger_contactdetails', 1, '51', 'account_id', 'Account Name', 1, 0, 0, 100, 6, 4, 1, 'I~O', 2, 3, 'BAS', 1, NULL),
(4, 71, 'homephone', 'vtiger_contactsubdetails', 1, '11', 'homephone', 'Home Phone', 1, 2, 0, 100, 9, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 72, 'leadsource', 'vtiger_contactsubdetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, 0, 100, 8, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 73, 'otherphone', 'vtiger_contactsubdetails', 1, '11', 'otherphone', 'Other Phone', 1, 2, 0, 100, 11, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 74, 'title', 'vtiger_contactdetails', 1, '1', 'title', 'Title', 1, 2, 0, 100, 10, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 75, 'fax', 'vtiger_contactdetails', 1, '11', 'fax', 'Fax', 1, 2, 0, 100, 13, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 76, 'department', 'vtiger_contactdetails', 1, '1', 'department', 'Department', 1, 2, 0, 100, 12, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 77, 'birthday', 'vtiger_contactsubdetails', 1, '5', 'birthday', 'Birthdate', 1, 2, 0, 100, 16, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 78, 'email', 'vtiger_contactdetails', 1, '13', 'email', 'Email', 1, 2, 0, 100, 15, 4, 1, 'E~O', 2, 5, 'BAS', 1, NULL),
(4, 79, 'reportsto', 'vtiger_contactdetails', 1, '57', 'contact_id', 'Reports To', 1, 2, 0, 100, 18, 4, 1, 'V~O', 1, NULL, 'ADV', 0, NULL),
(4, 80, 'assistant', 'vtiger_contactsubdetails', 1, '1', 'assistant', 'Assistant', 1, 2, 0, 100, 17, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 81, 'yahooid', 'vtiger_contactdetails', 1, '13', 'yahooid', 'Yahoo Id', 1, 2, 0, 100, 20, 4, 1, 'E~O', 1, NULL, 'ADV', 1, NULL),
(4, 82, 'assistantphone', 'vtiger_contactsubdetails', 1, '11', 'assistantphone', 'Assistant Phone', 1, 2, 0, 100, 19, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(4, 83, 'donotcall', 'vtiger_contactdetails', 1, '56', 'donotcall', 'Do Not Call', 1, 2, 0, 100, 22, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(4, 84, 'emailoptout', 'vtiger_contactdetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, 0, 100, 21, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(4, 85, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 24, 4, 1, 'V~M', 0, 6, 'BAS', 1, NULL),
(4, 86, 'reference', 'vtiger_contactdetails', 1, '56', 'reference', 'Reference', 1, 2, 0, 10, 23, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(4, 87, 'notify_owner', 'vtiger_contactdetails', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, 0, 10, 26, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL),
(4, 88, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 25, 4, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(4, 89, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 27, 4, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(4, 90, 'portal', 'vtiger_customerdetails', 1, '56', 'portal', 'Portal User', 1, 2, 0, 100, 1, 6, 1, 'C~O', 1, NULL, 'ADV', 0, NULL),
(4, 91, 'support_start_date', 'vtiger_customerdetails', 1, '5', 'support_start_date', 'Support Start Date', 1, 2, 0, 100, 2, 6, 1, 'D~O', 1, NULL, 'ADV', 1, NULL),
(4, 92, 'support_end_date', 'vtiger_customerdetails', 1, '5', 'support_end_date', 'Support End Date', 1, 2, 0, 100, 3, 6, 1, 'D~O~OTH~GE~support_start_date~Support Start Date', 1, NULL, 'ADV', 1, NULL),
(4, 93, 'mailingstreet', 'vtiger_contactaddress', 1, '21', 'mailingstreet', 'Mailing Street', 1, 2, 0, 100, 1, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 94, 'otherstreet', 'vtiger_contactaddress', 1, '21', 'otherstreet', 'Other Street', 1, 2, 0, 100, 2, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 95, 'mailingcity', 'vtiger_contactaddress', 1, '1', 'mailingcity', 'Mailing City', 1, 2, 0, 100, 5, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 96, 'othercity', 'vtiger_contactaddress', 1, '1', 'othercity', 'Other City', 1, 2, 0, 100, 6, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 97, 'mailingstate', 'vtiger_contactaddress', 1, '1', 'mailingstate', 'Mailing State', 1, 2, 0, 100, 7, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 98, 'otherstate', 'vtiger_contactaddress', 1, '1', 'otherstate', 'Other State', 1, 2, 0, 100, 8, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 99, 'mailingzip', 'vtiger_contactaddress', 1, '1', 'mailingzip', 'Mailing Zip', 1, 2, 0, 100, 9, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 100, 'otherzip', 'vtiger_contactaddress', 1, '1', 'otherzip', 'Other Zip', 1, 2, 0, 100, 10, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 101, 'mailingcountry', 'vtiger_contactaddress', 1, '1', 'mailingcountry', 'Mailing Country', 1, 2, 0, 100, 11, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 102, 'othercountry', 'vtiger_contactaddress', 1, '1', 'othercountry', 'Other Country', 1, 2, 0, 100, 12, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 103, 'mailingpobox', 'vtiger_contactaddress', 1, '1', 'mailingpobox', 'Mailing Po Box', 1, 2, 0, 100, 3, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 104, 'otherpobox', 'vtiger_contactaddress', 1, '1', 'otherpobox', 'Other Po Box', 1, 2, 0, 100, 4, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(4, 105, 'imagename', 'vtiger_contactdetails', 1, '69', 'imagename', 'Contact Image', 1, 2, 0, 100, 1, 73, 1, 'V~O', 3, NULL, 'ADV', 0, NULL),
(4, 106, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 8, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(2, 107, 'potentialname', 'vtiger_potential', 1, '2', 'potentialname', 'Potential Name', 1, 0, 0, 100, 1, 1, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(2, 108, 'potential_no', 'vtiger_potential', 1, '4', 'potential_no', 'Potential No', 1, 0, 0, 100, 2, 1, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(2, 109, 'amount', 'vtiger_potential', 1, '71', 'amount', 'Amount', 1, 2, 0, 100, 4, 1, 1, 'N~O', 2, 5, 'BAS', 1, NULL),
(2, 110, 'related_to', 'vtiger_potential', 1, '10', 'related_to', 'Related To', 1, 0, 0, 100, 3, 1, 1, 'V~M', 0, 2, 'BAS', 1, NULL),
(2, 111, 'closingdate', 'vtiger_potential', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, 0, 100, 7, 1, 1, 'D~M', 2, 3, 'BAS', 1, NULL),
(2, 112, 'potentialtype', 'vtiger_potential', 1, '15', 'opportunity_type', 'Type', 1, 2, 0, 100, 6, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(2, 113, 'nextstep', 'vtiger_potential', 1, '1', 'nextstep', 'Next Step', 1, 2, 0, 100, 9, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(2, 114, 'leadsource', 'vtiger_potential', 1, '15', 'leadsource', 'Lead Source', 1, 2, 0, 100, 8, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(2, 115, 'sales_stage', 'vtiger_potential', 1, '15', 'sales_stage', 'Sales Stage', 1, 2, 0, 100, 11, 1, 1, 'V~M', 2, 4, 'BAS', 1, NULL),
(2, 116, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, 0, 100, 10, 1, 1, 'V~M', 0, 6, 'BAS', 1, NULL),
(2, 117, 'probability', 'vtiger_potential', 1, '9', 'probability', 'Probability', 1, 2, 0, 100, 13, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(2, 118, 'campaignid', 'vtiger_potential', 1, '58', 'campaignid', 'Campaign Source', 1, 2, 0, 100, 12, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(2, 119, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 15, 1, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(2, 120, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 14, 1, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(2, 121, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 3, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(26, 122, 'campaignname', 'vtiger_campaign', 1, '2', 'campaignname', 'Campaign Name', 1, 0, 0, 100, 1, 74, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(26, 123, 'campaign_no', 'vtiger_campaign', 1, '4', 'campaign_no', 'Campaign No', 1, 0, 0, 100, 2, 74, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(26, 124, 'campaigntype', 'vtiger_campaign', 1, '15', 'campaigntype', 'Campaign Type', 1, 2, 0, 100, 5, 74, 1, 'V~O', 2, 3, 'BAS', 1, NULL),
(26, 125, 'product_id', 'vtiger_campaign', 1, '59', 'product_id', 'Product', 1, 2, 0, 100, 6, 74, 1, 'I~O', 2, 5, 'BAS', 1, NULL),
(26, 126, 'campaignstatus', 'vtiger_campaign', 1, '15', 'campaignstatus', 'Campaign Status', 1, 2, 0, 100, 4, 74, 1, 'V~O', 2, 6, 'BAS', 1, NULL),
(26, 127, 'closingdate', 'vtiger_campaign', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, 0, 100, 8, 74, 1, 'D~M', 2, 2, 'BAS', 1, NULL),
(26, 128, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 3, 74, 1, 'V~M', 0, 7, 'BAS', 1, NULL),
(26, 129, 'numsent', 'vtiger_campaign', 1, '9', 'numsent', 'Num Sent', 1, 2, 0, 100, 12, 74, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 130, 'sponsor', 'vtiger_campaign', 1, '1', 'sponsor', 'Sponsor', 1, 2, 0, 100, 9, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(26, 131, 'targetaudience', 'vtiger_campaign', 1, '1', 'targetaudience', 'Target Audience', 1, 2, 0, 100, 7, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(26, 132, 'targetsize', 'vtiger_campaign', 1, '1', 'targetsize', 'TargetSize', 1, 2, 0, 100, 10, 74, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(26, 133, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 11, 74, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(26, 134, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 13, 74, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(26, 135, 'expectedresponse', 'vtiger_campaign', 1, '15', 'expectedresponse', 'Expected Response', 1, 2, 0, 100, 3, 76, 1, 'V~O', 2, 4, 'BAS', 1, NULL),
(26, 136, 'expectedrevenue', 'vtiger_campaign', 1, '1', 'expectedrevenue', 'Expected Revenue', 1, 2, 0, 100, 4, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 137, 'budgetcost', 'vtiger_campaign', 1, '1', 'budgetcost', 'Budget Cost', 1, 2, 0, 100, 1, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 138, 'actualcost', 'vtiger_campaign', 1, '1', 'actualcost', 'Actual Cost', 1, 2, 0, 100, 2, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 139, 'expectedresponsecount', 'vtiger_campaign', 1, '1', 'expectedresponsecount', 'Expected Response Count', 1, 2, 0, 100, 7, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(26, 140, 'expectedsalescount', 'vtiger_campaign', 1, '1', 'expectedsalescount', 'Expected Sales Count', 1, 2, 0, 100, 5, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(26, 141, 'expectedroi', 'vtiger_campaign', 1, '1', 'expectedroi', 'Expected ROI', 1, 2, 0, 100, 9, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 142, 'actualresponsecount', 'vtiger_campaign', 1, '1', 'actualresponsecount', 'Actual Response Count', 1, 2, 0, 100, 8, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(26, 143, 'actualsalescount', 'vtiger_campaign', 1, '1', 'actualsalescount', 'Actual Sales Count', 1, 2, 0, 100, 6, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(26, 144, 'actualroi', 'vtiger_campaign', 1, '1', 'actualroi', 'Actual ROI', 1, 2, 0, 100, 10, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(26, 145, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(13, 146, 'ticket_no', 'vtiger_troubletickets', 1, '4', 'ticket_no', 'Ticket No', 1, 0, 0, 100, 13, 25, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(13, 147, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 4, 25, 1, 'V~M', 0, 4, 'BAS', 1, NULL),
(13, 148, 'parent_id', 'vtiger_troubletickets', 1, '68', 'parent_id', 'Related To', 1, 0, 0, 100, 2, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(13, 149, 'priority', 'vtiger_troubletickets', 1, '15', 'ticketpriorities', 'Priority', 1, 2, 0, 100, 6, 25, 1, 'V~O', 2, 3, 'BAS', 1, NULL),
(13, 150, 'product_id', 'vtiger_troubletickets', 1, '59', 'product_id', 'Product Name', 1, 2, 0, 100, 5, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(13, 151, 'severity', 'vtiger_troubletickets', 1, '15', 'ticketseverities', 'Severity', 1, 2, 0, 100, 8, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(13, 152, 'status', 'vtiger_troubletickets', 1, '15', 'ticketstatus', 'Status', 1, 2, 0, 100, 7, 25, 1, 'V~M', 1, 2, 'BAS', 1, NULL),
(13, 153, 'category', 'vtiger_troubletickets', 1, '15', 'ticketcategories', 'Category', 1, 2, 0, 100, 10, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(13, 154, 'update_log', 'vtiger_troubletickets', 1, '19', 'update_log', 'Update History', 1, 0, 0, 100, 11, 25, 3, 'V~O', 1, NULL, 'BAS', 0, NULL),
(13, 155, 'hours', 'vtiger_troubletickets', 1, '1', 'hours', 'Hours', 1, 2, 0, 100, 9, 25, 1, 'I~O', 1, NULL, 'BAS', 1, 'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.'),
(13, 156, 'days', 'vtiger_troubletickets', 1, '1', 'days', 'Days', 1, 2, 0, 100, 10, 25, 1, 'I~O', 1, NULL, 'BAS', 1, 'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.'),
(13, 157, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 9, 25, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(13, 158, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 12, 25, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(13, 159, 'title', 'vtiger_troubletickets', 1, '22', 'ticket_title', 'Title', 1, 0, 0, 100, 1, 25, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(13, 160, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 28, 1, 'V~O', 2, 4, 'BAS', 1, NULL),
(13, 161, 'solution', 'vtiger_troubletickets', 1, '19', 'solution', 'Solution', 1, 0, 0, 100, 1, 29, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(13, 162, 'comments', 'vtiger_ticketcomments', 1, '19', 'comments', 'Add Comment', 1, 0, 0, 100, 1, 30, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(14, 163, 'productname', 'vtiger_products', 1, '2', 'productname', 'Product Name', 1, 0, 0, 100, 1, 31, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(14, 164, 'product_no', 'vtiger_products', 1, '4', 'product_no', 'Product No', 1, 0, 0, 100, 2, 31, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(14, 165, 'productcode', 'vtiger_products', 1, '1', 'productcode', 'Part Number', 1, 2, 0, 100, 4, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 166, 'discontinued', 'vtiger_products', 1, '56', 'discontinued', 'Product Active', 1, 2, 0, 100, 3, 31, 1, 'V~O', 2, 2, 'BAS', 1, NULL),
(14, 167, 'manufacturer', 'vtiger_products', 1, '15', 'manufacturer', 'Manufacturer', 1, 2, 0, 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 168, 'productcategory', 'vtiger_products', 1, '15', 'productcategory', 'Product Category', 1, 2, 0, 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 169, 'sales_start_date', 'vtiger_products', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, 0, 100, 5, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL),
(14, 170, 'sales_end_date', 'vtiger_products', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, 0, 100, 8, 31, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, NULL),
(14, 171, 'start_date', 'vtiger_products', 1, '5', 'start_date', 'Support Start Date', 1, 2, 0, 100, 7, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL),
(14, 172, 'expiry_date', 'vtiger_products', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, 0, 100, 10, 31, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, NULL),
(14, 173, 'website', 'vtiger_products', 1, '17', 'website', 'Website', 1, 2, 0, 100, 14, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 174, 'vendor_id', 'vtiger_products', 1, '75', 'vendor_id', 'Vendor Name', 1, 2, 0, 100, 13, 31, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(14, 175, 'mfr_part_no', 'vtiger_products', 1, '1', 'mfr_part_no', 'Mfr PartNo', 1, 2, 0, 100, 16, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 176, 'vendor_part_no', 'vtiger_products', 1, '1', 'vendor_part_no', 'Vendor PartNo', 1, 2, 0, 100, 15, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 177, 'serialno', 'vtiger_products', 1, '1', 'serial_no', 'Serial No', 1, 2, 0, 100, 18, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 178, 'productsheet', 'vtiger_products', 1, '1', 'productsheet', 'Product Sheet', 1, 2, 0, 100, 17, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 179, 'glacct', 'vtiger_products', 1, '15', 'glacct', 'GL Account', 1, 2, 0, 100, 20, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(14, 180, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 19, 31, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(14, 181, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 21, 31, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(14, 182, 'unit_price', 'vtiger_products', 1, '71', 'unit_price', 'Unit Price', 1, 2, 0, 100, 1, 32, 1, 'N~O', 2, 3, 'BAS', 0, NULL),
(14, 183, 'commissionrate', 'vtiger_products', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, 0, 100, 2, 32, 1, 'N~O', 1, NULL, 'BAS', 1, NULL),
(14, 184, 'taxclass', 'vtiger_products', 1, '83', 'taxclass', 'Tax Class', 1, 2, 0, 100, 4, 32, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(14, 185, 'usageunit', 'vtiger_products', 1, '15', 'usageunit', 'Usage Unit', 1, 2, 0, 100, 1, 33, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(14, 186, 'qty_per_unit', 'vtiger_products', 1, '1', 'qty_per_unit', 'Qty/Unit', 1, 2, 0, 100, 2, 33, 1, 'N~O', 1, NULL, 'ADV', 1, NULL),
(14, 187, 'qtyinstock', 'vtiger_products', 1, '1', 'qtyinstock', 'Qty In Stock', 1, 2, 0, 100, 3, 33, 1, 'NN~O', 0, 4, 'ADV', 1, NULL),
(14, 188, 'reorderlevel', 'vtiger_products', 1, '1', 'reorderlevel', 'Reorder Level', 1, 2, 0, 100, 4, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(14, 189, 'handler', 'vtiger_products', 1, '52', 'assigned_user_id', 'Handler', 1, 0, 0, 100, 5, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(14, 190, 'qtyindemand', 'vtiger_products', 1, '1', 'qtyindemand', 'Qty In Demand', 1, 2, 0, 100, 6, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL),
(14, 191, 'imagename', 'vtiger_products', 1, '69', 'imagename', 'Product Image', 1, 2, 0, 100, 1, 35, 1, 'V~O', 3, NULL, 'ADV', 0, NULL),
(14, 192, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 36, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(8, 193, 'title', 'vtiger_notes', 1, '2', 'notes_title', 'Title', 1, 0, 0, 100, 1, 17, 1, 'V~M', 0, 1, 'BAS', 0, NULL),
(8, 194, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 5, 17, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(8, 195, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 6, 17, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(8, 196, 'filename', 'vtiger_notes', 1, '28', 'filename', 'File Name', 1, 2, 0, 100, 3, 18, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(8, 197, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 4, 17, 1, 'V~M', 0, 3, 'BAS', 0, NULL),
(8, 198, 'notecontent', 'vtiger_notes', 1, '19', 'notecontent', 'Note', 1, 2, 0, 100, 1, 83, 1, 'V~O', 1, NULL, 'BAS', 0, NULL),
(8, 199, 'filetype', 'vtiger_notes', 1, '1', 'filetype', 'File Type', 1, 2, 0, 100, 5, 18, 2, 'V~O', 3, 0, 'BAS', 0, NULL),
(8, 200, 'filesize', 'vtiger_notes', 1, '1', 'filesize', 'File Size', 1, 2, 0, 100, 4, 18, 2, 'V~O', 3, 0, 'BAS', 0, NULL),
(8, 201, 'filelocationtype', 'vtiger_notes', 1, '27', 'filelocationtype', 'Download Type', 1, 0, 0, 100, 1, 18, 1, 'V~O', 1, 0, 'BAS', 0, NULL),
(8, 202, 'fileversion', 'vtiger_notes', 1, '1', 'fileversion', 'Version', 1, 2, 0, 100, 6, 18, 1, 'V~O', 1, 0, 'BAS', 0, NULL),
(8, 203, 'filestatus', 'vtiger_notes', 1, '56', 'filestatus', 'Active', 1, 2, 0, 100, 2, 18, 1, 'V~O', 1, 0, 'BAS', 0, NULL),
(8, 204, 'filedownloadcount', 'vtiger_notes', 1, '1', 'filedownloadcount', 'Download Count', 1, 2, 0, 100, 7, 18, 2, 'I~O', 3, 0, 'BAS', 0, NULL),
(8, 205, 'folderid', 'vtiger_notes', 1, '26', 'folderid', 'Folder Name', 1, 2, 0, 100, 2, 17, 1, 'V~O', 2, 2, 'BAS', 0, NULL),
(8, 206, 'note_no', 'vtiger_notes', 1, '4', 'note_no', 'Document No', 1, 0, 0, 100, 3, 17, 1, 'V~0', 3, NULL, 'BAS', 0, NULL),
(10, 207, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Date & Time Sent', 1, 0, 0, 100, 1, 21, 1, 'DT~M~time_start~Time Start', 1, NULL, 'BAS', 1, NULL),
(10, 208, 'semodule', 'vtiger_activity', 1, '2', 'parent_type', 'Sales Enity Module', 1, 0, 0, 100, 2, 21, 3, '', 1, NULL, 'BAS', 1, NULL),
(10, 209, 'activitytype', 'vtiger_activity', 1, '2', 'activitytype', 'Activtiy Type', 1, 0, 0, 100, 3, 21, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(10, 210, 'crmid', 'vtiger_seactivityrel', 1, '357', 'parent_id', 'Related To', 1, 0, 0, 100, 1, 22, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(10, 211, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 5, 21, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(10, 212, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 23, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(10, 213, 'name', 'vtiger_attachments', 1, '61', 'filename', 'Attachment', 1, 0, 0, 100, 2, 23, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(10, 214, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, 0, 100, 1, 24, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(10, 215, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, 0, 100, 9, 23, 1, 'T~O', 1, NULL, 'BAS', 1, NULL),
(10, 216, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 10, 22, 1, 'T~O', 3, NULL, 'BAS', 0, NULL),
(10, 217, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 11, 21, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(10, 218, 'access_count', 'vtiger_email_track', 1, '25', 'access_count', 'Access Count', 1, 0, 0, 100, 6, 21, 3, 'V~O', 1, NULL, 'BAS', 0, NULL),
(9, 219, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 19, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(9, 220, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 2, 19, 1, 'V~M', 0, 4, 'BAS', 1, NULL),
(9, 221, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, 0, 100, 3, 19, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL),
(9, 222, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, 0, 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL),
(9, 223, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, 0, 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL),
(9, 224, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'Due Date', 1, 0, 0, 100, 5, 19, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 1, NULL, 'BAS', 1, NULL),
(9, 225, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, 0, 100, 7, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(9, 226, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, 0, 100, 8, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(9, 227, 'status', 'vtiger_activity', 1, '15', 'taskstatus', 'Status', 1, 0, 0, 100, 8, 19, 1, 'V~M', 0, 3, 'BAS', 1, NULL),
(9, 228, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, 0, 100, 9, 19, 3, 'V~M', 1, NULL, 'BAS', 1, NULL),
(9, 229, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, 0, 100, 10, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(9, 230, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, 0, 100, 11, 19, 1, 'C~O', 1, NULL, 'BAS', 1, NULL),
(9, 231, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 14, 19, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(9, 232, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 15, 19, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(9, 233, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, 0, 100, 16, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(9, 234, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, 0, 100, 17, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(9, 235, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, 0, 100, 1, 20, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(9, 236, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, 0, 100, 17, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL),
(9, 237, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, 0, 100, 18, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL),
(9, 238, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, 0, 100, 19, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(9, 239, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, 0, 100, 1, 19, 3, 'I~O', 1, NULL, 'BAS', 1, NULL),
(9, 240, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, 0, 100, 6, 19, 3, 'O~O', 1, NULL, 'BAS', 1, NULL),
(9, 241, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, 0, 100, 20, 19, 3, 'C~O', 1, NULL, 'BAS', 1, NULL),
(16, 242, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 41, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(16, 243, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 2, 41, 1, 'V~M', 0, 6, 'BAS', 1, NULL),
(16, 244, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, 0, 100, 3, 41, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL),
(16, 245, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, 0, 100, 4, 41, 3, 'T~M', 1, NULL, 'BAS', 1, NULL),
(16, 246, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'End Date', 1, 0, 0, 100, 5, 41, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 0, 5, 'BAS', 1, NULL),
(16, 247, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, 0, 100, 5, 41, 3, 'T~M', 1, NULL, 'BAS', 1, NULL),
(16, 248, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, 0, 100, 6, 41, 1, 'O~O', 1, NULL, 'BAS', 1, NULL),
(16, 249, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, 0, 100, 7, 41, 1, 'I~M', 1, NULL, 'BAS', 1, NULL),
(16, 250, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, 0, 100, 8, 41, 3, 'O~O', 1, NULL, 'BAS', 1, NULL),
(16, 251, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, 0, 100, 9, 41, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(16, 252, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, 0, 100, 10, 41, 1, 'V~M', 0, 3, 'BAS', 1, NULL),
(16, 253, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, 0, 100, 11, 41, 1, 'C~O', 1, NULL, 'BAS', 1, NULL),
(16, 254, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, 0, 100, 12, 41, 1, 'V~M', 0, 4, 'BAS', 1, NULL),
(16, 255, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, 0, 100, 13, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(16, 256, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 14, 41, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(16, 257, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 15, 41, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(16, 258, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, 0, 100, 16, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(16, 259, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, 0, 100, 17, 41, 1, 'C~O', 1, NULL, 'BAS', 1, NULL),
(16, 260, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, 0, 100, 18, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(16, 261, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, 0, 100, 1, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(16, 262, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, 0, 100, 1, 40, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(16, 263, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, 0, 100, 1, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(15, 264, 'product_id', 'vtiger_faq', 1, '59', 'product_id', 'Product Name', 1, 2, 0, 100, 1, 37, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(15, 265, 'faq_no', 'vtiger_faq', 1, '4', 'faq_no', 'Faq No', 1, 0, 0, 100, 2, 37, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(15, 266, 'category', 'vtiger_faq', 1, '15', 'faqcategories', 'Category', 1, 2, 0, 100, 4, 37, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(15, 267, 'status', 'vtiger_faq', 1, '15', 'faqstatus', 'Status', 1, 2, 0, 100, 3, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(15, 268, 'question', 'vtiger_faq', 1, '20', 'question', 'Question', 1, 2, 0, 100, 7, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(15, 269, 'answer', 'vtiger_faq', 1, '20', 'faq_answer', 'Answer', 1, 2, 0, 100, 8, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(15, 270, 'comments', 'vtiger_faqcomments', 1, '19', 'comments', 'Add Comment', 1, 0, 0, 100, 1, 38, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(15, 271, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 5, 37, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(15, 272, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 6, 37, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(18, 273, 'vendorname', 'vtiger_vendor', 1, '2', 'vendorname', 'Vendor Name', 1, 0, 0, 100, 1, 42, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(18, 274, 'vendor_no', 'vtiger_vendor', 1, '4', 'vendor_no', 'Vendor No', 1, 0, 0, 100, 2, 42, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(18, 275, 'phone', 'vtiger_vendor', 1, '1', 'phone', 'Phone', 1, 2, 0, 100, 4, 42, 1, 'V~O', 2, 2, 'BAS', 1, NULL),
(18, 276, 'email', 'vtiger_vendor', 1, '13', 'email', 'Email', 1, 2, 0, 100, 3, 42, 1, 'E~O', 2, 3, 'BAS', 1, NULL),
(18, 277, 'website', 'vtiger_vendor', 1, '17', 'website', 'Website', 1, 2, 0, 100, 6, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(18, 278, 'glacct', 'vtiger_vendor', 1, '15', 'glacct', 'GL Account', 1, 2, 0, 100, 5, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(18, 279, 'category', 'vtiger_vendor', 1, '1', 'category', 'Category', 1, 2, 0, 100, 8, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(18, 280, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 7, 42, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(18, 281, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 9, 42, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(18, 282, 'street', 'vtiger_vendor', 1, '21', 'street', 'Street', 1, 2, 0, 100, 1, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 283, 'pobox', 'vtiger_vendor', 1, '1', 'pobox', 'Po Box', 1, 2, 0, 100, 2, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 284, 'city', 'vtiger_vendor', 1, '1', 'city', 'City', 1, 2, 0, 100, 3, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 285, 'state', 'vtiger_vendor', 1, '1', 'state', 'State', 1, 2, 0, 100, 4, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 286, 'postalcode', 'vtiger_vendor', 1, '1', 'postalcode', 'Postal Code', 1, 2, 0, 100, 5, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 287, 'country', 'vtiger_vendor', 1, '1', 'country', 'Country', 1, 2, 0, 100, 6, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(18, 288, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 45, 1, 'V~O', 1, NULL, 'ADV', 1, NULL),
(19, 289, 'bookname', 'vtiger_pricebook', 1, '2', 'bookname', 'Price Book Name', 1, 0, 0, 100, 1, 46, 1, 'V~M', 0, 1, 'BAS', 1, NULL),
(19, 290, 'pricebook_no', 'vtiger_pricebook', 1, '4', 'pricebook_no', 'PriceBook No', 1, 0, 0, 100, 3, 46, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(19, 291, 'active', 'vtiger_pricebook', 1, '56', 'active', 'Active', 1, 2, 0, 100, 2, 46, 1, 'C~O', 2, 2, 'BAS', 1, NULL),
(19, 292, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 4, 46, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(19, 293, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 5, 46, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(19, 294, 'currency_id', 'vtiger_pricebook', 1, '117', 'currency_id', 'Currency', 1, 0, 0, 100, 5, 46, 1, 'I~M', 0, 3, 'BAS', 0, NULL),
(19, 295, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 48, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(20, 296, 'quote_no', 'vtiger_quotes', 1, '4', 'quote_no', 'Quote No', 1, 0, 0, 100, 3, 49, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(20, 297, 'subject', 'vtiger_quotes', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 49, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(20, 298, 'potentialid', 'vtiger_quotes', 1, '76', 'potential_id', 'Potential Name', 1, 2, 0, 100, 2, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(20, 299, 'quotestage', 'vtiger_quotes', 1, '15', 'quotestage', 'Quote Stage', 1, 2, 0, 100, 4, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(20, 300, 'validtill', 'vtiger_quotes', 1, '5', 'validtill', 'Valid Till', 1, 2, 0, 100, 5, 49, 1, 'D~O', 3, NULL, 'BAS', 1, NULL),
(20, 301, 'contactid', 'vtiger_quotes', 1, '57', 'contact_id', 'Contact Name', 1, 2, 0, 100, 6, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 302, 'carrier', 'vtiger_quotes', 1, '15', 'carrier', 'Carrier', 1, 2, 0, 100, 8, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 303, 'subtotal', 'vtiger_quotes', 1, '1', 'hdnSubTotal', 'Sub Total', 1, 2, 0, 100, 9, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 304, 'shipping', 'vtiger_quotes', 1, '1', 'shipping', 'Shipping', 1, 2, 0, 100, 10, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 305, 'inventorymanager', 'vtiger_quotes', 1, '77', 'assigned_user_id1', 'Inventory Manager', 1, 2, 0, 100, 11, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(20, 306, 'adjustment', 'vtiger_quotes', 1, '1', 'txtAdjustment', 'Adjustment', 1, 2, 0, 100, 20, 49, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL),
(20, 307, 'total', 'vtiger_quotes', 1, '1', 'hdnGrandTotal', 'Total', 1, 2, 0, 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 308, 'taxtype', 'vtiger_quotes', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, 0, 100, 14, 49, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 309, 'discount_percent', 'vtiger_quotes', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, 0, 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 310, 'discount_amount', 'vtiger_quotes', 1, '1', 'hdnDiscountAmount', 'Discount Amount', 1, 2, 0, 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 311, 's_h_amount', 'vtiger_quotes', 1, '1', 'hdnS_H_Amount', 'S&H Amount', 1, 2, 0, 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 312, 'accountid', 'vtiger_quotes', 1, '73', 'account_id', 'Account Name', 1, 2, 0, 100, 16, 49, 1, 'I~M', 3, NULL, 'BAS', 1, NULL),
(20, 313, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 17, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(20, 314, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 18, 49, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(20, 315, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 19, 49, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(20, 316, 'currency_id', 'vtiger_quotes', 1, '117', 'currency_id', 'Currency', 1, 2, 1, 100, 20, 49, 3, 'I~O', 3, NULL, 'BAS', 1, NULL),
(20, 317, 'conversion_rate', 'vtiger_quotes', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, 1, 100, 21, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(20, 318, 'bill_street', 'vtiger_quotesbillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, 0, 100, 1, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(20, 319, 'ship_street', 'vtiger_quotesshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, 0, 100, 2, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(20, 320, 'bill_city', 'vtiger_quotesbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, 0, 100, 5, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 321, 'ship_city', 'vtiger_quotesshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, 0, 100, 6, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 322, 'bill_state', 'vtiger_quotesbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, 0, 100, 7, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 323, 'ship_state', 'vtiger_quotesshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, 0, 100, 8, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 324, 'bill_code', 'vtiger_quotesbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, 0, 100, 9, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 325, 'ship_code', 'vtiger_quotesshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, 0, 100, 10, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 326, 'bill_country', 'vtiger_quotesbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, 0, 100, 11, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 327, 'ship_country', 'vtiger_quotesshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, 0, 100, 12, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 328, 'bill_pobox', 'vtiger_quotesbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, 0, 100, 3, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 329, 'ship_pobox', 'vtiger_quotesshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 0, 0, 100, 4, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(20, 330, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 54, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(20, 331, 'terms_conditions', 'vtiger_quotes', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, 0, 100, 1, 53, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(21, 332, 'purchaseorder_no', 'vtiger_purchaseorder', 1, '4', 'purchaseorder_no', 'PurchaseOrder No', 1, 0, 0, 100, 2, 55, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(21, 333, 'subject', 'vtiger_purchaseorder', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(21, 334, 'vendorid', 'vtiger_purchaseorder', 1, '81', 'vendor_id', 'Vendor Name', 1, 0, 0, 100, 3, 55, 1, 'I~M', 3, NULL, 'BAS', 1, NULL),
(21, 335, 'requisition_no', 'vtiger_purchaseorder', 1, '1', 'requisition_no', 'Requisition No', 1, 2, 0, 100, 4, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 336, 'tracking_no', 'vtiger_purchaseorder', 1, '1', 'tracking_no', 'Tracking Number', 1, 2, 0, 100, 5, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 337, 'contactid', 'vtiger_purchaseorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, 0, 100, 6, 55, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(21, 338, 'duedate', 'vtiger_purchaseorder', 1, '5', 'duedate', 'Due Date', 1, 2, 0, 100, 7, 55, 1, 'D~O', 3, NULL, 'BAS', 1, NULL),
(21, 339, 'carrier', 'vtiger_purchaseorder', 1, '15', 'carrier', 'Carrier', 1, 2, 0, 100, 8, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 340, 'adjustment', 'vtiger_purchaseorder', 1, '1', 'txtAdjustment', 'Adjustment', 1, 2, 0, 100, 10, 55, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL),
(21, 341, 'salescommission', 'vtiger_purchaseorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, 0, 100, 11, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 342, 'exciseduty', 'vtiger_purchaseorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, 0, 100, 12, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 343, 'total', 'vtiger_purchaseorder', 1, '1', 'hdnGrandTotal', 'Total', 1, 2, 0, 100, 13, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 344, 'subtotal', 'vtiger_purchaseorder', 1, '1', 'hdnSubTotal', 'Sub Total', 1, 2, 0, 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 345, 'taxtype', 'vtiger_purchaseorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, 0, 100, 14, 55, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 346, 'discount_percent', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, 0, 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 347, 'discount_amount', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountAmount', 'Discount Amount', 1, 0, 0, 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 348, 's_h_amount', 'vtiger_purchaseorder', 1, '1', 'hdnS_H_Amount', 'S&H Amount', 1, 2, 0, 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 349, 'postatus', 'vtiger_purchaseorder', 1, '15', 'postatus', 'Status', 1, 2, 0, 100, 15, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(21, 350, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 16, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(21, 351, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 17, 55, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(21, 352, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 18, 55, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(21, 353, 'currency_id', 'vtiger_purchaseorder', 1, '117', 'currency_id', 'Currency', 1, 2, 1, 100, 19, 55, 3, 'I~O', 3, NULL, 'BAS', 1, NULL),
(21, 354, 'conversion_rate', 'vtiger_purchaseorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, 1, 100, 20, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(21, 355, 'bill_street', 'vtiger_pobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, 0, 100, 1, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(21, 356, 'ship_street', 'vtiger_poshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, 0, 100, 2, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(21, 357, 'bill_city', 'vtiger_pobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, 0, 100, 5, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 358, 'ship_city', 'vtiger_poshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, 0, 100, 6, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 359, 'bill_state', 'vtiger_pobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, 0, 100, 7, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `selected`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`) VALUES
(21, 360, 'ship_state', 'vtiger_poshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, 0, 100, 8, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 361, 'bill_code', 'vtiger_pobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, 0, 100, 9, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 362, 'ship_code', 'vtiger_poshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, 0, 100, 10, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 363, 'bill_country', 'vtiger_pobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, 0, 100, 11, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 364, 'ship_country', 'vtiger_poshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, 0, 100, 12, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 365, 'bill_pobox', 'vtiger_pobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, 0, 100, 3, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 366, 'ship_pobox', 'vtiger_poshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, 0, 100, 4, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(21, 367, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 60, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(21, 368, 'terms_conditions', 'vtiger_purchaseorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, 0, 100, 1, 59, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(22, 369, 'salesorder_no', 'vtiger_salesorder', 1, '4', 'salesorder_no', 'SalesOrder No', 1, 0, 0, 100, 4, 61, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(22, 370, 'subject', 'vtiger_salesorder', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(22, 371, 'potentialid', 'vtiger_salesorder', 1, '76', 'potential_id', 'Potential Name', 1, 2, 0, 100, 2, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(22, 372, 'customerno', 'vtiger_salesorder', 1, '1', 'customerno', 'Customer No', 1, 2, 0, 100, 3, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 373, 'quoteid', 'vtiger_salesorder', 1, '78', 'quote_id', 'Quote Name', 1, 2, 0, 100, 5, 61, 1, 'I~O', 3, NULL, 'BAS', 0, NULL),
(22, 374, 'purchaseorder', 'vtiger_salesorder', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, 0, 100, 5, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 375, 'contactid', 'vtiger_salesorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, 0, 100, 6, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(22, 376, 'duedate', 'vtiger_salesorder', 1, '5', 'duedate', 'Due Date', 1, 2, 0, 100, 8, 61, 1, 'D~O', 3, NULL, 'BAS', 1, NULL),
(22, 377, 'carrier', 'vtiger_salesorder', 1, '15', 'carrier', 'Carrier', 1, 2, 0, 100, 9, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 378, 'pending', 'vtiger_salesorder', 1, '1', 'pending', 'Pending', 1, 2, 0, 100, 10, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 379, 'sostatus', 'vtiger_salesorder', 1, '15', 'sostatus', 'Status', 1, 2, 0, 100, 11, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(22, 380, 'adjustment', 'vtiger_salesorder', 1, '1', 'txtAdjustment', 'Adjustment', 1, 2, 0, 100, 12, 61, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL),
(22, 381, 'salescommission', 'vtiger_salesorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, 0, 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 382, 'exciseduty', 'vtiger_salesorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, 0, 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 383, 'total', 'vtiger_salesorder', 1, '1', 'hdnGrandTotal', 'Total', 1, 2, 0, 100, 14, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 384, 'subtotal', 'vtiger_salesorder', 1, '1', 'hdnSubTotal', 'Sub Total', 1, 2, 0, 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 385, 'taxtype', 'vtiger_salesorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, 0, 100, 15, 61, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 386, 'discount_percent', 'vtiger_salesorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, 0, 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 387, 'discount_amount', 'vtiger_salesorder', 1, '1', 'hdnDiscountAmount', 'Discount Amount', 1, 0, 0, 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 388, 's_h_amount', 'vtiger_salesorder', 1, '1', 'hdnS_H_Amount', 'S&H Amount', 1, 2, 0, 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 389, 'accountid', 'vtiger_salesorder', 1, '73', 'account_id', 'Account Name', 1, 2, 0, 100, 16, 61, 1, 'I~M', 3, NULL, 'BAS', 1, NULL),
(22, 390, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 17, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(22, 391, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 18, 61, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(22, 392, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 19, 61, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(22, 393, 'currency_id', 'vtiger_salesorder', 1, '117', 'currency_id', 'Currency', 1, 2, 1, 100, 20, 61, 3, 'I~O', 3, NULL, 'BAS', 1, NULL),
(22, 394, 'conversion_rate', 'vtiger_salesorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, 1, 100, 21, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(22, 395, 'bill_street', 'vtiger_sobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, 0, 100, 1, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(22, 396, 'ship_street', 'vtiger_soshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, 0, 100, 2, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(22, 397, 'bill_city', 'vtiger_sobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, 0, 100, 5, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 398, 'ship_city', 'vtiger_soshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, 0, 100, 6, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 399, 'bill_state', 'vtiger_sobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, 0, 100, 7, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 400, 'ship_state', 'vtiger_soshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, 0, 100, 8, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 401, 'bill_code', 'vtiger_sobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, 0, 100, 9, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 402, 'ship_code', 'vtiger_soshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, 0, 100, 10, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 403, 'bill_country', 'vtiger_sobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, 0, 100, 11, 63, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 404, 'ship_country', 'vtiger_soshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, 0, 100, 12, 63, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 405, 'bill_pobox', 'vtiger_sobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, 0, 100, 3, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 406, 'ship_pobox', 'vtiger_soshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, 0, 100, 4, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(22, 407, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 66, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(22, 408, 'terms_conditions', 'vtiger_salesorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, 0, 100, 1, 65, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(22, 409, 'enable_recurring', 'vtiger_salesorder', 1, '56', 'enable_recurring', 'Enable Recurring', 1, 0, 0, 100, 1, 84, 1, 'C~O', 3, NULL, 'BAS', 0, NULL),
(22, 410, 'recurring_frequency', 'vtiger_invoice_recurring_info', 1, '16', 'recurring_frequency', 'Frequency', 1, 0, 0, 100, 2, 84, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(22, 411, 'start_period', 'vtiger_invoice_recurring_info', 1, '5', 'start_period', 'Start Period', 1, 0, 0, 100, 3, 84, 1, 'D~O', 3, NULL, 'BAS', 0, NULL),
(22, 412, 'end_period', 'vtiger_invoice_recurring_info', 1, '5', 'end_period', 'End Period', 1, 0, 0, 100, 4, 84, 1, 'D~O~OTH~G~start_period~Start Period', 3, NULL, 'BAS', 0, NULL),
(22, 413, 'payment_duration', 'vtiger_invoice_recurring_info', 1, '16', 'payment_duration', 'Payment Duration', 1, 0, 0, 100, 5, 84, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(22, 414, 'invoice_status', 'vtiger_invoice_recurring_info', 1, '15', 'invoicestatus', 'Invoice Status', 1, 0, 0, 100, 6, 84, 1, 'V~M', 3, NULL, 'BAS', 0, NULL),
(23, 415, 'subject', 'vtiger_invoice', 1, '2', 'subject', 'Subject', 1, 0, 0, 100, 1, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(23, 416, 'salesorderid', 'vtiger_invoice', 1, '80', 'salesorder_id', 'Sales Order', 1, 2, 0, 100, 2, 67, 1, 'I~O', 3, NULL, 'BAS', 0, NULL),
(23, 417, 'customerno', 'vtiger_invoice', 1, '1', 'customerno', 'Customer No', 1, 2, 0, 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 418, 'contactid', 'vtiger_invoice', 1, '57', 'contact_id', 'Contact Name', 1, 2, 0, 100, 4, 67, 1, 'I~O', 3, NULL, 'BAS', 1, NULL),
(23, 419, 'invoicedate', 'vtiger_invoice', 1, '5', 'invoicedate', 'Invoice Date', 1, 2, 0, 100, 5, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL),
(23, 420, 'duedate', 'vtiger_invoice', 1, '5', 'duedate', 'Due Date', 1, 2, 0, 100, 6, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL),
(23, 421, 'purchaseorder', 'vtiger_invoice', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, 0, 100, 8, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 422, 'adjustment', 'vtiger_invoice', 1, '1', 'txtAdjustment', 'Adjustment', 1, 2, 0, 100, 9, 67, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL),
(23, 423, 'salescommission', 'vtiger_invoice', 1, '1', 'salescommission', 'Sales Commission', 1, 2, 0, 10, 13, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 424, 'exciseduty', 'vtiger_invoice', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, 0, 100, 11, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 425, 'subtotal', 'vtiger_invoice', 1, '1', 'hdnSubTotal', 'Sub Total', 1, 2, 0, 100, 12, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 426, 'total', 'vtiger_invoice', 1, '1', 'hdnGrandTotal', 'Total', 1, 2, 0, 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 427, 'taxtype', 'vtiger_invoice', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, 0, 100, 13, 67, 3, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 428, 'discount_percent', 'vtiger_invoice', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, 0, 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 429, 'discount_amount', 'vtiger_invoice', 1, '1', 'hdnDiscountAmount', 'Discount Amount', 1, 2, 0, 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 430, 's_h_amount', 'vtiger_invoice', 1, '1', 'hdnS_H_Amount', 'S&H Amount', 1, 2, 0, 100, 14, 57, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 431, 'accountid', 'vtiger_invoice', 1, '73', 'account_id', 'Account Name', 1, 2, 0, 100, 14, 67, 1, 'I~M', 3, NULL, 'BAS', 1, NULL),
(23, 432, 'invoicestatus', 'vtiger_invoice', 1, '15', 'invoicestatus', 'Status', 1, 2, 0, 100, 15, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 433, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, 0, 100, 16, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(23, 434, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 17, 67, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(23, 435, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 18, 67, 2, 'T~O', 3, NULL, 'BAS', 0, NULL),
(23, 436, 'currency_id', 'vtiger_invoice', 1, '117', 'currency_id', 'Currency', 1, 2, 1, 100, 19, 67, 3, 'I~O', 3, NULL, 'BAS', 1, NULL),
(23, 437, 'conversion_rate', 'vtiger_invoice', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, 1, 100, 20, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL),
(23, 438, 'bill_street', 'vtiger_invoicebillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, 0, 100, 1, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(23, 439, 'ship_street', 'vtiger_invoiceshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, 0, 100, 2, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL),
(23, 440, 'bill_city', 'vtiger_invoicebillads', 1, '1', 'bill_city', 'Billing City', 1, 2, 0, 100, 5, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 441, 'ship_city', 'vtiger_invoiceshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, 0, 100, 6, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 442, 'bill_state', 'vtiger_invoicebillads', 1, '1', 'bill_state', 'Billing State', 1, 2, 0, 100, 7, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 443, 'ship_state', 'vtiger_invoiceshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, 0, 100, 8, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 444, 'bill_code', 'vtiger_invoicebillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, 0, 100, 9, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 445, 'ship_code', 'vtiger_invoiceshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, 0, 100, 10, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 446, 'bill_country', 'vtiger_invoicebillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, 0, 100, 11, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 447, 'ship_country', 'vtiger_invoiceshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, 0, 100, 12, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 448, 'bill_pobox', 'vtiger_invoicebillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, 0, 100, 3, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 449, 'ship_pobox', 'vtiger_invoiceshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, 0, 100, 4, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL),
(23, 450, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 72, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(23, 451, 'terms_conditions', 'vtiger_invoice', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, 0, 100, 1, 71, 1, 'V~O', 3, NULL, 'ADV', 1, NULL),
(23, 452, 'invoice_no', 'vtiger_invoice', 1, '4', 'invoice_no', 'Invoice No', 1, 0, 0, 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(29, 453, 'user_name', 'vtiger_users', 1, '106', 'user_name', 'User Name', 1, 0, 0, 11, 1, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(29, 454, 'is_admin', 'vtiger_users', 1, '156', 'is_admin', 'Admin', 1, 0, 0, 3, 2, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 455, 'user_password', 'vtiger_users', 1, '99', 'user_password', 'Password', 1, 0, 0, 30, 3, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL),
(29, 456, 'confirm_password', 'vtiger_users', 1, '99', 'confirm_password', 'Confirm Password', 1, 0, 0, 30, 5, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL),
(29, 457, 'first_name', 'vtiger_users', 1, '1', 'first_name', 'First Name', 1, 0, 0, 30, 7, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 458, 'last_name', 'vtiger_users', 1, '2', 'last_name', 'Last Name', 1, 0, 0, 30, 9, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(29, 459, 'roleid', 'vtiger_user2role', 1, '98', 'roleid', 'Role', 1, 0, 0, 200, 11, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL),
(29, 460, 'email1', 'vtiger_users', 1, '104', 'email1', 'Email', 1, 0, 0, 100, 4, 77, 1, 'E~M', 1, NULL, 'BAS', 1, NULL),
(29, 461, 'status', 'vtiger_users', 1, '115', 'status', 'Status', 1, 0, 0, 100, 6, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 462, 'activity_view', 'vtiger_users', 1, '16', 'activity_view', 'Default Activity View', 1, 0, 0, 100, 12, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 463, 'lead_view', 'vtiger_users', 1, '16', 'lead_view', 'Default Lead View', 1, 0, 0, 100, 10, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 464, 'currency_id', 'vtiger_users', 1, '116', 'currency_id', 'Currency', 1, 0, 0, 100, 8, 77, 1, 'I~O', 1, NULL, 'BAS', 1, NULL),
(29, 465, 'hour_format', 'vtiger_users', 1, '116', 'hour_format', 'Calendar Hour Format', 1, 0, 0, 100, 13, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 466, 'end_hour', 'vtiger_users', 1, '116', 'end_hour', 'Day ends at', 1, 0, 0, 100, 15, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 467, 'start_hour', 'vtiger_users', 1, '116', 'start_hour', 'Day starts at', 1, 0, 0, 100, 14, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 468, 'title', 'vtiger_users', 1, '1', 'title', 'Title', 1, 0, 0, 50, 1, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 469, 'phone_work', 'vtiger_users', 1, '1', 'phone_work', 'Office Phone', 1, 0, 0, 50, 5, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 470, 'department', 'vtiger_users', 1, '1', 'department', 'Department', 1, 0, 0, 50, 3, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 471, 'phone_mobile', 'vtiger_users', 1, '1', 'phone_mobile', 'Mobile', 1, 0, 0, 50, 7, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 472, 'reports_to_id', 'vtiger_users', 1, '101', 'reports_to_id', 'Reports To', 1, 0, 0, 50, 8, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 473, 'phone_other', 'vtiger_users', 1, '1', 'phone_other', 'Other Phone', 1, 0, 0, 50, 11, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 474, 'email2', 'vtiger_users', 1, '13', 'email2', 'Other Email', 1, 0, 0, 100, 4, 78, 1, 'E~O', 1, NULL, 'BAS', 1, NULL),
(29, 475, 'phone_fax', 'vtiger_users', 1, '1', 'phone_fax', 'Fax', 1, 0, 0, 50, 2, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 476, 'yahoo_id', 'vtiger_users', 1, '13', 'yahoo_id', 'Yahoo id', 1, 0, 0, 100, 6, 78, 1, 'E~O', 1, NULL, 'BAS', 1, NULL),
(29, 477, 'phone_home', 'vtiger_users', 1, '1', 'phone_home', 'Home Phone', 1, 0, 0, 50, 9, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 478, 'date_format', 'vtiger_users', 1, '16', 'date_format', 'Date Format', 1, 0, 0, 30, 12, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 479, 'signature', 'vtiger_users', 1, '21', 'signature', 'Signature', 1, 0, 0, 250, 13, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 480, 'description', 'vtiger_users', 1, '21', 'description', 'Documents', 1, 0, 0, 250, 14, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 481, 'address_street', 'vtiger_users', 1, '21', 'address_street', 'Street Address', 1, 0, 0, 250, 1, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 482, 'address_city', 'vtiger_users', 1, '1', 'address_city', 'City', 1, 0, 0, 100, 3, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 483, 'address_state', 'vtiger_users', 1, '1', 'address_state', 'State', 1, 0, 0, 100, 5, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 484, 'address_postalcode', 'vtiger_users', 1, '1', 'address_postalcode', 'Postal Code', 1, 0, 0, 100, 4, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 485, 'address_country', 'vtiger_users', 1, '1', 'address_country', 'Country', 1, 0, 0, 100, 2, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 486, 'accesskey', 'vtiger_users', 1, '3', 'accesskey', 'Webservice Access Key', 1, 0, 0, 100, 2, 82, 2, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 487, 'imagename', 'vtiger_users', 1, '105', 'imagename', 'User Image', 1, 0, 0, 250, 10, 81, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 488, 'internal_mailer', 'vtiger_users', 1, '56', 'internal_mailer', 'INTERNAL_MAIL_COMPOSER', 1, 0, 0, 50, 15, 78, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 489, 'reminder_interval', 'vtiger_users', 1, '16', 'reminder_interval', 'Reminder Interval', 1, 0, 0, 100, 1, 82, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(10, 490, 'from_email', 'vtiger_emaildetails', 1, '12', 'from_email', 'From', 1, 2, 0, 100, 1, 87, 3, 'V~M', 3, NULL, 'BAS', 0, NULL),
(10, 491, 'to_email', 'vtiger_emaildetails', 1, '8', 'saved_toid', 'To', 1, 2, 0, 100, 2, 87, 1, 'V~M', 3, NULL, 'BAS', 0, NULL),
(10, 492, 'cc_email', 'vtiger_emaildetails', 1, '8', 'ccmail', 'CC', 1, 2, 0, 1000, 3, 87, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(10, 493, 'bcc_email', 'vtiger_emaildetails', 1, '8', 'bccmail', 'BCC', 1, 2, 0, 1000, 4, 87, 1, 'V~O', 3, NULL, 'BAS', 0, NULL),
(10, 494, 'idlists', 'vtiger_emaildetails', 1, '1', 'parent_id', 'Parent ID', 1, 2, 0, 1000, 5, 87, 3, 'V~O', 3, NULL, 'BAS', 0, NULL),
(10, 495, 'email_flag', 'vtiger_emaildetails', 1, '16', 'email_flag', 'Email Flag', 1, 2, 0, 1000, 6, 87, 3, 'V~O', 3, NULL, 'BAS', 0, NULL),
(30, 496, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, 0, 100, 4, 88, 1, 'V~M', 2, 2, 'BAS', 1, ''),
(30, 497, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 17, 88, 2, 'V~O', 3, 0, 'BAS', 0, ''),
(30, 498, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 18, 88, 2, 'V~O', 3, 0, 'BAS', 0, ''),
(30, 499, 'start_date', 'vtiger_servicecontracts', 1, '5', 'start_date', 'Start Date', 1, 2, 0, 100, 7, 88, 1, 'D~O', 2, 4, 'BAS', 1, ''),
(30, 500, 'end_date', 'vtiger_servicecontracts', 1, '5', 'end_date', 'End Date', 1, 2, 0, 100, 11, 88, 2, 'D~O', 3, 0, 'BAS', 0, ''),
(30, 501, 'sc_related_to', 'vtiger_servicecontracts', 1, '10', 'sc_related_to', 'Related to', 1, 2, 0, 100, 3, 88, 1, 'V~O', 2, 6, 'BAS', 1, ''),
(30, 502, 'tracking_unit', 'vtiger_servicecontracts', 1, '15', 'tracking_unit', 'Tracking Unit', 1, 2, 0, 100, 6, 88, 1, 'V~O', 2, 7, 'BAS', 1, ''),
(30, 503, 'total_units', 'vtiger_servicecontracts', 1, '7', 'total_units', 'Total Units', 1, 2, 0, 100, 8, 88, 1, 'V~O', 2, 8, 'BAS', 1, ''),
(30, 504, 'used_units', 'vtiger_servicecontracts', 1, '7', 'used_units', 'Used Units', 1, 2, 0, 100, 10, 88, 1, 'V~O', 2, 9, 'BAS', 1, ''),
(30, 505, 'subject', 'vtiger_servicecontracts', 1, '1', 'subject', 'Subject', 1, 0, 0, 100, 1, 88, 1, 'V~M', 0, 1, 'BAS', 1, ''),
(30, 506, 'due_date', 'vtiger_servicecontracts', 1, '23', 'due_date', 'Due date', 1, 2, 0, 100, 9, 88, 1, 'D~O', 2, 5, 'BAS', 1, ''),
(30, 507, 'planned_duration', 'vtiger_servicecontracts', 1, '1', 'planned_duration', 'Planned Duration', 1, 2, 0, 100, 13, 88, 2, 'V~O', 3, 0, 'BAS', 0, ''),
(30, 508, 'actual_duration', 'vtiger_servicecontracts', 1, '1', 'actual_duration', 'Actual Duration', 1, 2, 0, 100, 15, 88, 2, 'V~O', 3, 0, 'BAS', 0, ''),
(30, 509, 'contract_status', 'vtiger_servicecontracts', 1, '15', 'contract_status', 'Status', 1, 2, 0, 100, 12, 88, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(30, 510, 'priority', 'vtiger_servicecontracts', 1, '15', 'contract_priority', 'Priority', 1, 2, 0, 100, 14, 88, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(30, 511, 'contract_type', 'vtiger_servicecontracts', 1, '15', 'contract_type', 'Type', 1, 2, 0, 100, 5, 88, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(30, 512, 'progress', 'vtiger_servicecontracts', 1, '9', 'progress', 'Progress', 1, 2, 0, 100, 16, 88, 2, 'N~O~2~2', 3, 3, 'BAS', 0, ''),
(30, 513, 'contract_no', 'vtiger_servicecontracts', 1, '4', 'contract_no', 'Contract No', 1, 0, 0, 100, 2, 88, 1, 'V~O', 3, 0, 'BAS', 0, ''),
(31, 514, 'servicename', 'vtiger_service', 1, '2', 'servicename', 'Service Name', 1, 0, 0, 100, 1, 90, 1, 'V~M', 0, 1, 'BAS', 1, ''),
(31, 515, 'service_no', 'vtiger_service', 1, '4', 'service_no', 'Service No', 1, 0, 0, 100, 2, 90, 1, 'V~O', 3, 0, 'BAS', 0, ''),
(31, 516, 'discontinued', 'vtiger_service', 1, '56', 'discontinued', 'Service Active', 1, 2, 0, 100, 4, 90, 1, 'V~O', 2, 3, 'BAS', 1, ''),
(31, 517, 'sales_start_date', 'vtiger_service', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, 0, 100, 9, 90, 1, 'D~O', 1, NULL, 'BAS', 1, ''),
(31, 518, 'sales_end_date', 'vtiger_service', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, 0, 100, 10, 90, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, ''),
(31, 519, 'start_date', 'vtiger_service', 1, '5', 'start_date', 'Support Start Date', 1, 2, 0, 100, 11, 90, 1, 'D~O', 1, NULL, 'BAS', 1, ''),
(31, 520, 'expiry_date', 'vtiger_service', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, 0, 100, 12, 90, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, ''),
(31, 521, 'website', 'vtiger_service', 1, '17', 'website', 'Website', 1, 2, 0, 100, 6, 90, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(31, 522, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, 0, 100, 13, 90, 2, 'T~O', 3, 0, 'BAS', 0, ''),
(31, 523, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, 0, 100, 14, 90, 2, 'T~O', 3, 0, 'BAS', 0, ''),
(31, 524, 'service_usageunit', 'vtiger_service', 1, '15', 'service_usageunit', 'Usage Unit', 1, 2, 0, 100, 3, 90, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(31, 525, 'qty_per_unit', 'vtiger_service', 1, '1', 'qty_per_unit', 'No of Units', 1, 2, 0, 100, 5, 90, 1, 'N~O', 1, NULL, 'BAS', 1, ''),
(31, 526, 'handler', 'vtiger_service', 1, '52', 'assigned_user_id', 'Owner', 1, 0, 0, 100, 8, 90, 1, 'I~O', 1, NULL, 'BAS', 1, ''),
(31, 527, 'servicecategory', 'vtiger_service', 1, '15', 'servicecategory', 'Service Category', 1, 2, 0, 100, 7, 90, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(31, 528, 'unit_price', 'vtiger_service', 1, '71', 'unit_price', 'Price', 1, 2, 0, 100, 1, 91, 1, 'N~O', 2, 2, 'BAS', 0, ''),
(31, 529, 'taxclass', 'vtiger_service', 1, '83', 'taxclass', 'Tax Class', 1, 2, 0, 100, 4, 91, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(31, 530, 'commissionrate', 'vtiger_service', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, 0, 100, 2, 91, 1, 'N~O', 1, NULL, 'BAS', 1, ''),
(31, 531, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, 0, 100, 1, 93, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(32, 532, 'callfrom', 'vtiger_pbxmanager', 1, '2', 'callfrom', 'Call From', 1, 0, 0, 100, 1, 94, 1, 'V~M', 1, NULL, 'BAS', 1, ''),
(32, 533, 'callto', 'vtiger_pbxmanager', 1, '2', 'callto', 'Call To', 1, 0, 0, 100, 2, 94, 1, 'V~M', 1, NULL, 'BAS', 1, ''),
(32, 534, 'timeofcall', 'vtiger_pbxmanager', 1, '2', 'timeofcall', 'Time Of Call', 1, 0, 0, 100, 3, 94, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(32, 535, 'status', 'vtiger_pbxmanager', 1, '2', 'status', 'Status', 1, 0, 0, 100, 4, 94, 1, 'V~O', 1, NULL, 'BAS', 1, ''),
(29, 536, 'asterisk_extension', 'vtiger_asteriskextensions', 1, '1', 'asterisk_extension', 'Asterisk Extension', 1, 0, 0, 30, 1, 96, 1, 'V~O', 1, NULL, 'BAS', 1, NULL),
(29, 537, 'use_asterisk', 'vtiger_asteriskextensions', 1, '56', 'use_asterisk', ' Receive Incoming Calls', 1, 0, 0, 30, 2, 96, 1, 'C~O', 1, NULL, 'BAS', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_fieldformulas`
--

DROP TABLE IF EXISTS `vtiger_fieldformulas`;
CREATE TABLE IF NOT EXISTS `vtiger_fieldformulas` (
  `expressionid` int(11) NOT NULL default '0',
  `modulename` varchar(100) default NULL,
  `expression_engine` text,
  PRIMARY KEY  (`expressionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_fieldformulas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_fieldmodulerel`
--

DROP TABLE IF EXISTS `vtiger_fieldmodulerel`;
CREATE TABLE IF NOT EXISTS `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) default NULL,
  `sequence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_fieldmodulerel`
--

INSERT INTO `vtiger_fieldmodulerel` (`fieldid`, `module`, `relmodule`, `status`, `sequence`) VALUES
(110, 'Potentials', 'Accounts', NULL, 0),
(110, 'Potentials', 'Contacts', NULL, 1),
(501, 'ServiceContracts', 'Contacts', NULL, NULL),
(501, 'ServiceContracts', 'Accounts', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_field_seq`
--

DROP TABLE IF EXISTS `vtiger_field_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_field_seq`
--

INSERT INTO `vtiger_field_seq` (`id`) VALUES
(537);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_files`
--

DROP TABLE IF EXISTS `vtiger_files`;
CREATE TABLE IF NOT EXISTS `vtiger_files` (
  `id` varchar(36) NOT NULL,
  `name` varchar(36) default NULL,
  `content` longblob,
  `deleted` int(1) NOT NULL default '0',
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `assigned_user_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `files_assigned_user_id_name_deleted_idx` (`assigned_user_id`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_files`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_freetagged_objects`
--

DROP TABLE IF EXISTS `vtiger_freetagged_objects`;
CREATE TABLE IF NOT EXISTS `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL default '0',
  `tagger_id` int(20) NOT NULL default '0',
  `object_id` int(20) NOT NULL default '0',
  `tagged_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `module` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`tag_id`,`tagger_id`,`object_id`),
  KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_freetagged_objects`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_freetags`
--

DROP TABLE IF EXISTS `vtiger_freetags`;
CREATE TABLE IF NOT EXISTS `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL default '',
  `raw_tag` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_freetags`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_freetags_seq`
--

DROP TABLE IF EXISTS `vtiger_freetags_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_freetags_seq`
--

INSERT INTO `vtiger_freetags_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_glacct`
--

DROP TABLE IF EXISTS `vtiger_glacct`;
CREATE TABLE IF NOT EXISTS `vtiger_glacct` (
  `glacctid` int(19) NOT NULL auto_increment,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`glacctid`),
  UNIQUE KEY `glacct_glacct_idx` (`glacct`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `vtiger_glacct`
--

INSERT INTO `vtiger_glacct` (`glacctid`, `glacct`, `presence`, `picklist_valueid`) VALUES
(1, '300-Sales-Software', 1, 51),
(2, '301-Sales-Hardware', 1, 52),
(3, '302-Rental-Income', 1, 53),
(4, '303-Interest-Income', 1, 54),
(5, '304-Sales-Software-Support', 1, 55),
(6, '305-Sales Other', 1, 56),
(7, '306-Internet Sales', 1, 57),
(8, '307-Service-Hardware Labor', 1, 58),
(9, '308-Sales-Books', 1, 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_glacct_seq`
--

DROP TABLE IF EXISTS `vtiger_glacct_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_glacct_seq`
--

INSERT INTO `vtiger_glacct_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_group2grouprel`
--

DROP TABLE IF EXISTS `vtiger_group2grouprel`;
CREATE TABLE IF NOT EXISTS `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL,
  PRIMARY KEY  (`groupid`,`containsgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_group2grouprel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_group2role`
--

DROP TABLE IF EXISTS `vtiger_group2role`;
CREATE TABLE IF NOT EXISTS `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY  (`groupid`,`roleid`),
  KEY `fk_2_vtiger_group2role` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_group2role`
--

INSERT INTO `vtiger_group2role` (`groupid`, `roleid`) VALUES
(4, 'H2'),
(5, 'H3'),
(3, 'H4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_group2rs`
--

DROP TABLE IF EXISTS `vtiger_group2rs`;
CREATE TABLE IF NOT EXISTS `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL,
  PRIMARY KEY  (`groupid`,`roleandsubid`),
  KEY `fk_2_vtiger_group2rs` (`roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_group2rs`
--

INSERT INTO `vtiger_group2rs` (`groupid`, `roleandsubid`) VALUES
(4, 'H3'),
(5, 'H3'),
(3, 'H5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_groups`
--

DROP TABLE IF EXISTS `vtiger_groups`;
CREATE TABLE IF NOT EXISTS `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) default NULL,
  `description` text,
  PRIMARY KEY  (`groupid`),
  UNIQUE KEY `groups_groupname_idx` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_groups`
--

INSERT INTO `vtiger_groups` (`groupid`, `groupname`, `description`) VALUES
(3, 'Team Selling', 'Group Related to Sales'),
(4, 'Marketing Group', 'Group Related to Marketing Activities'),
(5, 'Support Group', 'Group Related to providing Support to Customers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_headers`
--

DROP TABLE IF EXISTS `vtiger_headers`;
CREATE TABLE IF NOT EXISTS `vtiger_headers` (
  `fileid` int(3) NOT NULL auto_increment,
  `headernames` varchar(30) NOT NULL,
  PRIMARY KEY  (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_headers`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homedashbd`
--

DROP TABLE IF EXISTS `vtiger_homedashbd`;
CREATE TABLE IF NOT EXISTS `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL default '0',
  `dashbdname` varchar(100) default NULL,
  `dashbdtype` varchar(100) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homedashbd`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homedefault`
--

DROP TABLE IF EXISTS `vtiger_homedefault`;
CREATE TABLE IF NOT EXISTS `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL default '0',
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) default NULL,
  `setype` varchar(30) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homedefault`
--

INSERT INTO `vtiger_homedefault` (`stuffid`, `hometype`, `maxentries`, `setype`) VALUES
(1, 'LTFAQ', 5, 'Faq'),
(2, 'PA', 5, 'Calendar'),
(3, 'OLTPO', 5, 'PurchaseOrder'),
(4, 'MNL', 5, 'Leads'),
(5, 'ILTI', 5, 'Invoice'),
(6, 'OLTSO', 5, 'SalesOrder'),
(7, 'GRT', 5, 'NULL'),
(8, 'UA', 5, 'Calendar'),
(9, 'HLT', 5, 'HelpDesk'),
(10, 'CVLVT', 5, 'NULL'),
(11, 'QLTQ', 5, 'Quotes'),
(12, 'PLVT', 5, 'Potentials'),
(13, 'HDB', 5, 'Dashboard'),
(14, 'ALVT', 5, 'Accounts'),
(16, 'LTFAQ', 5, 'Faq'),
(17, 'PA', 5, 'Calendar'),
(18, 'OLTPO', 5, 'PurchaseOrder'),
(19, 'MNL', 5, 'Leads'),
(20, 'ILTI', 5, 'Invoice'),
(21, 'OLTSO', 5, 'SalesOrder'),
(22, 'GRT', 5, 'NULL'),
(23, 'UA', 5, 'Calendar'),
(24, 'HLT', 5, 'HelpDesk'),
(25, 'CVLVT', 5, 'NULL'),
(26, 'QLTQ', 5, 'Quotes'),
(27, 'PLVT', 5, 'Potentials'),
(28, 'HDB', 5, 'Dashboard'),
(29, 'ALVT', 5, 'Accounts');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homemodule`
--

DROP TABLE IF EXISTS `vtiger_homemodule`;
CREATE TABLE IF NOT EXISTS `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) default NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homemodule`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homemoduleflds`
--

DROP TABLE IF EXISTS `vtiger_homemoduleflds`;
CREATE TABLE IF NOT EXISTS `vtiger_homemoduleflds` (
  `stuffid` int(19) default NULL,
  `fieldname` varchar(100) default NULL,
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homemoduleflds`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homerss`
--

DROP TABLE IF EXISTS `vtiger_homerss`;
CREATE TABLE IF NOT EXISTS `vtiger_homerss` (
  `stuffid` int(19) NOT NULL default '0',
  `url` varchar(100) default NULL,
  `maxentries` int(19) NOT NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homerss`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homestuff`
--

DROP TABLE IF EXISTS `vtiger_homestuff`;
CREATE TABLE IF NOT EXISTS `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL default '0',
  `stuffsequence` int(19) NOT NULL default '0',
  `stufftype` varchar(100) default NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL default '0',
  `stufftitle` varchar(100) default NULL,
  PRIMARY KEY  (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`),
  KEY `fk_1_vtiger_homestuff` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homestuff`
--

INSERT INTO `vtiger_homestuff` (`stuffid`, `stuffsequence`, `stufftype`, `userid`, `visible`, `stufftitle`) VALUES
(1, 1, 'Default', 1, 0, 'My Recent FAQs'),
(2, 2, 'Default', 1, 0, 'Pending Activities'),
(3, 3, 'Default', 1, 0, 'Top Purchase Orders'),
(4, 4, 'Default', 1, 0, 'My New Leads'),
(5, 5, 'Default', 1, 0, 'Top Invoices'),
(6, 6, 'Default', 1, 0, 'Top Sales Orders'),
(7, 7, 'Default', 1, 1, 'My Group Allocation'),
(8, 8, 'Default', 1, 0, 'Upcoming Activities'),
(9, 9, 'Default', 1, 0, 'Top Trouble Tickets'),
(10, 10, 'Default', 1, 0, 'Key Metrics'),
(11, 11, 'Default', 1, 0, 'Top Quotes'),
(12, 12, 'Default', 1, 0, 'Top Potentials'),
(13, 13, 'Default', 1, 1, 'Home Page Dashboard'),
(14, 14, 'Default', 1, 0, 'Top Accounts'),
(15, 15, 'Tag Cloud', 1, 0, 'Tag Cloud'),
(16, 1, 'Default', 2, 0, 'My Recent FAQs'),
(17, 2, 'Default', 2, 0, 'Pending Activities'),
(18, 3, 'Default', 2, 0, 'Top Purchase Orders'),
(19, 4, 'Default', 2, 0, 'My New Leads'),
(20, 5, 'Default', 2, 0, 'Top Invoices'),
(21, 6, 'Default', 2, 0, 'Top Sales Orders'),
(22, 7, 'Default', 2, 1, 'My Group Allocation'),
(23, 8, 'Default', 2, 0, 'Upcoming Activities'),
(24, 9, 'Default', 2, 0, 'Top Trouble Tickets'),
(25, 10, 'Default', 2, 0, 'Key Metrics'),
(26, 11, 'Default', 2, 0, 'Top Quotes'),
(27, 12, 'Default', 2, 0, 'Top Potentials'),
(28, 13, 'Default', 2, 1, 'Home Page Dashboard'),
(29, 14, 'Default', 2, 0, 'Top Accounts'),
(30, 15, 'Tag Cloud', 2, 0, 'Tag Cloud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_homestuff_seq`
--

DROP TABLE IF EXISTS `vtiger_homestuff_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_homestuff_seq`
--

INSERT INTO `vtiger_homestuff_seq` (`id`) VALUES
(30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_home_layout`
--

DROP TABLE IF EXISTS `vtiger_home_layout`;
CREATE TABLE IF NOT EXISTS `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL default '4',
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_home_layout`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_import_maps`
--

DROP TABLE IF EXISTS `vtiger_import_maps`;
CREATE TABLE IF NOT EXISTS `vtiger_import_maps` (
  `id` int(19) NOT NULL auto_increment,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob,
  `has_header` int(1) NOT NULL default '1',
  `deleted` int(1) NOT NULL default '0',
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `is_published` varchar(3) NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_import_maps`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_industry`
--

DROP TABLE IF EXISTS `vtiger_industry`;
CREATE TABLE IF NOT EXISTS `vtiger_industry` (
  `industryid` int(19) NOT NULL auto_increment,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`industryid`),
  UNIQUE KEY `industry_industry_idx` (`industry`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Volcar la base de datos para la tabla `vtiger_industry`
--

INSERT INTO `vtiger_industry` (`industryid`, `industry`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 60),
(2, 'Apparel', 1, 61),
(3, 'Banking', 1, 62),
(4, 'Biotechnology', 1, 63),
(5, 'Chemicals', 1, 64),
(6, 'Communications', 1, 65),
(7, 'Construction', 1, 66),
(8, 'Consulting', 1, 67),
(9, 'Education', 1, 68),
(10, 'Electronics', 1, 69),
(11, 'Energy', 1, 70),
(12, 'Engineering', 1, 71),
(13, 'Entertainment', 1, 72),
(14, 'Environmental', 1, 73),
(15, 'Finance', 1, 74),
(16, 'Food & Beverage', 1, 75),
(17, 'Government', 1, 76),
(18, 'Healthcare', 1, 77),
(19, 'Hospitality', 1, 78),
(20, 'Insurance', 1, 79),
(21, 'Machinery', 1, 80),
(22, 'Manufacturing', 1, 81),
(23, 'Media', 1, 82),
(24, 'Not For Profit', 1, 83),
(25, 'Recreation', 1, 84),
(26, 'Retail', 1, 85),
(27, 'Shipping', 1, 86),
(28, 'Technology', 1, 87),
(29, 'Telecommunications', 1, 88),
(30, 'Transportation', 1, 89),
(31, 'Utilities', 1, 90),
(32, 'Other', 1, 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_industry_seq`
--

DROP TABLE IF EXISTS `vtiger_industry_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_industry_seq`
--

INSERT INTO `vtiger_industry_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventorynotification`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification`;
CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL auto_increment,
  `notificationname` varchar(200) default NULL,
  `notificationsubject` varchar(200) default NULL,
  `notificationbody` text,
  `label` varchar(50) default NULL,
  PRIMARY KEY  (`notificationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_inventorynotification`
--

INSERT INTO `vtiger_inventorynotification` (`notificationid`, `notificationname`, `notificationsubject`, `notificationbody`, `label`) VALUES
(1, 'InvoiceNotification', '{PRODUCTNAME} Stock Level is Low', 'Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ', 'InvoiceNotificationDescription'),
(2, 'QuoteNotification', 'Quote given for {PRODUCTNAME}', 'Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. \n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ', 'QuoteNotificationDescription'),
(3, 'SalesOrderNotification', 'Sales Order generated for {PRODUCTNAME}', 'Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. \n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ', 'SalesOrderNotificationDescription');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventorynotification_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventorynotification_seq`
--

INSERT INTO `vtiger_inventorynotification_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventoryproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryproductrel`;
CREATE TABLE IF NOT EXISTS `vtiger_inventoryproductrel` (
  `id` int(19) default NULL,
  `productid` int(19) default NULL,
  `sequence_no` int(4) default NULL,
  `quantity` decimal(25,3) default NULL,
  `listprice` decimal(25,3) default NULL,
  `discount_percent` decimal(7,3) default NULL,
  `discount_amount` decimal(7,3) default NULL,
  `comment` varchar(250) default NULL,
  `description` text,
  `incrementondel` int(11) NOT NULL default '0',
  `lineitem_id` int(11) NOT NULL auto_increment,
  `tax1` decimal(7,3) default NULL,
  `tax2` decimal(7,3) default NULL,
  `tax3` decimal(7,3) default NULL,
  PRIMARY KEY  (`lineitem_id`),
  KEY `inventoryproductrel_id_idx` (`id`),
  KEY `inventoryproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_inventoryproductrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventoryshippingrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryshippingrel`;
CREATE TABLE IF NOT EXISTS `vtiger_inventoryshippingrel` (
  `id` int(19) default NULL,
  `shtax1` decimal(7,3) default NULL,
  `shtax2` decimal(7,3) default NULL,
  `shtax3` decimal(7,3) default NULL,
  KEY `inventoryishippingrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventoryshippingrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventorysubproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventorysubproductrel`;
CREATE TABLE IF NOT EXISTS `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventorysubproductrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventorytaxinfo`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo`;
CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) default NULL,
  `taxlabel` varchar(50) default NULL,
  `percentage` decimal(7,3) default NULL,
  `deleted` int(1) default NULL,
  PRIMARY KEY  (`taxid`),
  KEY `inventorytaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventorytaxinfo`
--

INSERT INTO `vtiger_inventorytaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'tax1', 'VAT', 4.500, 0),
(2, 'tax2', 'Sales', 10.000, 0),
(3, 'tax3', 'Service', 12.500, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventorytaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventorytaxinfo_seq`
--

INSERT INTO `vtiger_inventorytaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventory_tandc`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc`;
CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventory_tandc`
--

INSERT INTO `vtiger_inventory_tandc` (`id`, `type`, `tandc`) VALUES
(1, 'Inventory', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_inventory_tandc_seq`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_inventory_tandc_seq`
--

INSERT INTO `vtiger_inventory_tandc_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invitees`
--

DROP TABLE IF EXISTS `vtiger_invitees`;
CREATE TABLE IF NOT EXISTS `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  PRIMARY KEY  (`activityid`,`inviteeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invitees`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoice`
--

DROP TABLE IF EXISTS `vtiger_invoice`;
CREATE TABLE IF NOT EXISTS `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL default '0',
  `subject` varchar(100) default NULL,
  `salesorderid` int(19) default NULL,
  `customerno` varchar(100) default NULL,
  `contactid` int(19) default NULL,
  `notes` varchar(100) default NULL,
  `invoicedate` date default NULL,
  `duedate` date default NULL,
  `invoiceterms` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `adjustment` decimal(25,3) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `subtotal` decimal(25,3) default NULL,
  `total` decimal(25,3) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,3) default NULL,
  `s_h_amount` decimal(25,3) default NULL,
  `shipping` varchar(100) default NULL,
  `accountid` int(19) default NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) default NULL,
  `invoicestatus` varchar(200) default NULL,
  `invoice_no` varchar(100) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  PRIMARY KEY  (`invoiceid`),
  KEY `invoice_purchaseorderid_idx` (`invoiceid`),
  KEY `fk_2_vtiger_invoice` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoice`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoicebillads`
--

DROP TABLE IF EXISTS `vtiger_invoicebillads`;
CREATE TABLE IF NOT EXISTS `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`invoicebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoicebillads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoicecf`
--

DROP TABLE IF EXISTS `vtiger_invoicecf`;
CREATE TABLE IF NOT EXISTS `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoicecf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoiceshipads`
--

DROP TABLE IF EXISTS `vtiger_invoiceshipads`;
CREATE TABLE IF NOT EXISTS `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`invoiceshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoiceshipads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoicestatus`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus`;
CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus` (
  `inovicestatusid` int(19) NOT NULL auto_increment,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`inovicestatusid`),
  UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_invoicestatus`
--

INSERT INTO `vtiger_invoicestatus` (`inovicestatusid`, `invoicestatus`, `presence`, `picklist_valueid`) VALUES
(1, 'AutoCreated', 0, 92),
(2, 'Created', 0, 93),
(3, 'Approved', 0, 94),
(4, 'Sent', 0, 95),
(5, 'Credit Invoice', 0, 96),
(6, 'Paid', 0, 97);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoicestatushistory`
--

DROP TABLE IF EXISTS `vtiger_invoicestatushistory`;
CREATE TABLE IF NOT EXISTS `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `invoicestatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_invoicestatushistory`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoicestatus_seq`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoicestatus_seq`
--

INSERT INTO `vtiger_invoicestatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_invoice_recurring_info`
--

DROP TABLE IF EXISTS `vtiger_invoice_recurring_info`;
CREATE TABLE IF NOT EXISTS `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) default NULL,
  `recurring_frequency` varchar(200) default NULL,
  `start_period` date default NULL,
  `end_period` date default NULL,
  `last_recurring_date` date default NULL,
  `payment_duration` varchar(200) default NULL,
  `invoice_status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_invoice_recurring_info`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_language`
--

DROP TABLE IF EXISTS `vtiger_language`;
CREATE TABLE IF NOT EXISTS `vtiger_language` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `prefix` varchar(10) default NULL,
  `label` varchar(30) default NULL,
  `lastupdated` datetime default NULL,
  `sequence` int(11) default NULL,
  `isdefault` int(1) default NULL,
  `active` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_language`
--

INSERT INTO `vtiger_language` (`id`, `name`, `prefix`, `label`, `lastupdated`, `sequence`, `isdefault`, `active`) VALUES
(1, 'English', 'en_us', 'US English', '2009-12-20 20:14:17', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_language_seq`
--

DROP TABLE IF EXISTS `vtiger_language_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_language_seq`
--

INSERT INTO `vtiger_language_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_lar`
--

DROP TABLE IF EXISTS `vtiger_lar`;
CREATE TABLE IF NOT EXISTS `vtiger_lar` (
  `larid` int(19) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `createdby` int(19) NOT NULL default '0',
  `createdon` date NOT NULL,
  PRIMARY KEY  (`larid`),
  UNIQUE KEY `lar_name_idx` (`name`),
  KEY `lar_createdby_idx` (`createdby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_lar`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadacctrel`
--

DROP TABLE IF EXISTS `vtiger_leadacctrel`;
CREATE TABLE IF NOT EXISTS `vtiger_leadacctrel` (
  `leadid` int(19) NOT NULL default '0',
  `accountid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadid`),
  KEY `leadacctrel_accountid_idx` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadacctrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadaddress`
--

DROP TABLE IF EXISTS `vtiger_leadaddress`;
CREATE TABLE IF NOT EXISTS `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL default '0',
  `city` varchar(30) default NULL,
  `code` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `pobox` varchar(30) default NULL,
  `country` varchar(30) default NULL,
  `phone` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `fax` varchar(50) default NULL,
  `lane` varchar(250) default NULL,
  `leadaddresstype` varchar(30) default 'Billing',
  PRIMARY KEY  (`leadaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadaddress`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadcontrel`
--

DROP TABLE IF EXISTS `vtiger_leadcontrel`;
CREATE TABLE IF NOT EXISTS `vtiger_leadcontrel` (
  `leadid` int(19) NOT NULL default '0',
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadid`),
  KEY `leadcontrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadcontrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leaddetails`
--

DROP TABLE IF EXISTS `vtiger_leaddetails`;
CREATE TABLE IF NOT EXISTS `vtiger_leaddetails` (
  `leadid` int(19) NOT NULL,
  `lead_no` varchar(100) NOT NULL,
  `email` varchar(100) default NULL,
  `interest` varchar(50) default NULL,
  `firstname` varchar(40) default NULL,
  `salutation` varchar(200) default NULL,
  `lastname` varchar(80) NOT NULL,
  `company` varchar(100) NOT NULL,
  `annualrevenue` int(19) default '0',
  `industry` varchar(200) default NULL,
  `campaign` varchar(30) default NULL,
  `rating` varchar(200) default NULL,
  `leadstatus` varchar(50) default NULL,
  `leadsource` varchar(200) default NULL,
  `converted` int(1) default '0',
  `designation` varchar(50) default 'SalesMan',
  `licencekeystatus` varchar(50) default NULL,
  `space` varchar(250) default NULL,
  `comments` text,
  `priority` varchar(50) default NULL,
  `demorequest` varchar(50) default NULL,
  `partnercontact` varchar(50) default NULL,
  `productversion` varchar(20) default NULL,
  `product` varchar(50) default NULL,
  `maildate` date default NULL,
  `nextstepdate` date default NULL,
  `fundingsituation` varchar(50) default NULL,
  `purpose` varchar(50) default NULL,
  `evaluationstatus` varchar(50) default NULL,
  `transferdate` date default NULL,
  `revenuetype` varchar(50) default NULL,
  `noofemployees` int(50) default NULL,
  `yahooid` varchar(100) default NULL,
  `assignleadchk` int(1) default '0',
  PRIMARY KEY  (`leadid`),
  KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leaddetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadpotrel`
--

DROP TABLE IF EXISTS `vtiger_leadpotrel`;
CREATE TABLE IF NOT EXISTS `vtiger_leadpotrel` (
  `leadid` int(19) NOT NULL default '0',
  `potentialid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`potentialid`),
  UNIQUE KEY `leadpotrel_leadid_idx` (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadpotrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadscf`
--

DROP TABLE IF EXISTS `vtiger_leadscf`;
CREATE TABLE IF NOT EXISTS `vtiger_leadscf` (
  `leadid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadsource`
--

DROP TABLE IF EXISTS `vtiger_leadsource`;
CREATE TABLE IF NOT EXISTS `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL auto_increment,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadsourceid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `vtiger_leadsource`
--

INSERT INTO `vtiger_leadsource` (`leadsourceid`, `leadsource`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 98),
(2, 'Cold Call', 1, 99),
(3, 'Existing Customer', 1, 100),
(4, 'Self Generated', 1, 101),
(5, 'Employee', 1, 102),
(6, 'Partner', 1, 103),
(7, 'Public Relations', 1, 104),
(8, 'Direct Mail', 1, 105),
(9, 'Conference', 1, 106),
(10, 'Trade Show', 1, 107),
(11, 'Web Site', 1, 108),
(12, 'Word of mouth', 1, 109),
(13, 'Other', 1, 110);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadsource_seq`
--

DROP TABLE IF EXISTS `vtiger_leadsource_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadsource_seq`
--

INSERT INTO `vtiger_leadsource_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadstage`
--

DROP TABLE IF EXISTS `vtiger_leadstage`;
CREATE TABLE IF NOT EXISTS `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL auto_increment,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`leadstageid`),
  UNIQUE KEY `leadstage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_leadstage`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadstatus`
--

DROP TABLE IF EXISTS `vtiger_leadstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL auto_increment,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`leadstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `vtiger_leadstatus`
--

INSERT INTO `vtiger_leadstatus` (`leadstatusid`, `leadstatus`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 111),
(2, 'Attempted to Contact', 1, 112),
(3, 'Cold', 1, 113),
(4, 'Contact in Future', 1, 114),
(5, 'Contacted', 1, 115),
(6, 'Hot', 1, 116),
(7, 'Junk Lead', 1, 117),
(8, 'Lost Lead', 1, 118),
(9, 'Not Contacted', 1, 119),
(10, 'Pre Qualified', 1, 120),
(11, 'Qualified', 1, 121),
(12, 'Warm', 1, 122);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_leadstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadstatus_seq`
--

INSERT INTO `vtiger_leadstatus_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_leadsubdetails`
--

DROP TABLE IF EXISTS `vtiger_leadsubdetails`;
CREATE TABLE IF NOT EXISTS `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL default '0',
  `website` varchar(255) default NULL,
  `callornot` int(1) default '0',
  `readornot` int(1) default '0',
  `empct` int(10) default '0',
  PRIMARY KEY  (`leadsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_leadsubdetails`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_lead_view`
--

DROP TABLE IF EXISTS `vtiger_lead_view`;
CREATE TABLE IF NOT EXISTS `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL auto_increment,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`lead_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_lead_view`
--

INSERT INTO `vtiger_lead_view` (`lead_viewid`, `lead_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'Last 2 Days', 1, 1),
(3, 'Last Week', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_lead_view_seq`
--

DROP TABLE IF EXISTS `vtiger_lead_view_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_lead_view_seq`
--

INSERT INTO `vtiger_lead_view_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_licencekeystatus`
--

DROP TABLE IF EXISTS `vtiger_licencekeystatus`;
CREATE TABLE IF NOT EXISTS `vtiger_licencekeystatus` (
  `licencekeystatusid` int(19) NOT NULL auto_increment,
  `licencekeystatus` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`licencekeystatusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_licencekeystatus`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_links`
--

DROP TABLE IF EXISTS `vtiger_links`;
CREATE TABLE IF NOT EXISTS `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) default NULL,
  `linktype` varchar(20) default NULL,
  `linklabel` varchar(30) default NULL,
  `linkurl` varchar(255) default NULL,
  `linkicon` varchar(100) default NULL,
  `sequence` int(11) default NULL,
  PRIMARY KEY  (`linkid`),
  KEY `link_tabidtype_idx` (`tabid`,`linktype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_links`
--

INSERT INTO `vtiger_links` (`linkid`, `tabid`, `linktype`, `linklabel`, `linkurl`, `linkicon`, `sequence`) VALUES
(1, 6, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0),
(2, 6, 'DETAILVIEWBASIC', 'LBL_SHOW_ACCOUNT_HIERARCHY', 'index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$', '', 0),
(3, 7, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0),
(4, 4, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0),
(5, 37, 'HEADERSCRIPT', 'ToolTip_HeaderScript', 'modules/Tooltip/TooltipHeaderScript.js', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_links_seq`
--

DROP TABLE IF EXISTS `vtiger_links_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_links_seq`
--

INSERT INTO `vtiger_links_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_loginhistory`
--

DROP TABLE IF EXISTS `vtiger_loginhistory`;
CREATE TABLE IF NOT EXISTS `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(25) NOT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` varchar(25) default NULL,
  PRIMARY KEY  (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_loginhistory`
--

INSERT INTO `vtiger_loginhistory` (`login_id`, `user_name`, `user_ip`, `logout_time`, `login_time`, `status`) VALUES
(1, 'admin', '192.168.10.105', '2009-12-20 21:01:06', '2009-12-20 20:43:17', 'Signed off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner`
--

DROP TABLE IF EXISTS `vtiger_mailscanner`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL auto_increment,
  `scannername` varchar(30) default NULL,
  `server` varchar(100) default NULL,
  `protocol` varchar(10) default NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `ssltype` varchar(10) default NULL,
  `sslmethod` varchar(30) default NULL,
  `connecturl` varchar(255) default NULL,
  `searchfor` varchar(10) default NULL,
  `markas` varchar(10) default NULL,
  `isvalid` int(1) default NULL,
  PRIMARY KEY  (`scannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner_actions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_actions`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `actiontype` varchar(10) default NULL,
  `module` varchar(30) default NULL,
  `lookup` varchar(30) default NULL,
  `sequence` int(11) default NULL,
  PRIMARY KEY  (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner_actions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner_folders`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_folders`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `foldername` varchar(255) default NULL,
  `lastscan` varchar(30) default NULL,
  `rescan` int(1) default NULL,
  `enabled` int(1) default NULL,
  PRIMARY KEY  (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner_folders`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner_ids`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ids`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ids` (
  `scannerid` int(11) default NULL,
  `messageid` text,
  `crmid` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner_ids`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner_ruleactions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ruleactions`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) default NULL,
  `actionid` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner_ruleactions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mailscanner_rules`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_rules`;
CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL auto_increment,
  `scannerid` int(11) default NULL,
  `fromaddress` varchar(255) default NULL,
  `toaddress` varchar(255) default NULL,
  `subjectop` varchar(20) default NULL,
  `subject` varchar(255) default NULL,
  `bodyop` varchar(20) default NULL,
  `body` varchar(255) default NULL,
  `matchusing` varchar(5) default NULL,
  `sequence` int(11) default NULL,
  PRIMARY KEY  (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_mailscanner_rules`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_mail_accounts`
--

DROP TABLE IF EXISTS `vtiger_mail_accounts`;
CREATE TABLE IF NOT EXISTS `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) default NULL,
  `mail_id` varchar(50) default NULL,
  `account_name` varchar(50) default NULL,
  `mail_protocol` varchar(20) default NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(250) NOT NULL,
  `mail_servername` varchar(50) default NULL,
  `box_refresh` int(10) default NULL,
  `mails_per_page` int(10) default NULL,
  `ssltype` varchar(50) default NULL,
  `sslmeth` varchar(50) default NULL,
  `int_mailer` int(1) default '0',
  `status` varchar(10) default NULL,
  `set_default` int(2) default NULL,
  PRIMARY KEY  (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_mail_accounts`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_manufacturer`
--

DROP TABLE IF EXISTS `vtiger_manufacturer`;
CREATE TABLE IF NOT EXISTS `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL auto_increment,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`manufacturerid`),
  UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_manufacturer`
--

INSERT INTO `vtiger_manufacturer` (`manufacturerid`, `manufacturer`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 123),
(2, 'AltvetPet Inc.', 1, 124),
(3, 'LexPon Inc.', 1, 125),
(4, 'MetBeat Corp', 1, 126);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_manufacturer_seq`
--

DROP TABLE IF EXISTS `vtiger_manufacturer_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_manufacturer_seq`
--

INSERT INTO `vtiger_manufacturer_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_modentity_num`
--

DROP TABLE IF EXISTS `vtiger_modentity_num`;
CREATE TABLE IF NOT EXISTS `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL default '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY  (`num_id`),
  UNIQUE KEY `num_idx` (`num_id`),
  KEY `semodule_active_idx` (`semodule`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_modentity_num`
--

INSERT INTO `vtiger_modentity_num` (`num_id`, `semodule`, `prefix`, `start_id`, `cur_id`, `active`) VALUES
(1, 'Leads', 'LEA', '1', '1', '1'),
(2, 'Accounts', 'ACC', '1', '1', '1'),
(3, 'Campaigns', 'CAM', '1', '1', '1'),
(4, 'Contacts', 'CON', '1', '1', '1'),
(5, 'Potentials', 'POT', '1', '1', '1'),
(6, 'HelpDesk', 'TT', '1', '1', '1'),
(7, 'Quotes', 'QUO', '1', '1', '1'),
(8, 'SalesOrder', 'SO', '1', '1', '1'),
(9, 'PurchaseOrder', 'PO', '1', '1', '1'),
(10, 'Invoice', 'INV', '1', '1', '1'),
(11, 'Products', 'PRO', '1', '1', '1'),
(12, 'Vendors', 'VEN', '1', '1', '1'),
(13, 'PriceBooks', 'PB', '1', '1', '1'),
(14, 'Faq', 'FAQ', '1', '1', '1'),
(15, 'Documents', 'DOC', '1', '1', '1'),
(16, 'ServiceContracts', 'SERCON', '1', '1', '1'),
(17, 'Services', 'SER', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_modentity_num_seq`
--

DROP TABLE IF EXISTS `vtiger_modentity_num_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_modentity_num_seq`
--

INSERT INTO `vtiger_modentity_num_seq` (`id`) VALUES
(17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_moduleowners`
--

DROP TABLE IF EXISTS `vtiger_moduleowners`;
CREATE TABLE IF NOT EXISTS `vtiger_moduleowners` (
  `tabid` int(19) NOT NULL default '0',
  `user_id` varchar(11) NOT NULL,
  PRIMARY KEY  (`tabid`),
  KEY `moduleowners_tabid_user_id_idx` (`tabid`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_moduleowners`
--

INSERT INTO `vtiger_moduleowners` (`tabid`, `user_id`) VALUES
(2, '1'),
(4, '1'),
(6, '1'),
(7, '1'),
(8, '1'),
(9, '1'),
(10, '1'),
(13, '1'),
(14, '1'),
(15, '1'),
(18, '1'),
(19, '1'),
(20, '1'),
(21, '1'),
(22, '1'),
(23, '1'),
(25, '1'),
(26, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_notebook_contents`
--

DROP TABLE IF EXISTS `vtiger_notebook_contents`;
CREATE TABLE IF NOT EXISTS `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_notebook_contents`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_notes`
--

DROP TABLE IF EXISTS `vtiger_notes`;
CREATE TABLE IF NOT EXISTS `vtiger_notes` (
  `notesid` int(19) NOT NULL default '0',
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) default NULL,
  `notecontent` text,
  `folderid` int(19) NOT NULL default '1',
  `filetype` varchar(50) default NULL,
  `filelocationtype` varchar(5) default NULL,
  `filedownloadcount` int(19) default NULL,
  `filestatus` int(19) default NULL,
  `filesize` int(19) NOT NULL default '0',
  `fileversion` varchar(50) default NULL,
  PRIMARY KEY  (`notesid`),
  KEY `notes_title_idx` (`title`),
  KEY `notes_notesid_idx` (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_notes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_notescf`
--

DROP TABLE IF EXISTS `vtiger_notescf`;
CREATE TABLE IF NOT EXISTS `vtiger_notescf` (
  `notesid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_notescf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_notificationscheduler`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler`;
CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL auto_increment,
  `schedulednotificationname` varchar(200) default NULL,
  `active` int(1) default NULL,
  `notificationsubject` varchar(200) default NULL,
  `notificationbody` text,
  `label` varchar(50) default NULL,
  `type` varchar(10) default NULL,
  PRIMARY KEY  (`schedulednotificationid`),
  UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `vtiger_notificationscheduler`
--

INSERT INTO `vtiger_notificationscheduler` (`schedulednotificationid`, `schedulednotificationname`, `active`, `notificationsubject`, `notificationbody`, `label`, `type`) VALUES
(1, 'LBL_TASK_NOTIFICATION_DESCRITPION', 1, 'Task Delay Notification', 'Tasks delayed beyond 24 hrs ', 'LBL_TASK_NOTIFICATION', NULL),
(2, 'LBL_BIG_DEAL_DESCRIPTION', 1, 'Big Deal notification', 'Success! A big deal has been won! ', 'LBL_BIG_DEAL', NULL),
(3, 'LBL_TICKETS_DESCRIPTION', 1, 'Pending Tickets notification', 'Ticket pending please ', 'LBL_PENDING_TICKETS', NULL),
(4, 'LBL_MANY_TICKETS_DESCRIPTION', 1, 'Too many tickets Notification', 'Too many tickets pending against this entity ', 'LBL_MANY_TICKETS', NULL),
(5, 'LBL_START_DESCRIPTION', 1, 'Support Start Notification', '10', 'LBL_START_NOTIFICATION', 'select'),
(6, 'LBL_SUPPORT_DESCRIPTION', 1, 'Support ending please', '11', 'LBL_SUPPORT_NOTICIATION', 'select'),
(7, 'LBL_SUPPORT_DESCRIPTION_MONTH', 1, 'Support ending please', '12', 'LBL_SUPPORT_NOTICIATION_MONTH', 'select'),
(8, 'LBL_ACTIVITY_REMINDER_DESCRIPTION', 1, 'Activity Reminder Notification', 'This is a reminder notification for the Activity', 'LBL_ACTIVITY_NOTIFICATION', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_notificationscheduler_seq`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_notificationscheduler_seq`
--

INSERT INTO `vtiger_notificationscheduler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_opportunitystage`
--

DROP TABLE IF EXISTS `vtiger_opportunitystage`;
CREATE TABLE IF NOT EXISTS `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL auto_increment,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  `probability` decimal(3,2) default '0.00',
  PRIMARY KEY  (`potstageid`),
  UNIQUE KEY `opportunitystage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_opportunitystage`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_opportunity_type`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type`;
CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL auto_increment,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`opptypeid`),
  UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_opportunity_type`
--

INSERT INTO `vtiger_opportunity_type` (`opptypeid`, `opportunity_type`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 127),
(2, 'Existing Business', 1, 128),
(3, 'New Business', 1, 129);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_opportunity_type_seq`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_opportunity_type_seq`
--

INSERT INTO `vtiger_opportunity_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_organizationdetails`
--

DROP TABLE IF EXISTS `vtiger_organizationdetails`;
CREATE TABLE IF NOT EXISTS `vtiger_organizationdetails` (
  `organizationname` varchar(60) NOT NULL,
  `address` varchar(150) default NULL,
  `city` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `code` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `fax` varchar(30) default NULL,
  `website` varchar(100) default NULL,
  `logoname` varchar(50) default NULL,
  `logo` text,
  PRIMARY KEY  (`organizationname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_organizationdetails`
--

INSERT INTO `vtiger_organizationdetails` (`organizationname`, `address`, `city`, `state`, `country`, `code`, `phone`, `fax`, `website`, `logoname`, `logo`) VALUES
('vtiger', ' 40-41-42, Sivasundar Apartments, Flat D-II, Shastri Street, Velachery', 'Chennai', 'Tamil Nadu', 'India', '600 042', '+91-44-5202-1990', '+91-44-5202-1990', 'www.vtiger.com', 'vtiger-crm-logo.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_org_share_action2tab`
--

DROP TABLE IF EXISTS `vtiger_org_share_action2tab`;
CREATE TABLE IF NOT EXISTS `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  PRIMARY KEY  (`share_action_id`,`tabid`),
  KEY `fk_2_vtiger_org_share_action2tab` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_org_share_action2tab`
--

INSERT INTO `vtiger_org_share_action2tab` (`share_action_id`, `tabid`) VALUES
(0, 2),
(1, 2),
(2, 2),
(3, 2),
(0, 4),
(1, 4),
(2, 4),
(3, 4),
(0, 6),
(1, 6),
(2, 6),
(3, 6),
(0, 7),
(1, 7),
(2, 7),
(3, 7),
(0, 8),
(1, 8),
(2, 8),
(3, 8),
(0, 9),
(1, 9),
(2, 9),
(3, 9),
(0, 10),
(1, 10),
(2, 10),
(3, 10),
(0, 13),
(1, 13),
(2, 13),
(3, 13),
(0, 16),
(1, 16),
(2, 16),
(3, 16),
(0, 20),
(1, 20),
(2, 20),
(3, 20),
(0, 21),
(1, 21),
(2, 21),
(3, 21),
(0, 22),
(1, 22),
(2, 22),
(3, 22),
(0, 23),
(1, 23),
(2, 23),
(3, 23),
(0, 26),
(1, 26),
(2, 26),
(3, 26),
(0, 30),
(1, 30),
(2, 30),
(3, 30),
(0, 31),
(1, 31),
(2, 31),
(3, 31),
(0, 32),
(1, 32),
(2, 32),
(3, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_org_share_action_mapping`
--

DROP TABLE IF EXISTS `vtiger_org_share_action_mapping`;
CREATE TABLE IF NOT EXISTS `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) default NULL,
  PRIMARY KEY  (`share_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_org_share_action_mapping`
--

INSERT INTO `vtiger_org_share_action_mapping` (`share_action_id`, `share_action_name`) VALUES
(0, 'Public: Read Only'),
(1, 'Public: Read, Create/Edit'),
(2, 'Public: Read, Create/Edit, Delete'),
(3, 'Private'),
(4, 'Hide Details'),
(5, 'Hide Details and Add Events'),
(6, 'Show Details'),
(7, 'Show Details and Add Events');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ownernotify`
--

DROP TABLE IF EXISTS `vtiger_ownernotify`;
CREATE TABLE IF NOT EXISTS `vtiger_ownernotify` (
  `crmid` int(19) default NULL,
  `smownerid` int(19) default NULL,
  `flag` int(3) default NULL,
  KEY `ownernotify_crmid_flag_idx` (`crmid`,`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ownernotify`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_parenttab`
--

DROP TABLE IF EXISTS `vtiger_parenttab`;
CREATE TABLE IF NOT EXISTS `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL default '0',
  PRIMARY KEY  (`parenttabid`),
  KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_parenttab`
--

INSERT INTO `vtiger_parenttab` (`parenttabid`, `parenttab_label`, `sequence`, `visible`) VALUES
(1, 'My Home Page', 1, 0),
(2, 'Marketing', 2, 0),
(3, 'Sales', 3, 0),
(4, 'Support', 4, 0),
(5, 'Analytics', 5, 0),
(6, 'Inventory', 6, 0),
(7, 'Tools', 7, 0),
(8, 'Settings', 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_parenttabrel`
--

DROP TABLE IF EXISTS `vtiger_parenttabrel`;
CREATE TABLE IF NOT EXISTS `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL,
  KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`),
  KEY `fk_2_vtiger_parenttabrel` (`parenttabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_parenttabrel`
--

INSERT INTO `vtiger_parenttabrel` (`parenttabid`, `tabid`, `sequence`) VALUES
(1, 9, 2),
(1, 28, 4),
(1, 3, 1),
(3, 7, 1),
(3, 6, 2),
(3, 4, 3),
(3, 2, 4),
(3, 20, 5),
(3, 22, 6),
(3, 23, 7),
(3, 19, 8),
(3, 8, 9),
(4, 13, 1),
(4, 15, 2),
(4, 6, 3),
(4, 4, 4),
(4, 8, 5),
(5, 1, 2),
(5, 25, 1),
(6, 14, 1),
(6, 18, 2),
(6, 19, 3),
(6, 21, 4),
(6, 22, 5),
(6, 20, 6),
(6, 23, 7),
(7, 24, 1),
(7, 27, 2),
(7, 8, 3),
(2, 26, 1),
(2, 6, 2),
(2, 4, 3),
(2, 28, 4),
(4, 28, 7),
(2, 7, 5),
(2, 9, 6),
(4, 9, 8),
(2, 8, 8),
(3, 9, 11),
(4, 30, 9),
(6, 31, 8),
(7, 32, 4),
(7, 36, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_payment_duration`
--

DROP TABLE IF EXISTS `vtiger_payment_duration`;
CREATE TABLE IF NOT EXISTS `vtiger_payment_duration` (
  `payment_duration_id` int(11) default NULL,
  `payment_duration` varchar(200) default NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_payment_duration`
--

INSERT INTO `vtiger_payment_duration` (`payment_duration_id`, `payment_duration`, `sortorderid`, `presence`) VALUES
(1, 'Net 30 days', 0, 1),
(2, 'Net 45 days', 1, 1),
(3, 'Net 60 days', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_payment_duration_seq`
--

DROP TABLE IF EXISTS `vtiger_payment_duration_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_payment_duration_seq`
--

INSERT INTO `vtiger_payment_duration_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_pbxmanager`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager`;
CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager` (
  `pbxmanagerid` int(11) default NULL,
  `callfrom` varchar(255) default NULL,
  `callto` varchar(255) default NULL,
  `timeofcall` varchar(255) default NULL,
  `status` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_pbxmanager`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_picklist`
--

DROP TABLE IF EXISTS `vtiger_picklist`;
CREATE TABLE IF NOT EXISTS `vtiger_picklist` (
  `picklistid` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY  (`picklistid`),
  UNIQUE KEY `picklist_name_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Volcar la base de datos para la tabla `vtiger_picklist`
--

INSERT INTO `vtiger_picklist` (`picklistid`, `name`) VALUES
(1, 'accounttype'),
(2, 'activitytype'),
(3, 'campaignstatus'),
(4, 'campaigntype'),
(5, 'carrier'),
(33, 'contract_priority'),
(32, 'contract_status'),
(34, 'contract_type'),
(6, 'eventstatus'),
(7, 'expectedresponse'),
(8, 'faqcategories'),
(9, 'faqstatus'),
(10, 'glacct'),
(11, 'industry'),
(12, 'invoicestatus'),
(13, 'leadsource'),
(14, 'leadstatus'),
(15, 'manufacturer'),
(16, 'opportunity_type'),
(17, 'postatus'),
(18, 'productcategory'),
(19, 'quotestage'),
(20, 'rating'),
(21, 'sales_stage'),
(22, 'salutationtype'),
(36, 'servicecategory'),
(35, 'service_usageunit'),
(23, 'sostatus'),
(24, 'taskpriority'),
(25, 'taskstatus'),
(26, 'ticketcategories'),
(27, 'ticketpriorities'),
(28, 'ticketseverities'),
(29, 'ticketstatus'),
(31, 'tracking_unit'),
(30, 'usageunit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_picklistvalues_seq`
--

DROP TABLE IF EXISTS `vtiger_picklistvalues_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_picklistvalues_seq`
--

INSERT INTO `vtiger_picklistvalues_seq` (`id`) VALUES
(234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_picklist_seq`
--

DROP TABLE IF EXISTS `vtiger_picklist_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_picklist_seq`
--

INSERT INTO `vtiger_picklist_seq` (`id`) VALUES
(36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_pobillads`
--

DROP TABLE IF EXISTS `vtiger_pobillads`;
CREATE TABLE IF NOT EXISTS `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`pobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_pobillads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_portal`
--

DROP TABLE IF EXISTS `vtiger_portal`;
CREATE TABLE IF NOT EXISTS `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL default '0',
  PRIMARY KEY  (`portalid`),
  KEY `portal_portalname_idx` (`portalname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_portal`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_portalinfo`
--

DROP TABLE IF EXISTS `vtiger_portalinfo`;
CREATE TABLE IF NOT EXISTS `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_password` varchar(30) default NULL,
  `type` varchar(5) default NULL,
  `last_login_time` datetime default NULL,
  `login_time` datetime default NULL,
  `logout_time` datetime default NULL,
  `isactive` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_portalinfo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_poshipads`
--

DROP TABLE IF EXISTS `vtiger_poshipads`;
CREATE TABLE IF NOT EXISTS `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`poshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_poshipads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_postatus`
--

DROP TABLE IF EXISTS `vtiger_postatus`;
CREATE TABLE IF NOT EXISTS `vtiger_postatus` (
  `postatusid` int(19) NOT NULL auto_increment,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`postatusid`),
  UNIQUE KEY `postatus_postatus_idx` (`postatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_postatus`
--

INSERT INTO `vtiger_postatus` (`postatusid`, `postatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Created', 0, 130),
(2, 'Approved', 0, 131),
(3, 'Delivered', 0, 132),
(4, 'Cancelled', 0, 133),
(5, 'Received Shipment', 0, 134);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_postatushistory`
--

DROP TABLE IF EXISTS `vtiger_postatushistory`;
CREATE TABLE IF NOT EXISTS `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `postatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_postatushistory`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_postatus_seq`
--

DROP TABLE IF EXISTS `vtiger_postatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_postatus_seq`
--

INSERT INTO `vtiger_postatus_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_potcompetitorrel`
--

DROP TABLE IF EXISTS `vtiger_potcompetitorrel`;
CREATE TABLE IF NOT EXISTS `vtiger_potcompetitorrel` (
  `potentialid` int(19) NOT NULL,
  `competitorid` int(19) NOT NULL,
  PRIMARY KEY  (`potentialid`,`competitorid`),
  KEY `potcompetitorrel_potentialid_idx` (`potentialid`),
  KEY `potcompetitorrel_competitorid_idx` (`competitorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_potcompetitorrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_potential`
--

DROP TABLE IF EXISTS `vtiger_potential`;
CREATE TABLE IF NOT EXISTS `vtiger_potential` (
  `potentialid` int(19) NOT NULL default '0',
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) default NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(14,2) default '0.00',
  `currency` varchar(20) default NULL,
  `closingdate` date default NULL,
  `typeofrevenue` varchar(50) default NULL,
  `nextstep` varchar(100) default NULL,
  `private` int(1) default '0',
  `probability` decimal(7,3) default '0.000',
  `campaignid` int(19) default NULL,
  `sales_stage` varchar(200) default NULL,
  `potentialtype` varchar(200) default NULL,
  `leadsource` varchar(200) default NULL,
  `productid` int(50) default NULL,
  `productversion` varchar(50) default NULL,
  `quotationref` varchar(50) default NULL,
  `partnercontact` varchar(50) default NULL,
  `remarks` varchar(50) default NULL,
  `runtimefee` int(19) default '0',
  `followupdate` date default NULL,
  `evaluationstatus` varchar(50) default NULL,
  `description` text,
  `forecastcategory` int(19) default '0',
  `outcomeanalysis` int(19) default '0',
  PRIMARY KEY  (`potentialid`),
  KEY `potential_potentialid_idx` (`potentialid`),
  KEY `potentail_sales_stage_idx` (`sales_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_potential`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_potentialscf`
--

DROP TABLE IF EXISTS `vtiger_potentialscf`;
CREATE TABLE IF NOT EXISTS `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_potentialscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_potstagehistory`
--

DROP TABLE IF EXISTS `vtiger_potstagehistory`;
CREATE TABLE IF NOT EXISTS `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) default NULL,
  `stage` varchar(100) default NULL,
  `probability` decimal(7,3) default NULL,
  `expectedrevenue` decimal(10,0) default NULL,
  `closedate` date default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `potstagehistory_potentialid_idx` (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_potstagehistory`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_pricebook`
--

DROP TABLE IF EXISTS `vtiger_pricebook`;
CREATE TABLE IF NOT EXISTS `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL default '0',
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) default NULL,
  `active` int(1) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  PRIMARY KEY  (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_pricebook`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_pricebookcf`
--

DROP TABLE IF EXISTS `vtiger_pricebookcf`;
CREATE TABLE IF NOT EXISTS `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_pricebookcf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_pricebookproductrel`
--

DROP TABLE IF EXISTS `vtiger_pricebookproductrel`;
CREATE TABLE IF NOT EXISTS `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(25,3) default NULL,
  `usedcurrency` int(11) NOT NULL default '1',
  PRIMARY KEY  (`pricebookid`,`productid`),
  KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  KEY `pricebookproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_pricebookproductrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_priority`
--

DROP TABLE IF EXISTS `vtiger_priority`;
CREATE TABLE IF NOT EXISTS `vtiger_priority` (
  `priorityid` int(19) NOT NULL auto_increment,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`priorityid`),
  UNIQUE KEY `priority_priority_idx` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_priority`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_productcategory`
--

DROP TABLE IF EXISTS `vtiger_productcategory`;
CREATE TABLE IF NOT EXISTS `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL auto_increment,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`productcategoryid`),
  UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_productcategory`
--

INSERT INTO `vtiger_productcategory` (`productcategoryid`, `productcategory`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 135),
(2, 'Hardware', 1, 136),
(3, 'Software', 1, 137),
(4, 'CRM Applications', 1, 138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_productcategory_seq`
--

DROP TABLE IF EXISTS `vtiger_productcategory_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_productcategory_seq`
--

INSERT INTO `vtiger_productcategory_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_productcf`
--

DROP TABLE IF EXISTS `vtiger_productcf`;
CREATE TABLE IF NOT EXISTS `vtiger_productcf` (
  `productid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_productcf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_productcollaterals`
--

DROP TABLE IF EXISTS `vtiger_productcollaterals`;
CREATE TABLE IF NOT EXISTS `vtiger_productcollaterals` (
  `productid` int(11) NOT NULL,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `data` longblob,
  `description` text,
  `filename` varchar(50) default NULL,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  PRIMARY KEY  (`productid`),
  KEY `productcollaterals_productid_filename_idx` (`productid`,`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_productcollaterals`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_productcurrencyrel`
--

DROP TABLE IF EXISTS `vtiger_productcurrencyrel`;
CREATE TABLE IF NOT EXISTS `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(25,2) default NULL,
  `actual_price` decimal(25,2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_productcurrencyrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_products`
--

DROP TABLE IF EXISTS `vtiger_products`;
CREATE TABLE IF NOT EXISTS `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productcode` varchar(40) default NULL,
  `productcategory` varchar(200) default NULL,
  `manufacturer` varchar(200) default NULL,
  `qty_per_unit` decimal(11,2) default '0.00',
  `unit_price` decimal(25,2) default NULL,
  `weight` decimal(11,3) default NULL,
  `pack_size` int(11) default NULL,
  `sales_start_date` date default NULL,
  `sales_end_date` date default NULL,
  `start_date` date default NULL,
  `expiry_date` date default NULL,
  `cost_factor` int(11) default NULL,
  `commissionrate` decimal(7,3) default NULL,
  `commissionmethod` varchar(50) default NULL,
  `discontinued` int(1) NOT NULL default '0',
  `usageunit` varchar(200) default NULL,
  `handler` int(11) default NULL,
  `reorderlevel` int(11) default NULL,
  `website` varchar(100) default NULL,
  `taxclass` varchar(200) default NULL,
  `mfr_part_no` varchar(200) default NULL,
  `vendor_part_no` varchar(200) default NULL,
  `serialno` varchar(200) default NULL,
  `qtyinstock` decimal(25,3) default NULL,
  `productsheet` varchar(200) default NULL,
  `qtyindemand` int(11) default NULL,
  `glacct` varchar(200) default NULL,
  `vendor_id` int(11) default NULL,
  `imagename` text,
  `currency_id` int(19) NOT NULL default '1',
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_products`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_producttaxrel`
--

DROP TABLE IF EXISTS `vtiger_producttaxrel`;
CREATE TABLE IF NOT EXISTS `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) default NULL,
  KEY `producttaxrel_productid_idx` (`productid`),
  KEY `producttaxrel_taxid_idx` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_producttaxrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile`
--

DROP TABLE IF EXISTS `vtiger_profile`;
CREATE TABLE IF NOT EXISTS `vtiger_profile` (
  `profileid` int(10) NOT NULL auto_increment,
  `profilename` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY  (`profileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_profile`
--

INSERT INTO `vtiger_profile` (`profileid`, `profilename`, `description`) VALUES
(1, 'Administrator', 'Admin Profile'),
(2, 'Sales Profile', 'Profile Related to Sales'),
(3, 'Support Profile', 'Profile Related to Support'),
(4, 'Guest Profile', 'Guest Profile for Test Users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile2field`
--

DROP TABLE IF EXISTS `vtiger_profile2field`;
CREATE TABLE IF NOT EXISTS `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) default NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) default NULL,
  `readonly` int(19) default NULL,
  PRIMARY KEY  (`profileid`,`fieldid`),
  KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile2field`
--

INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(1, 6, 1, 0, 1),
(1, 6, 2, 0, 1),
(1, 6, 3, 0, 1),
(1, 6, 4, 0, 1),
(1, 6, 5, 0, 1),
(1, 6, 6, 0, 1),
(1, 6, 7, 0, 1),
(1, 6, 8, 0, 1),
(1, 6, 9, 0, 1),
(1, 6, 10, 0, 1),
(1, 6, 11, 0, 1),
(1, 6, 12, 0, 1),
(1, 6, 13, 0, 1),
(1, 6, 14, 0, 1),
(1, 6, 15, 0, 1),
(1, 6, 16, 0, 1),
(1, 6, 17, 0, 1),
(1, 6, 18, 0, 1),
(1, 6, 19, 0, 1),
(1, 6, 20, 0, 1),
(1, 6, 21, 0, 1),
(1, 6, 22, 0, 1),
(1, 6, 23, 0, 1),
(1, 6, 24, 0, 1),
(1, 6, 25, 0, 1),
(1, 6, 26, 0, 1),
(1, 6, 27, 0, 1),
(1, 6, 28, 0, 1),
(1, 6, 29, 0, 1),
(1, 6, 30, 0, 1),
(1, 6, 31, 0, 1),
(1, 6, 32, 0, 1),
(1, 6, 33, 0, 1),
(1, 6, 34, 0, 1),
(1, 6, 35, 0, 1),
(1, 7, 36, 0, 1),
(1, 7, 37, 0, 1),
(1, 7, 38, 0, 1),
(1, 7, 39, 0, 1),
(1, 7, 40, 0, 1),
(1, 7, 41, 0, 1),
(1, 7, 42, 0, 1),
(1, 7, 43, 0, 1),
(1, 7, 44, 0, 1),
(1, 7, 45, 0, 1),
(1, 7, 46, 0, 1),
(1, 7, 47, 0, 1),
(1, 7, 48, 0, 1),
(1, 7, 49, 0, 1),
(1, 7, 50, 0, 1),
(1, 7, 51, 0, 1),
(1, 7, 52, 0, 1),
(1, 7, 53, 0, 1),
(1, 7, 54, 0, 1),
(1, 7, 55, 0, 1),
(1, 7, 56, 0, 1),
(1, 7, 57, 0, 1),
(1, 7, 58, 0, 1),
(1, 7, 59, 0, 1),
(1, 7, 60, 0, 1),
(1, 7, 61, 0, 1),
(1, 7, 62, 0, 1),
(1, 7, 63, 0, 1),
(1, 4, 64, 0, 1),
(1, 4, 65, 0, 1),
(1, 4, 66, 0, 1),
(1, 4, 67, 0, 1),
(1, 4, 68, 0, 1),
(1, 4, 69, 0, 1),
(1, 4, 70, 0, 1),
(1, 4, 71, 0, 1),
(1, 4, 72, 0, 1),
(1, 4, 73, 0, 1),
(1, 4, 74, 0, 1),
(1, 4, 75, 0, 1),
(1, 4, 76, 0, 1),
(1, 4, 77, 0, 1),
(1, 4, 78, 0, 1),
(1, 4, 79, 0, 1),
(1, 4, 80, 0, 1),
(1, 4, 81, 0, 1),
(1, 4, 82, 0, 1),
(1, 4, 83, 0, 1),
(1, 4, 84, 0, 1),
(1, 4, 85, 0, 1),
(1, 4, 86, 0, 1),
(1, 4, 87, 0, 1),
(1, 4, 88, 0, 1),
(1, 4, 89, 0, 1),
(1, 4, 90, 0, 1),
(1, 4, 91, 0, 1),
(1, 4, 92, 0, 1),
(1, 4, 93, 0, 1),
(1, 4, 94, 0, 1),
(1, 4, 95, 0, 1),
(1, 4, 96, 0, 1),
(1, 4, 97, 0, 1),
(1, 4, 98, 0, 1),
(1, 4, 99, 0, 1),
(1, 4, 100, 0, 1),
(1, 4, 101, 0, 1),
(1, 4, 102, 0, 1),
(1, 4, 103, 0, 1),
(1, 4, 104, 0, 1),
(1, 4, 105, 0, 1),
(1, 4, 106, 0, 1),
(1, 2, 107, 0, 1),
(1, 2, 108, 0, 1),
(1, 2, 109, 0, 1),
(1, 2, 110, 0, 1),
(1, 2, 111, 0, 1),
(1, 2, 112, 0, 1),
(1, 2, 113, 0, 1),
(1, 2, 114, 0, 1),
(1, 2, 115, 0, 1),
(1, 2, 116, 0, 1),
(1, 2, 117, 0, 1),
(1, 2, 118, 0, 1),
(1, 2, 119, 0, 1),
(1, 2, 120, 0, 1),
(1, 2, 121, 0, 1),
(1, 26, 122, 0, 1),
(1, 26, 123, 0, 1),
(1, 26, 124, 0, 1),
(1, 26, 125, 0, 1),
(1, 26, 126, 0, 1),
(1, 26, 127, 0, 1),
(1, 26, 128, 0, 1),
(1, 26, 129, 0, 1),
(1, 26, 130, 0, 1),
(1, 26, 131, 0, 1),
(1, 26, 132, 0, 1),
(1, 26, 133, 0, 1),
(1, 26, 134, 0, 1),
(1, 26, 135, 0, 1),
(1, 26, 136, 0, 1),
(1, 26, 137, 0, 1),
(1, 26, 138, 0, 1),
(1, 26, 139, 0, 1),
(1, 26, 140, 0, 1),
(1, 26, 141, 0, 1),
(1, 26, 142, 0, 1),
(1, 26, 143, 0, 1),
(1, 26, 144, 0, 1),
(1, 26, 145, 0, 1),
(1, 13, 146, 0, 1),
(1, 13, 147, 0, 1),
(1, 13, 148, 0, 1),
(1, 13, 149, 0, 1),
(1, 13, 150, 0, 1),
(1, 13, 151, 0, 1),
(1, 13, 152, 0, 1),
(1, 13, 153, 0, 1),
(1, 13, 154, 0, 1),
(1, 13, 155, 0, 1),
(1, 13, 156, 0, 1),
(1, 13, 157, 0, 1),
(1, 13, 158, 0, 1),
(1, 13, 159, 0, 1),
(1, 13, 160, 0, 1),
(1, 13, 161, 0, 1),
(1, 13, 162, 0, 1),
(1, 14, 163, 0, 1),
(1, 14, 164, 0, 1),
(1, 14, 165, 0, 1),
(1, 14, 166, 0, 1),
(1, 14, 167, 0, 1),
(1, 14, 168, 0, 1),
(1, 14, 169, 0, 1),
(1, 14, 170, 0, 1),
(1, 14, 171, 0, 1),
(1, 14, 172, 0, 1),
(1, 14, 173, 0, 1),
(1, 14, 174, 0, 1),
(1, 14, 175, 0, 1),
(1, 14, 176, 0, 1),
(1, 14, 177, 0, 1),
(1, 14, 178, 0, 1),
(1, 14, 179, 0, 1),
(1, 14, 180, 0, 1),
(1, 14, 181, 0, 1),
(1, 14, 182, 0, 1),
(1, 14, 183, 0, 1),
(1, 14, 184, 0, 1),
(1, 14, 185, 0, 1),
(1, 14, 186, 0, 1),
(1, 14, 187, 0, 1),
(1, 14, 188, 0, 1),
(1, 14, 189, 0, 1),
(1, 14, 190, 0, 1),
(1, 14, 191, 0, 1),
(1, 14, 192, 0, 1),
(1, 8, 193, 0, 1),
(1, 8, 194, 0, 1),
(1, 8, 195, 0, 1),
(1, 8, 196, 0, 1),
(1, 8, 197, 0, 1),
(1, 8, 198, 0, 1),
(1, 8, 199, 0, 1),
(1, 8, 200, 0, 1),
(1, 8, 201, 0, 1),
(1, 8, 202, 0, 1),
(1, 8, 203, 0, 1),
(1, 8, 204, 0, 1),
(1, 8, 205, 0, 1),
(1, 8, 206, 0, 1),
(1, 10, 207, 0, 1),
(1, 10, 208, 0, 1),
(1, 10, 209, 0, 1),
(1, 10, 210, 0, 1),
(1, 10, 211, 0, 1),
(1, 10, 212, 0, 1),
(1, 10, 213, 0, 1),
(1, 10, 214, 0, 1),
(1, 10, 215, 0, 1),
(1, 10, 216, 0, 1),
(1, 10, 217, 0, 1),
(1, 10, 218, 0, 1),
(1, 9, 219, 0, 1),
(1, 9, 220, 0, 1),
(1, 9, 221, 0, 1),
(1, 9, 222, 0, 1),
(1, 9, 223, 0, 1),
(1, 9, 224, 0, 1),
(1, 9, 225, 0, 1),
(1, 9, 226, 0, 1),
(1, 9, 227, 0, 1),
(1, 9, 228, 0, 1),
(1, 9, 229, 0, 1),
(1, 9, 230, 0, 1),
(1, 9, 231, 0, 1),
(1, 9, 232, 0, 1),
(1, 9, 233, 0, 1),
(1, 9, 234, 0, 1),
(1, 9, 235, 0, 1),
(1, 9, 236, 0, 1),
(1, 9, 237, 0, 1),
(1, 9, 238, 0, 1),
(1, 9, 239, 0, 1),
(1, 9, 240, 0, 1),
(1, 9, 241, 0, 1),
(1, 16, 242, 0, 1),
(1, 16, 243, 0, 1),
(1, 16, 244, 0, 1),
(1, 16, 245, 0, 1),
(1, 16, 246, 0, 1),
(1, 16, 247, 0, 1),
(1, 16, 248, 0, 1),
(1, 16, 249, 0, 1),
(1, 16, 250, 0, 1),
(1, 16, 251, 0, 1),
(1, 16, 252, 0, 1),
(1, 16, 253, 0, 1),
(1, 16, 254, 0, 1),
(1, 16, 255, 0, 1),
(1, 16, 256, 0, 1),
(1, 16, 257, 0, 1),
(1, 16, 258, 0, 1),
(1, 16, 259, 0, 1),
(1, 16, 260, 0, 1),
(1, 16, 261, 0, 1),
(1, 16, 262, 0, 1),
(1, 16, 263, 0, 1),
(1, 15, 264, 0, 1),
(1, 15, 265, 0, 1),
(1, 15, 266, 0, 1),
(1, 15, 267, 0, 1),
(1, 15, 268, 0, 1),
(1, 15, 269, 0, 1),
(1, 15, 270, 0, 1),
(1, 15, 271, 0, 1),
(1, 15, 272, 0, 1),
(1, 18, 273, 0, 1),
(1, 18, 274, 0, 1),
(1, 18, 275, 0, 1),
(1, 18, 276, 0, 1),
(1, 18, 277, 0, 1),
(1, 18, 278, 0, 1),
(1, 18, 279, 0, 1),
(1, 18, 280, 0, 1),
(1, 18, 281, 0, 1),
(1, 18, 282, 0, 1),
(1, 18, 283, 0, 1),
(1, 18, 284, 0, 1),
(1, 18, 285, 0, 1),
(1, 18, 286, 0, 1),
(1, 18, 287, 0, 1),
(1, 18, 288, 0, 1),
(1, 19, 289, 0, 1),
(1, 19, 290, 0, 1),
(1, 19, 291, 0, 1),
(1, 19, 292, 0, 1),
(1, 19, 293, 0, 1),
(1, 19, 294, 0, 1),
(1, 19, 295, 0, 1),
(1, 20, 296, 0, 1),
(1, 20, 297, 0, 1),
(1, 20, 298, 0, 1),
(1, 20, 299, 0, 1),
(1, 20, 300, 0, 1),
(1, 20, 301, 0, 1),
(1, 20, 302, 0, 1),
(1, 20, 303, 0, 1),
(1, 20, 304, 0, 1),
(1, 20, 305, 0, 1),
(1, 20, 306, 0, 1),
(1, 20, 307, 0, 1),
(1, 20, 308, 0, 1),
(1, 20, 309, 0, 1),
(1, 20, 310, 0, 1),
(1, 20, 311, 0, 1),
(1, 20, 312, 0, 1),
(1, 20, 313, 0, 1),
(1, 20, 314, 0, 1),
(1, 20, 315, 0, 1),
(1, 20, 316, 0, 1),
(1, 20, 317, 0, 1),
(1, 20, 318, 0, 1),
(1, 20, 319, 0, 1),
(1, 20, 320, 0, 1),
(1, 20, 321, 0, 1),
(1, 20, 322, 0, 1),
(1, 20, 323, 0, 1),
(1, 20, 324, 0, 1),
(1, 20, 325, 0, 1),
(1, 20, 326, 0, 1),
(1, 20, 327, 0, 1),
(1, 20, 328, 0, 1),
(1, 20, 329, 0, 1),
(1, 20, 330, 0, 1),
(1, 20, 331, 0, 1),
(1, 21, 332, 0, 1),
(1, 21, 333, 0, 1),
(1, 21, 334, 0, 1),
(1, 21, 335, 0, 1),
(1, 21, 336, 0, 1),
(1, 21, 337, 0, 1),
(1, 21, 338, 0, 1),
(1, 21, 339, 0, 1),
(1, 21, 340, 0, 1),
(1, 21, 341, 0, 1),
(1, 21, 342, 0, 1),
(1, 21, 343, 0, 1),
(1, 21, 344, 0, 1),
(1, 21, 345, 0, 1),
(1, 21, 346, 0, 1),
(1, 21, 347, 0, 1),
(1, 21, 348, 0, 1),
(1, 21, 349, 0, 1),
(1, 21, 350, 0, 1),
(1, 21, 351, 0, 1),
(1, 21, 352, 0, 1),
(1, 21, 353, 0, 1),
(1, 21, 354, 0, 1),
(1, 21, 355, 0, 1),
(1, 21, 356, 0, 1),
(1, 21, 357, 0, 1),
(1, 21, 358, 0, 1),
(1, 21, 359, 0, 1),
(1, 21, 360, 0, 1),
(1, 21, 361, 0, 1),
(1, 21, 362, 0, 1),
(1, 21, 363, 0, 1),
(1, 21, 364, 0, 1),
(1, 21, 365, 0, 1),
(1, 21, 366, 0, 1),
(1, 21, 367, 0, 1),
(1, 21, 368, 0, 1),
(1, 22, 369, 0, 1),
(1, 22, 370, 0, 1),
(1, 22, 371, 0, 1),
(1, 22, 372, 0, 1),
(1, 22, 373, 0, 1),
(1, 22, 374, 0, 1),
(1, 22, 375, 0, 1),
(1, 22, 376, 0, 1),
(1, 22, 377, 0, 1),
(1, 22, 378, 0, 1),
(1, 22, 379, 0, 1),
(1, 22, 380, 0, 1),
(1, 22, 381, 0, 1),
(1, 22, 382, 0, 1),
(1, 22, 383, 0, 1),
(1, 22, 384, 0, 1),
(1, 22, 385, 0, 1),
(1, 22, 386, 0, 1),
(1, 22, 387, 0, 1),
(1, 22, 388, 0, 1),
(1, 22, 389, 0, 1),
(1, 22, 390, 0, 1),
(1, 22, 391, 0, 1),
(1, 22, 392, 0, 1),
(1, 22, 393, 0, 1),
(1, 22, 394, 0, 1),
(1, 22, 395, 0, 1),
(1, 22, 396, 0, 1),
(1, 22, 397, 0, 1),
(1, 22, 398, 0, 1),
(1, 22, 399, 0, 1),
(1, 22, 400, 0, 1),
(1, 22, 401, 0, 1),
(1, 22, 402, 0, 1),
(1, 22, 403, 0, 1),
(1, 22, 404, 0, 1),
(1, 22, 405, 0, 1),
(1, 22, 406, 0, 1),
(1, 22, 407, 0, 1),
(1, 22, 408, 0, 1),
(1, 22, 409, 0, 1),
(1, 22, 410, 0, 1),
(1, 22, 411, 0, 1),
(1, 22, 412, 0, 1),
(1, 22, 413, 0, 1),
(1, 22, 414, 0, 1),
(1, 23, 415, 0, 1),
(1, 23, 416, 0, 1),
(1, 23, 417, 0, 1),
(1, 23, 418, 0, 1),
(1, 23, 419, 0, 1),
(1, 23, 420, 0, 1),
(1, 23, 421, 0, 1),
(1, 23, 422, 0, 1),
(1, 23, 423, 0, 1),
(1, 23, 424, 0, 1),
(1, 23, 425, 0, 1),
(1, 23, 426, 0, 1),
(1, 23, 427, 0, 1),
(1, 23, 428, 0, 1),
(1, 23, 429, 0, 1),
(1, 23, 430, 0, 1),
(1, 23, 431, 0, 1),
(1, 23, 432, 0, 1),
(1, 23, 433, 0, 1),
(1, 23, 434, 0, 1),
(1, 23, 435, 0, 1),
(1, 23, 436, 0, 1),
(1, 23, 437, 0, 1),
(1, 23, 438, 0, 1),
(1, 23, 439, 0, 1),
(1, 23, 440, 0, 1),
(1, 23, 441, 0, 1),
(1, 23, 442, 0, 1),
(1, 23, 443, 0, 1),
(1, 23, 444, 0, 1),
(1, 23, 445, 0, 1),
(1, 23, 446, 0, 1),
(1, 23, 447, 0, 1),
(1, 23, 448, 0, 1),
(1, 23, 449, 0, 1),
(1, 23, 450, 0, 1),
(1, 23, 451, 0, 1),
(1, 23, 452, 0, 1),
(1, 10, 490, 0, 1),
(1, 10, 491, 0, 1),
(1, 10, 492, 0, 1),
(1, 10, 493, 0, 1),
(1, 10, 494, 0, 1),
(1, 10, 495, 0, 1),
(1, 30, 496, 0, 1),
(1, 30, 497, 0, 1),
(1, 30, 498, 0, 1),
(1, 30, 499, 0, 1),
(1, 30, 500, 0, 1),
(1, 30, 501, 0, 1),
(1, 30, 502, 0, 1),
(1, 30, 503, 0, 1),
(1, 30, 504, 0, 1),
(1, 30, 505, 0, 1),
(1, 30, 506, 0, 1),
(1, 30, 507, 0, 1),
(1, 30, 508, 0, 1),
(1, 30, 509, 0, 1),
(1, 30, 510, 0, 1),
(1, 30, 511, 0, 1),
(1, 30, 512, 0, 1),
(1, 30, 513, 0, 1),
(1, 31, 514, 0, 1),
(1, 31, 515, 0, 1),
(1, 31, 516, 0, 1),
(1, 31, 517, 0, 1),
(1, 31, 518, 0, 1),
(1, 31, 519, 0, 1),
(1, 31, 520, 0, 1),
(1, 31, 521, 0, 1),
(1, 31, 522, 0, 1),
(1, 31, 523, 0, 1),
(1, 31, 524, 0, 1),
(1, 31, 525, 0, 1),
(1, 31, 526, 0, 1),
(1, 31, 527, 0, 1),
(1, 31, 528, 0, 1),
(1, 31, 529, 0, 1),
(1, 31, 530, 0, 1),
(1, 31, 531, 0, 1),
(1, 32, 532, 0, 1),
(1, 32, 533, 0, 1),
(1, 32, 534, 0, 1),
(1, 32, 535, 0, 1),
(2, 6, 1, 0, 1),
(2, 6, 2, 0, 1),
(2, 6, 3, 0, 1),
(2, 6, 4, 0, 1),
(2, 6, 5, 0, 1),
(2, 6, 6, 0, 1),
(2, 6, 7, 0, 1),
(2, 6, 8, 0, 1),
(2, 6, 9, 0, 1),
(2, 6, 10, 0, 1),
(2, 6, 11, 0, 1),
(2, 6, 12, 0, 1),
(2, 6, 13, 0, 1),
(2, 6, 14, 0, 1),
(2, 6, 15, 0, 1),
(2, 6, 16, 0, 1),
(2, 6, 17, 0, 1),
(2, 6, 18, 0, 1),
(2, 6, 19, 0, 1),
(2, 6, 20, 0, 1),
(2, 6, 21, 0, 1),
(2, 6, 22, 0, 1),
(2, 6, 23, 0, 1),
(2, 6, 24, 0, 1),
(2, 6, 25, 0, 1),
(2, 6, 26, 0, 1),
(2, 6, 27, 0, 1),
(2, 6, 28, 0, 1),
(2, 6, 29, 0, 1),
(2, 6, 30, 0, 1),
(2, 6, 31, 0, 1),
(2, 6, 32, 0, 1),
(2, 6, 33, 0, 1),
(2, 6, 34, 0, 1),
(2, 6, 35, 0, 1),
(2, 7, 36, 0, 1),
(2, 7, 37, 0, 1),
(2, 7, 38, 0, 1),
(2, 7, 39, 0, 1),
(2, 7, 40, 0, 1),
(2, 7, 41, 0, 1),
(2, 7, 42, 0, 1),
(2, 7, 43, 0, 1),
(2, 7, 44, 0, 1),
(2, 7, 45, 0, 1),
(2, 7, 46, 0, 1),
(2, 7, 47, 0, 1),
(2, 7, 48, 0, 1),
(2, 7, 49, 0, 1),
(2, 7, 50, 0, 1),
(2, 7, 51, 0, 1),
(2, 7, 52, 0, 1),
(2, 7, 53, 0, 1),
(2, 7, 54, 0, 1),
(2, 7, 55, 0, 1),
(2, 7, 56, 0, 1),
(2, 7, 57, 0, 1),
(2, 7, 58, 0, 1),
(2, 7, 59, 0, 1),
(2, 7, 60, 0, 1),
(2, 7, 61, 0, 1),
(2, 7, 62, 0, 1),
(2, 7, 63, 0, 1),
(2, 4, 64, 0, 1),
(2, 4, 65, 0, 1),
(2, 4, 66, 0, 1),
(2, 4, 67, 0, 1),
(2, 4, 68, 0, 1),
(2, 4, 69, 0, 1),
(2, 4, 70, 0, 1),
(2, 4, 71, 0, 1),
(2, 4, 72, 0, 1),
(2, 4, 73, 0, 1),
(2, 4, 74, 0, 1),
(2, 4, 75, 0, 1),
(2, 4, 76, 0, 1),
(2, 4, 77, 0, 1),
(2, 4, 78, 0, 1),
(2, 4, 79, 0, 1),
(2, 4, 80, 0, 1),
(2, 4, 81, 0, 1),
(2, 4, 82, 0, 1),
(2, 4, 83, 0, 1),
(2, 4, 84, 0, 1),
(2, 4, 85, 0, 1),
(2, 4, 86, 0, 1),
(2, 4, 87, 0, 1),
(2, 4, 88, 0, 1),
(2, 4, 89, 0, 1),
(2, 4, 90, 0, 1),
(2, 4, 91, 0, 1),
(2, 4, 92, 0, 1),
(2, 4, 93, 0, 1),
(2, 4, 94, 0, 1),
(2, 4, 95, 0, 1),
(2, 4, 96, 0, 1),
(2, 4, 97, 0, 1),
(2, 4, 98, 0, 1),
(2, 4, 99, 0, 1),
(2, 4, 100, 0, 1),
(2, 4, 101, 0, 1),
(2, 4, 102, 0, 1),
(2, 4, 103, 0, 1),
(2, 4, 104, 0, 1),
(2, 4, 105, 0, 1),
(2, 4, 106, 0, 1),
(2, 2, 107, 0, 1),
(2, 2, 108, 0, 1),
(2, 2, 109, 0, 1),
(2, 2, 110, 0, 1),
(2, 2, 111, 0, 1),
(2, 2, 112, 0, 1),
(2, 2, 113, 0, 1),
(2, 2, 114, 0, 1),
(2, 2, 115, 0, 1),
(2, 2, 116, 0, 1),
(2, 2, 117, 0, 1),
(2, 2, 118, 0, 1),
(2, 2, 119, 0, 1),
(2, 2, 120, 0, 1),
(2, 2, 121, 0, 1),
(2, 26, 122, 0, 1),
(2, 26, 123, 0, 1),
(2, 26, 124, 0, 1),
(2, 26, 125, 0, 1),
(2, 26, 126, 0, 1),
(2, 26, 127, 0, 1),
(2, 26, 128, 0, 1),
(2, 26, 129, 0, 1),
(2, 26, 130, 0, 1),
(2, 26, 131, 0, 1),
(2, 26, 132, 0, 1),
(2, 26, 133, 0, 1),
(2, 26, 134, 0, 1),
(2, 26, 135, 0, 1),
(2, 26, 136, 0, 1),
(2, 26, 137, 0, 1),
(2, 26, 138, 0, 1),
(2, 26, 139, 0, 1),
(2, 26, 140, 0, 1),
(2, 26, 141, 0, 1),
(2, 26, 142, 0, 1),
(2, 26, 143, 0, 1),
(2, 26, 144, 0, 1),
(2, 26, 145, 0, 1),
(2, 13, 146, 0, 1),
(2, 13, 147, 0, 1),
(2, 13, 148, 0, 1),
(2, 13, 149, 0, 1),
(2, 13, 150, 0, 1),
(2, 13, 151, 0, 1),
(2, 13, 152, 0, 1),
(2, 13, 153, 0, 1),
(2, 13, 154, 0, 1),
(2, 13, 155, 0, 1),
(2, 13, 156, 0, 1),
(2, 13, 157, 0, 1),
(2, 13, 158, 0, 1),
(2, 13, 159, 0, 1),
(2, 13, 160, 0, 1),
(2, 13, 161, 0, 1),
(2, 13, 162, 0, 1),
(2, 14, 163, 0, 1),
(2, 14, 164, 0, 1),
(2, 14, 165, 0, 1),
(2, 14, 166, 0, 1),
(2, 14, 167, 0, 1),
(2, 14, 168, 0, 1),
(2, 14, 169, 0, 1),
(2, 14, 170, 0, 1),
(2, 14, 171, 0, 1),
(2, 14, 172, 0, 1),
(2, 14, 173, 0, 1),
(2, 14, 174, 0, 1),
(2, 14, 175, 0, 1),
(2, 14, 176, 0, 1),
(2, 14, 177, 0, 1),
(2, 14, 178, 0, 1),
(2, 14, 179, 0, 1),
(2, 14, 180, 0, 1),
(2, 14, 181, 0, 1),
(2, 14, 182, 0, 1),
(2, 14, 183, 0, 1),
(2, 14, 184, 0, 1),
(2, 14, 185, 0, 1),
(2, 14, 186, 0, 1),
(2, 14, 187, 0, 1),
(2, 14, 188, 0, 1),
(2, 14, 189, 0, 1),
(2, 14, 190, 0, 1),
(2, 14, 191, 0, 1),
(2, 14, 192, 0, 1),
(2, 8, 193, 0, 1),
(2, 8, 194, 0, 1),
(2, 8, 195, 0, 1),
(2, 8, 196, 0, 1),
(2, 8, 197, 0, 1),
(2, 8, 198, 0, 1),
(2, 8, 199, 0, 1),
(2, 8, 200, 0, 1),
(2, 8, 201, 0, 1),
(2, 8, 202, 0, 1),
(2, 8, 203, 0, 1),
(2, 8, 204, 0, 1),
(2, 8, 205, 0, 1),
(2, 8, 206, 0, 1),
(2, 10, 207, 0, 1),
(2, 10, 208, 0, 1),
(2, 10, 209, 0, 1),
(2, 10, 210, 0, 1),
(2, 10, 211, 0, 1),
(2, 10, 212, 0, 1),
(2, 10, 213, 0, 1),
(2, 10, 214, 0, 1),
(2, 10, 215, 0, 1),
(2, 10, 216, 0, 1),
(2, 10, 217, 0, 1),
(2, 10, 218, 0, 1),
(2, 9, 219, 0, 1),
(2, 9, 220, 0, 1),
(2, 9, 221, 0, 1),
(2, 9, 222, 0, 1),
(2, 9, 223, 0, 1),
(2, 9, 224, 0, 1),
(2, 9, 225, 0, 1),
(2, 9, 226, 0, 1),
(2, 9, 227, 0, 1),
(2, 9, 228, 0, 1),
(2, 9, 229, 0, 1),
(2, 9, 230, 0, 1),
(2, 9, 231, 0, 1),
(2, 9, 232, 0, 1),
(2, 9, 233, 0, 1),
(2, 9, 234, 0, 1),
(2, 9, 235, 0, 1),
(2, 9, 236, 0, 1),
(2, 9, 237, 0, 1),
(2, 9, 238, 0, 1),
(2, 9, 239, 0, 1),
(2, 9, 240, 0, 1),
(2, 9, 241, 0, 1),
(2, 16, 242, 0, 1),
(2, 16, 243, 0, 1),
(2, 16, 244, 0, 1),
(2, 16, 245, 0, 1),
(2, 16, 246, 0, 1),
(2, 16, 247, 0, 1),
(2, 16, 248, 0, 1),
(2, 16, 249, 0, 1),
(2, 16, 250, 0, 1),
(2, 16, 251, 0, 1),
(2, 16, 252, 0, 1),
(2, 16, 253, 0, 1),
(2, 16, 254, 0, 1),
(2, 16, 255, 0, 1),
(2, 16, 256, 0, 1),
(2, 16, 257, 0, 1),
(2, 16, 258, 0, 1),
(2, 16, 259, 0, 1),
(2, 16, 260, 0, 1),
(2, 16, 261, 0, 1),
(2, 16, 262, 0, 1),
(2, 16, 263, 0, 1),
(2, 15, 264, 0, 1),
(2, 15, 265, 0, 1),
(2, 15, 266, 0, 1),
(2, 15, 267, 0, 1),
(2, 15, 268, 0, 1),
(2, 15, 269, 0, 1),
(2, 15, 270, 0, 1),
(2, 15, 271, 0, 1),
(2, 15, 272, 0, 1),
(2, 18, 273, 0, 1),
(2, 18, 274, 0, 1),
(2, 18, 275, 0, 1),
(2, 18, 276, 0, 1),
(2, 18, 277, 0, 1),
(2, 18, 278, 0, 1),
(2, 18, 279, 0, 1),
(2, 18, 280, 0, 1),
(2, 18, 281, 0, 1),
(2, 18, 282, 0, 1),
(2, 18, 283, 0, 1),
(2, 18, 284, 0, 1),
(2, 18, 285, 0, 1),
(2, 18, 286, 0, 1),
(2, 18, 287, 0, 1),
(2, 18, 288, 0, 1),
(2, 19, 289, 0, 1),
(2, 19, 290, 0, 1),
(2, 19, 291, 0, 1),
(2, 19, 292, 0, 1),
(2, 19, 293, 0, 1),
(2, 19, 294, 0, 1),
(2, 19, 295, 0, 1),
(2, 20, 296, 0, 1),
(2, 20, 297, 0, 1),
(2, 20, 298, 0, 1),
(2, 20, 299, 0, 1),
(2, 20, 300, 0, 1),
(2, 20, 301, 0, 1),
(2, 20, 302, 0, 1),
(2, 20, 303, 0, 1),
(2, 20, 304, 0, 1),
(2, 20, 305, 0, 1),
(2, 20, 306, 0, 1),
(2, 20, 307, 0, 1),
(2, 20, 308, 0, 1),
(2, 20, 309, 0, 1),
(2, 20, 310, 0, 1),
(2, 20, 311, 0, 1),
(2, 20, 312, 0, 1),
(2, 20, 313, 0, 1),
(2, 20, 314, 0, 1),
(2, 20, 315, 0, 1),
(2, 20, 316, 0, 1),
(2, 20, 317, 0, 1),
(2, 20, 318, 0, 1),
(2, 20, 319, 0, 1),
(2, 20, 320, 0, 1),
(2, 20, 321, 0, 1),
(2, 20, 322, 0, 1),
(2, 20, 323, 0, 1),
(2, 20, 324, 0, 1),
(2, 20, 325, 0, 1),
(2, 20, 326, 0, 1),
(2, 20, 327, 0, 1),
(2, 20, 328, 0, 1),
(2, 20, 329, 0, 1),
(2, 20, 330, 0, 1),
(2, 20, 331, 0, 1),
(2, 21, 332, 0, 1),
(2, 21, 333, 0, 1),
(2, 21, 334, 0, 1),
(2, 21, 335, 0, 1),
(2, 21, 336, 0, 1),
(2, 21, 337, 0, 1),
(2, 21, 338, 0, 1),
(2, 21, 339, 0, 1),
(2, 21, 340, 0, 1),
(2, 21, 341, 0, 1),
(2, 21, 342, 0, 1),
(2, 21, 343, 0, 1),
(2, 21, 344, 0, 1),
(2, 21, 345, 0, 1),
(2, 21, 346, 0, 1),
(2, 21, 347, 0, 1),
(2, 21, 348, 0, 1),
(2, 21, 349, 0, 1),
(2, 21, 350, 0, 1),
(2, 21, 351, 0, 1),
(2, 21, 352, 0, 1),
(2, 21, 353, 0, 1),
(2, 21, 354, 0, 1),
(2, 21, 355, 0, 1),
(2, 21, 356, 0, 1),
(2, 21, 357, 0, 1),
(2, 21, 358, 0, 1),
(2, 21, 359, 0, 1),
(2, 21, 360, 0, 1),
(2, 21, 361, 0, 1),
(2, 21, 362, 0, 1),
(2, 21, 363, 0, 1),
(2, 21, 364, 0, 1),
(2, 21, 365, 0, 1),
(2, 21, 366, 0, 1),
(2, 21, 367, 0, 1),
(2, 21, 368, 0, 1),
(2, 22, 369, 0, 1),
(2, 22, 370, 0, 1),
(2, 22, 371, 0, 1),
(2, 22, 372, 0, 1),
(2, 22, 373, 0, 1),
(2, 22, 374, 0, 1),
(2, 22, 375, 0, 1),
(2, 22, 376, 0, 1),
(2, 22, 377, 0, 1),
(2, 22, 378, 0, 1),
(2, 22, 379, 0, 1),
(2, 22, 380, 0, 1),
(2, 22, 381, 0, 1),
(2, 22, 382, 0, 1),
(2, 22, 383, 0, 1),
(2, 22, 384, 0, 1),
(2, 22, 385, 0, 1),
(2, 22, 386, 0, 1),
(2, 22, 387, 0, 1),
(2, 22, 388, 0, 1),
(2, 22, 389, 0, 1),
(2, 22, 390, 0, 1),
(2, 22, 391, 0, 1),
(2, 22, 392, 0, 1),
(2, 22, 393, 0, 1),
(2, 22, 394, 0, 1),
(2, 22, 395, 0, 1),
(2, 22, 396, 0, 1),
(2, 22, 397, 0, 1),
(2, 22, 398, 0, 1),
(2, 22, 399, 0, 1),
(2, 22, 400, 0, 1),
(2, 22, 401, 0, 1),
(2, 22, 402, 0, 1),
(2, 22, 403, 0, 1),
(2, 22, 404, 0, 1),
(2, 22, 405, 0, 1),
(2, 22, 406, 0, 1),
(2, 22, 407, 0, 1),
(2, 22, 408, 0, 1),
(2, 22, 409, 0, 1),
(2, 22, 410, 0, 1),
(2, 22, 411, 0, 1),
(2, 22, 412, 0, 1),
(2, 22, 413, 0, 1),
(2, 22, 414, 0, 1),
(2, 23, 415, 0, 1),
(2, 23, 416, 0, 1),
(2, 23, 417, 0, 1),
(2, 23, 418, 0, 1),
(2, 23, 419, 0, 1),
(2, 23, 420, 0, 1),
(2, 23, 421, 0, 1),
(2, 23, 422, 0, 1),
(2, 23, 423, 0, 1),
(2, 23, 424, 0, 1),
(2, 23, 425, 0, 1),
(2, 23, 426, 0, 1),
(2, 23, 427, 0, 1),
(2, 23, 428, 0, 1),
(2, 23, 429, 0, 1),
(2, 23, 430, 0, 1),
(2, 23, 431, 0, 1),
(2, 23, 432, 0, 1),
(2, 23, 433, 0, 1),
(2, 23, 434, 0, 1),
(2, 23, 435, 0, 1),
(2, 23, 436, 0, 1),
(2, 23, 437, 0, 1),
(2, 23, 438, 0, 1),
(2, 23, 439, 0, 1),
(2, 23, 440, 0, 1),
(2, 23, 441, 0, 1),
(2, 23, 442, 0, 1),
(2, 23, 443, 0, 1),
(2, 23, 444, 0, 1),
(2, 23, 445, 0, 1),
(2, 23, 446, 0, 1),
(2, 23, 447, 0, 1),
(2, 23, 448, 0, 1),
(2, 23, 449, 0, 1),
(2, 23, 450, 0, 1),
(2, 23, 451, 0, 1),
(2, 23, 452, 0, 1),
(2, 10, 490, 0, 1),
(2, 10, 491, 0, 1),
(2, 10, 492, 0, 1),
(2, 10, 493, 0, 1),
(2, 10, 494, 0, 1),
(2, 10, 495, 0, 1),
(2, 30, 496, 0, 1),
(2, 30, 497, 0, 1),
(2, 30, 498, 0, 1),
(2, 30, 499, 0, 1),
(2, 30, 500, 0, 1),
(2, 30, 501, 0, 1),
(2, 30, 502, 0, 1),
(2, 30, 503, 0, 1),
(2, 30, 504, 0, 1),
(2, 30, 505, 0, 1),
(2, 30, 506, 0, 1),
(2, 30, 507, 0, 1),
(2, 30, 508, 0, 1),
(2, 30, 509, 0, 1),
(2, 30, 510, 0, 1),
(2, 30, 511, 0, 1),
(2, 30, 512, 0, 1),
(2, 30, 513, 0, 1),
(2, 31, 514, 0, 1),
(2, 31, 515, 0, 1),
(2, 31, 516, 0, 1),
(2, 31, 517, 0, 1),
(2, 31, 518, 0, 1),
(2, 31, 519, 0, 1),
(2, 31, 520, 0, 1),
(2, 31, 521, 0, 1),
(2, 31, 522, 0, 1),
(2, 31, 523, 0, 1),
(2, 31, 524, 0, 1),
(2, 31, 525, 0, 1),
(2, 31, 526, 0, 1),
(2, 31, 527, 0, 1),
(2, 31, 528, 0, 1),
(2, 31, 529, 0, 1),
(2, 31, 530, 0, 1),
(2, 31, 531, 0, 1),
(2, 32, 532, 0, 1),
(2, 32, 533, 0, 1),
(2, 32, 534, 0, 1),
(2, 32, 535, 0, 1),
(3, 6, 1, 0, 1),
(3, 6, 2, 0, 1),
(3, 6, 3, 0, 1),
(3, 6, 4, 0, 1),
(3, 6, 5, 0, 1),
(3, 6, 6, 0, 1),
(3, 6, 7, 0, 1),
(3, 6, 8, 0, 1),
(3, 6, 9, 0, 1),
(3, 6, 10, 0, 1),
(3, 6, 11, 0, 1),
(3, 6, 12, 0, 1),
(3, 6, 13, 0, 1),
(3, 6, 14, 0, 1),
(3, 6, 15, 0, 1),
(3, 6, 16, 0, 1),
(3, 6, 17, 0, 1),
(3, 6, 18, 0, 1),
(3, 6, 19, 0, 1),
(3, 6, 20, 0, 1),
(3, 6, 21, 0, 1),
(3, 6, 22, 0, 1),
(3, 6, 23, 0, 1),
(3, 6, 24, 0, 1),
(3, 6, 25, 0, 1),
(3, 6, 26, 0, 1),
(3, 6, 27, 0, 1),
(3, 6, 28, 0, 1),
(3, 6, 29, 0, 1),
(3, 6, 30, 0, 1),
(3, 6, 31, 0, 1),
(3, 6, 32, 0, 1),
(3, 6, 33, 0, 1),
(3, 6, 34, 0, 1),
(3, 6, 35, 0, 1),
(3, 7, 36, 0, 1),
(3, 7, 37, 0, 1),
(3, 7, 38, 0, 1),
(3, 7, 39, 0, 1),
(3, 7, 40, 0, 1),
(3, 7, 41, 0, 1),
(3, 7, 42, 0, 1),
(3, 7, 43, 0, 1),
(3, 7, 44, 0, 1),
(3, 7, 45, 0, 1),
(3, 7, 46, 0, 1),
(3, 7, 47, 0, 1),
(3, 7, 48, 0, 1),
(3, 7, 49, 0, 1),
(3, 7, 50, 0, 1),
(3, 7, 51, 0, 1),
(3, 7, 52, 0, 1),
(3, 7, 53, 0, 1),
(3, 7, 54, 0, 1),
(3, 7, 55, 0, 1),
(3, 7, 56, 0, 1),
(3, 7, 57, 0, 1),
(3, 7, 58, 0, 1),
(3, 7, 59, 0, 1),
(3, 7, 60, 0, 1),
(3, 7, 61, 0, 1),
(3, 7, 62, 0, 1),
(3, 7, 63, 0, 1),
(3, 4, 64, 0, 1),
(3, 4, 65, 0, 1),
(3, 4, 66, 0, 1),
(3, 4, 67, 0, 1),
(3, 4, 68, 0, 1),
(3, 4, 69, 0, 1),
(3, 4, 70, 0, 1),
(3, 4, 71, 0, 1),
(3, 4, 72, 0, 1),
(3, 4, 73, 0, 1),
(3, 4, 74, 0, 1),
(3, 4, 75, 0, 1),
(3, 4, 76, 0, 1),
(3, 4, 77, 0, 1),
(3, 4, 78, 0, 1),
(3, 4, 79, 0, 1),
(3, 4, 80, 0, 1),
(3, 4, 81, 0, 1),
(3, 4, 82, 0, 1),
(3, 4, 83, 0, 1),
(3, 4, 84, 0, 1),
(3, 4, 85, 0, 1),
(3, 4, 86, 0, 1),
(3, 4, 87, 0, 1),
(3, 4, 88, 0, 1),
(3, 4, 89, 0, 1),
(3, 4, 90, 0, 1),
(3, 4, 91, 0, 1),
(3, 4, 92, 0, 1),
(3, 4, 93, 0, 1),
(3, 4, 94, 0, 1),
(3, 4, 95, 0, 1),
(3, 4, 96, 0, 1),
(3, 4, 97, 0, 1),
(3, 4, 98, 0, 1),
(3, 4, 99, 0, 1),
(3, 4, 100, 0, 1),
(3, 4, 101, 0, 1),
(3, 4, 102, 0, 1),
(3, 4, 103, 0, 1),
(3, 4, 104, 0, 1),
(3, 4, 105, 0, 1),
(3, 4, 106, 0, 1),
(3, 2, 107, 0, 1),
(3, 2, 108, 0, 1),
(3, 2, 109, 0, 1),
(3, 2, 110, 0, 1),
(3, 2, 111, 0, 1),
(3, 2, 112, 0, 1),
(3, 2, 113, 0, 1),
(3, 2, 114, 0, 1),
(3, 2, 115, 0, 1),
(3, 2, 116, 0, 1),
(3, 2, 117, 0, 1),
(3, 2, 118, 0, 1),
(3, 2, 119, 0, 1),
(3, 2, 120, 0, 1),
(3, 2, 121, 0, 1),
(3, 26, 122, 0, 1),
(3, 26, 123, 0, 1),
(3, 26, 124, 0, 1),
(3, 26, 125, 0, 1),
(3, 26, 126, 0, 1),
(3, 26, 127, 0, 1),
(3, 26, 128, 0, 1),
(3, 26, 129, 0, 1),
(3, 26, 130, 0, 1),
(3, 26, 131, 0, 1),
(3, 26, 132, 0, 1),
(3, 26, 133, 0, 1),
(3, 26, 134, 0, 1),
(3, 26, 135, 0, 1),
(3, 26, 136, 0, 1),
(3, 26, 137, 0, 1),
(3, 26, 138, 0, 1),
(3, 26, 139, 0, 1),
(3, 26, 140, 0, 1),
(3, 26, 141, 0, 1),
(3, 26, 142, 0, 1),
(3, 26, 143, 0, 1),
(3, 26, 144, 0, 1),
(3, 26, 145, 0, 1),
(3, 13, 146, 0, 1),
(3, 13, 147, 0, 1),
(3, 13, 148, 0, 1),
(3, 13, 149, 0, 1),
(3, 13, 150, 0, 1),
(3, 13, 151, 0, 1),
(3, 13, 152, 0, 1),
(3, 13, 153, 0, 1),
(3, 13, 154, 0, 1),
(3, 13, 155, 0, 1),
(3, 13, 156, 0, 1),
(3, 13, 157, 0, 1),
(3, 13, 158, 0, 1),
(3, 13, 159, 0, 1),
(3, 13, 160, 0, 1),
(3, 13, 161, 0, 1),
(3, 13, 162, 0, 1),
(3, 14, 163, 0, 1),
(3, 14, 164, 0, 1),
(3, 14, 165, 0, 1),
(3, 14, 166, 0, 1),
(3, 14, 167, 0, 1),
(3, 14, 168, 0, 1),
(3, 14, 169, 0, 1),
(3, 14, 170, 0, 1),
(3, 14, 171, 0, 1),
(3, 14, 172, 0, 1),
(3, 14, 173, 0, 1),
(3, 14, 174, 0, 1),
(3, 14, 175, 0, 1),
(3, 14, 176, 0, 1),
(3, 14, 177, 0, 1),
(3, 14, 178, 0, 1),
(3, 14, 179, 0, 1),
(3, 14, 180, 0, 1),
(3, 14, 181, 0, 1),
(3, 14, 182, 0, 1),
(3, 14, 183, 0, 1),
(3, 14, 184, 0, 1),
(3, 14, 185, 0, 1),
(3, 14, 186, 0, 1),
(3, 14, 187, 0, 1),
(3, 14, 188, 0, 1),
(3, 14, 189, 0, 1),
(3, 14, 190, 0, 1),
(3, 14, 191, 0, 1),
(3, 14, 192, 0, 1),
(3, 8, 193, 0, 1),
(3, 8, 194, 0, 1),
(3, 8, 195, 0, 1),
(3, 8, 196, 0, 1),
(3, 8, 197, 0, 1),
(3, 8, 198, 0, 1),
(3, 8, 199, 0, 1),
(3, 8, 200, 0, 1),
(3, 8, 201, 0, 1),
(3, 8, 202, 0, 1),
(3, 8, 203, 0, 1),
(3, 8, 204, 0, 1),
(3, 8, 205, 0, 1),
(3, 8, 206, 0, 1),
(3, 10, 207, 0, 1),
(3, 10, 208, 0, 1),
(3, 10, 209, 0, 1),
(3, 10, 210, 0, 1),
(3, 10, 211, 0, 1),
(3, 10, 212, 0, 1),
(3, 10, 213, 0, 1),
(3, 10, 214, 0, 1),
(3, 10, 215, 0, 1),
(3, 10, 216, 0, 1),
(3, 10, 217, 0, 1),
(3, 10, 218, 0, 1),
(3, 9, 219, 0, 1),
(3, 9, 220, 0, 1),
(3, 9, 221, 0, 1),
(3, 9, 222, 0, 1),
(3, 9, 223, 0, 1),
(3, 9, 224, 0, 1),
(3, 9, 225, 0, 1),
(3, 9, 226, 0, 1),
(3, 9, 227, 0, 1),
(3, 9, 228, 0, 1),
(3, 9, 229, 0, 1),
(3, 9, 230, 0, 1),
(3, 9, 231, 0, 1),
(3, 9, 232, 0, 1),
(3, 9, 233, 0, 1),
(3, 9, 234, 0, 1),
(3, 9, 235, 0, 1),
(3, 9, 236, 0, 1),
(3, 9, 237, 0, 1),
(3, 9, 238, 0, 1),
(3, 9, 239, 0, 1),
(3, 9, 240, 0, 1),
(3, 9, 241, 0, 1),
(3, 16, 242, 0, 1),
(3, 16, 243, 0, 1),
(3, 16, 244, 0, 1),
(3, 16, 245, 0, 1),
(3, 16, 246, 0, 1),
(3, 16, 247, 0, 1),
(3, 16, 248, 0, 1),
(3, 16, 249, 0, 1),
(3, 16, 250, 0, 1),
(3, 16, 251, 0, 1),
(3, 16, 252, 0, 1),
(3, 16, 253, 0, 1),
(3, 16, 254, 0, 1),
(3, 16, 255, 0, 1),
(3, 16, 256, 0, 1),
(3, 16, 257, 0, 1),
(3, 16, 258, 0, 1),
(3, 16, 259, 0, 1),
(3, 16, 260, 0, 1),
(3, 16, 261, 0, 1),
(3, 16, 262, 0, 1),
(3, 16, 263, 0, 1),
(3, 15, 264, 0, 1),
(3, 15, 265, 0, 1),
(3, 15, 266, 0, 1),
(3, 15, 267, 0, 1),
(3, 15, 268, 0, 1),
(3, 15, 269, 0, 1),
(3, 15, 270, 0, 1),
(3, 15, 271, 0, 1),
(3, 15, 272, 0, 1),
(3, 18, 273, 0, 1),
(3, 18, 274, 0, 1),
(3, 18, 275, 0, 1),
(3, 18, 276, 0, 1),
(3, 18, 277, 0, 1),
(3, 18, 278, 0, 1),
(3, 18, 279, 0, 1),
(3, 18, 280, 0, 1),
(3, 18, 281, 0, 1),
(3, 18, 282, 0, 1),
(3, 18, 283, 0, 1),
(3, 18, 284, 0, 1),
(3, 18, 285, 0, 1),
(3, 18, 286, 0, 1),
(3, 18, 287, 0, 1),
(3, 18, 288, 0, 1),
(3, 19, 289, 0, 1),
(3, 19, 290, 0, 1),
(3, 19, 291, 0, 1),
(3, 19, 292, 0, 1),
(3, 19, 293, 0, 1),
(3, 19, 294, 0, 1),
(3, 19, 295, 0, 1),
(3, 20, 296, 0, 1),
(3, 20, 297, 0, 1),
(3, 20, 298, 0, 1),
(3, 20, 299, 0, 1),
(3, 20, 300, 0, 1),
(3, 20, 301, 0, 1),
(3, 20, 302, 0, 1),
(3, 20, 303, 0, 1),
(3, 20, 304, 0, 1),
(3, 20, 305, 0, 1),
(3, 20, 306, 0, 1),
(3, 20, 307, 0, 1),
(3, 20, 308, 0, 1),
(3, 20, 309, 0, 1),
(3, 20, 310, 0, 1),
(3, 20, 311, 0, 1),
(3, 20, 312, 0, 1),
(3, 20, 313, 0, 1),
(3, 20, 314, 0, 1),
(3, 20, 315, 0, 1),
(3, 20, 316, 0, 1),
(3, 20, 317, 0, 1),
(3, 20, 318, 0, 1),
(3, 20, 319, 0, 1),
(3, 20, 320, 0, 1),
(3, 20, 321, 0, 1),
(3, 20, 322, 0, 1),
(3, 20, 323, 0, 1),
(3, 20, 324, 0, 1),
(3, 20, 325, 0, 1),
(3, 20, 326, 0, 1),
(3, 20, 327, 0, 1),
(3, 20, 328, 0, 1),
(3, 20, 329, 0, 1),
(3, 20, 330, 0, 1),
(3, 20, 331, 0, 1),
(3, 21, 332, 0, 1),
(3, 21, 333, 0, 1),
(3, 21, 334, 0, 1),
(3, 21, 335, 0, 1),
(3, 21, 336, 0, 1),
(3, 21, 337, 0, 1),
(3, 21, 338, 0, 1),
(3, 21, 339, 0, 1),
(3, 21, 340, 0, 1),
(3, 21, 341, 0, 1),
(3, 21, 342, 0, 1),
(3, 21, 343, 0, 1),
(3, 21, 344, 0, 1),
(3, 21, 345, 0, 1),
(3, 21, 346, 0, 1),
(3, 21, 347, 0, 1),
(3, 21, 348, 0, 1),
(3, 21, 349, 0, 1),
(3, 21, 350, 0, 1),
(3, 21, 351, 0, 1),
(3, 21, 352, 0, 1),
(3, 21, 353, 0, 1),
(3, 21, 354, 0, 1),
(3, 21, 355, 0, 1),
(3, 21, 356, 0, 1),
(3, 21, 357, 0, 1),
(3, 21, 358, 0, 1),
(3, 21, 359, 0, 1),
(3, 21, 360, 0, 1),
(3, 21, 361, 0, 1),
(3, 21, 362, 0, 1),
(3, 21, 363, 0, 1),
(3, 21, 364, 0, 1),
(3, 21, 365, 0, 1),
(3, 21, 366, 0, 1),
(3, 21, 367, 0, 1),
(3, 21, 368, 0, 1),
(3, 22, 369, 0, 1),
(3, 22, 370, 0, 1),
(3, 22, 371, 0, 1),
(3, 22, 372, 0, 1),
(3, 22, 373, 0, 1),
(3, 22, 374, 0, 1),
(3, 22, 375, 0, 1),
(3, 22, 376, 0, 1),
(3, 22, 377, 0, 1),
(3, 22, 378, 0, 1),
(3, 22, 379, 0, 1),
(3, 22, 380, 0, 1),
(3, 22, 381, 0, 1),
(3, 22, 382, 0, 1),
(3, 22, 383, 0, 1),
(3, 22, 384, 0, 1),
(3, 22, 385, 0, 1),
(3, 22, 386, 0, 1),
(3, 22, 387, 0, 1),
(3, 22, 388, 0, 1),
(3, 22, 389, 0, 1),
(3, 22, 390, 0, 1),
(3, 22, 391, 0, 1),
(3, 22, 392, 0, 1),
(3, 22, 393, 0, 1),
(3, 22, 394, 0, 1),
(3, 22, 395, 0, 1),
(3, 22, 396, 0, 1),
(3, 22, 397, 0, 1),
(3, 22, 398, 0, 1),
(3, 22, 399, 0, 1),
(3, 22, 400, 0, 1),
(3, 22, 401, 0, 1),
(3, 22, 402, 0, 1),
(3, 22, 403, 0, 1),
(3, 22, 404, 0, 1),
(3, 22, 405, 0, 1),
(3, 22, 406, 0, 1),
(3, 22, 407, 0, 1),
(3, 22, 408, 0, 1),
(3, 22, 409, 0, 1),
(3, 22, 410, 0, 1),
(3, 22, 411, 0, 1),
(3, 22, 412, 0, 1),
(3, 22, 413, 0, 1),
(3, 22, 414, 0, 1),
(3, 23, 415, 0, 1),
(3, 23, 416, 0, 1),
(3, 23, 417, 0, 1),
(3, 23, 418, 0, 1),
(3, 23, 419, 0, 1),
(3, 23, 420, 0, 1),
(3, 23, 421, 0, 1),
(3, 23, 422, 0, 1),
(3, 23, 423, 0, 1),
(3, 23, 424, 0, 1),
(3, 23, 425, 0, 1),
(3, 23, 426, 0, 1),
(3, 23, 427, 0, 1),
(3, 23, 428, 0, 1),
(3, 23, 429, 0, 1),
(3, 23, 430, 0, 1),
(3, 23, 431, 0, 1),
(3, 23, 432, 0, 1),
(3, 23, 433, 0, 1),
(3, 23, 434, 0, 1),
(3, 23, 435, 0, 1),
(3, 23, 436, 0, 1),
(3, 23, 437, 0, 1),
(3, 23, 438, 0, 1),
(3, 23, 439, 0, 1),
(3, 23, 440, 0, 1),
(3, 23, 441, 0, 1),
(3, 23, 442, 0, 1),
(3, 23, 443, 0, 1),
(3, 23, 444, 0, 1),
(3, 23, 445, 0, 1),
(3, 23, 446, 0, 1),
(3, 23, 447, 0, 1),
(3, 23, 448, 0, 1),
(3, 23, 449, 0, 1),
(3, 23, 450, 0, 1),
(3, 23, 451, 0, 1),
(3, 23, 452, 0, 1),
(3, 10, 490, 0, 1),
(3, 10, 491, 0, 1),
(3, 10, 492, 0, 1),
(3, 10, 493, 0, 1),
(3, 10, 494, 0, 1),
(3, 10, 495, 0, 1),
(3, 30, 496, 0, 1),
(3, 30, 497, 0, 1),
(3, 30, 498, 0, 1),
(3, 30, 499, 0, 1),
(3, 30, 500, 0, 1),
(3, 30, 501, 0, 1),
(3, 30, 502, 0, 1),
(3, 30, 503, 0, 1),
(3, 30, 504, 0, 1),
(3, 30, 505, 0, 1),
(3, 30, 506, 0, 1),
(3, 30, 507, 0, 1),
(3, 30, 508, 0, 1),
(3, 30, 509, 0, 1),
(3, 30, 510, 0, 1),
(3, 30, 511, 0, 1),
(3, 30, 512, 0, 1),
(3, 30, 513, 0, 1),
(3, 31, 514, 0, 1),
(3, 31, 515, 0, 1),
(3, 31, 516, 0, 1),
(3, 31, 517, 0, 1),
(3, 31, 518, 0, 1),
(3, 31, 519, 0, 1),
(3, 31, 520, 0, 1),
(3, 31, 521, 0, 1),
(3, 31, 522, 0, 1),
(3, 31, 523, 0, 1),
(3, 31, 524, 0, 1),
(3, 31, 525, 0, 1),
(3, 31, 526, 0, 1),
(3, 31, 527, 0, 1),
(3, 31, 528, 0, 1),
(3, 31, 529, 0, 1),
(3, 31, 530, 0, 1),
(3, 31, 531, 0, 1),
(3, 32, 532, 0, 1),
(3, 32, 533, 0, 1),
(3, 32, 534, 0, 1),
(3, 32, 535, 0, 1),
(4, 6, 1, 0, 1),
(4, 6, 2, 0, 1),
(4, 6, 3, 0, 1),
(4, 6, 4, 0, 1),
(4, 6, 5, 0, 1),
(4, 6, 6, 0, 1),
(4, 6, 7, 0, 1),
(4, 6, 8, 0, 1),
(4, 6, 9, 0, 1),
(4, 6, 10, 0, 1),
(4, 6, 11, 0, 1),
(4, 6, 12, 0, 1),
(4, 6, 13, 0, 1),
(4, 6, 14, 0, 1),
(4, 6, 15, 0, 1),
(4, 6, 16, 0, 1),
(4, 6, 17, 0, 1),
(4, 6, 18, 0, 1),
(4, 6, 19, 0, 1),
(4, 6, 20, 0, 1),
(4, 6, 21, 0, 1),
(4, 6, 22, 0, 1),
(4, 6, 23, 0, 1),
(4, 6, 24, 0, 1),
(4, 6, 25, 0, 1),
(4, 6, 26, 0, 1),
(4, 6, 27, 0, 1),
(4, 6, 28, 0, 1),
(4, 6, 29, 0, 1),
(4, 6, 30, 0, 1),
(4, 6, 31, 0, 1),
(4, 6, 32, 0, 1),
(4, 6, 33, 0, 1),
(4, 6, 34, 0, 1),
(4, 6, 35, 0, 1),
(4, 7, 36, 0, 1),
(4, 7, 37, 0, 1),
(4, 7, 38, 0, 1),
(4, 7, 39, 0, 1),
(4, 7, 40, 0, 1),
(4, 7, 41, 0, 1),
(4, 7, 42, 0, 1),
(4, 7, 43, 0, 1),
(4, 7, 44, 0, 1),
(4, 7, 45, 0, 1),
(4, 7, 46, 0, 1),
(4, 7, 47, 0, 1),
(4, 7, 48, 0, 1),
(4, 7, 49, 0, 1),
(4, 7, 50, 0, 1),
(4, 7, 51, 0, 1),
(4, 7, 52, 0, 1),
(4, 7, 53, 0, 1),
(4, 7, 54, 0, 1),
(4, 7, 55, 0, 1),
(4, 7, 56, 0, 1),
(4, 7, 57, 0, 1),
(4, 7, 58, 0, 1),
(4, 7, 59, 0, 1),
(4, 7, 60, 0, 1),
(4, 7, 61, 0, 1),
(4, 7, 62, 0, 1),
(4, 7, 63, 0, 1),
(4, 4, 64, 0, 1),
(4, 4, 65, 0, 1),
(4, 4, 66, 0, 1),
(4, 4, 67, 0, 1),
(4, 4, 68, 0, 1),
(4, 4, 69, 0, 1),
(4, 4, 70, 0, 1),
(4, 4, 71, 0, 1),
(4, 4, 72, 0, 1),
(4, 4, 73, 0, 1),
(4, 4, 74, 0, 1),
(4, 4, 75, 0, 1),
(4, 4, 76, 0, 1),
(4, 4, 77, 0, 1),
(4, 4, 78, 0, 1),
(4, 4, 79, 0, 1),
(4, 4, 80, 0, 1),
(4, 4, 81, 0, 1),
(4, 4, 82, 0, 1),
(4, 4, 83, 0, 1),
(4, 4, 84, 0, 1),
(4, 4, 85, 0, 1),
(4, 4, 86, 0, 1),
(4, 4, 87, 0, 1),
(4, 4, 88, 0, 1),
(4, 4, 89, 0, 1),
(4, 4, 90, 0, 1),
(4, 4, 91, 0, 1),
(4, 4, 92, 0, 1),
(4, 4, 93, 0, 1),
(4, 4, 94, 0, 1),
(4, 4, 95, 0, 1),
(4, 4, 96, 0, 1),
(4, 4, 97, 0, 1),
(4, 4, 98, 0, 1),
(4, 4, 99, 0, 1),
(4, 4, 100, 0, 1),
(4, 4, 101, 0, 1),
(4, 4, 102, 0, 1),
(4, 4, 103, 0, 1),
(4, 4, 104, 0, 1),
(4, 4, 105, 0, 1),
(4, 4, 106, 0, 1),
(4, 2, 107, 0, 1),
(4, 2, 108, 0, 1),
(4, 2, 109, 0, 1),
(4, 2, 110, 0, 1),
(4, 2, 111, 0, 1),
(4, 2, 112, 0, 1),
(4, 2, 113, 0, 1),
(4, 2, 114, 0, 1),
(4, 2, 115, 0, 1),
(4, 2, 116, 0, 1),
(4, 2, 117, 0, 1),
(4, 2, 118, 0, 1),
(4, 2, 119, 0, 1),
(4, 2, 120, 0, 1),
(4, 2, 121, 0, 1),
(4, 26, 122, 0, 1),
(4, 26, 123, 0, 1),
(4, 26, 124, 0, 1),
(4, 26, 125, 0, 1),
(4, 26, 126, 0, 1),
(4, 26, 127, 0, 1),
(4, 26, 128, 0, 1),
(4, 26, 129, 0, 1),
(4, 26, 130, 0, 1),
(4, 26, 131, 0, 1),
(4, 26, 132, 0, 1),
(4, 26, 133, 0, 1),
(4, 26, 134, 0, 1),
(4, 26, 135, 0, 1),
(4, 26, 136, 0, 1),
(4, 26, 137, 0, 1),
(4, 26, 138, 0, 1),
(4, 26, 139, 0, 1),
(4, 26, 140, 0, 1),
(4, 26, 141, 0, 1),
(4, 26, 142, 0, 1),
(4, 26, 143, 0, 1),
(4, 26, 144, 0, 1),
(4, 26, 145, 0, 1),
(4, 13, 146, 0, 1),
(4, 13, 147, 0, 1),
(4, 13, 148, 0, 1),
(4, 13, 149, 0, 1),
(4, 13, 150, 0, 1),
(4, 13, 151, 0, 1),
(4, 13, 152, 0, 1),
(4, 13, 153, 0, 1),
(4, 13, 154, 0, 1),
(4, 13, 155, 0, 1),
(4, 13, 156, 0, 1),
(4, 13, 157, 0, 1),
(4, 13, 158, 0, 1),
(4, 13, 159, 0, 1),
(4, 13, 160, 0, 1),
(4, 13, 161, 0, 1),
(4, 13, 162, 0, 1),
(4, 14, 163, 0, 1),
(4, 14, 164, 0, 1),
(4, 14, 165, 0, 1),
(4, 14, 166, 0, 1),
(4, 14, 167, 0, 1),
(4, 14, 168, 0, 1),
(4, 14, 169, 0, 1),
(4, 14, 170, 0, 1),
(4, 14, 171, 0, 1),
(4, 14, 172, 0, 1),
(4, 14, 173, 0, 1),
(4, 14, 174, 0, 1),
(4, 14, 175, 0, 1),
(4, 14, 176, 0, 1),
(4, 14, 177, 0, 1),
(4, 14, 178, 0, 1),
(4, 14, 179, 0, 1),
(4, 14, 180, 0, 1),
(4, 14, 181, 0, 1),
(4, 14, 182, 0, 1),
(4, 14, 183, 0, 1),
(4, 14, 184, 0, 1),
(4, 14, 185, 0, 1),
(4, 14, 186, 0, 1),
(4, 14, 187, 0, 1),
(4, 14, 188, 0, 1),
(4, 14, 189, 0, 1),
(4, 14, 190, 0, 1),
(4, 14, 191, 0, 1),
(4, 14, 192, 0, 1),
(4, 8, 193, 0, 1),
(4, 8, 194, 0, 1),
(4, 8, 195, 0, 1),
(4, 8, 196, 0, 1),
(4, 8, 197, 0, 1),
(4, 8, 198, 0, 1),
(4, 8, 199, 0, 1),
(4, 8, 200, 0, 1),
(4, 8, 201, 0, 1),
(4, 8, 202, 0, 1),
(4, 8, 203, 0, 1),
(4, 8, 204, 0, 1),
(4, 8, 205, 0, 1),
(4, 8, 206, 0, 1),
(4, 10, 207, 0, 1),
(4, 10, 208, 0, 1),
(4, 10, 209, 0, 1),
(4, 10, 210, 0, 1),
(4, 10, 211, 0, 1),
(4, 10, 212, 0, 1),
(4, 10, 213, 0, 1),
(4, 10, 214, 0, 1),
(4, 10, 215, 0, 1),
(4, 10, 216, 0, 1),
(4, 10, 217, 0, 1),
(4, 10, 218, 0, 1),
(4, 9, 219, 0, 1),
(4, 9, 220, 0, 1),
(4, 9, 221, 0, 1),
(4, 9, 222, 0, 1),
(4, 9, 223, 0, 1),
(4, 9, 224, 0, 1),
(4, 9, 225, 0, 1),
(4, 9, 226, 0, 1),
(4, 9, 227, 0, 1),
(4, 9, 228, 0, 1),
(4, 9, 229, 0, 1),
(4, 9, 230, 0, 1),
(4, 9, 231, 0, 1),
(4, 9, 232, 0, 1),
(4, 9, 233, 0, 1),
(4, 9, 234, 0, 1),
(4, 9, 235, 0, 1),
(4, 9, 236, 0, 1),
(4, 9, 237, 0, 1),
(4, 9, 238, 0, 1),
(4, 9, 239, 0, 1),
(4, 9, 240, 0, 1),
(4, 9, 241, 0, 1),
(4, 16, 242, 0, 1),
(4, 16, 243, 0, 1),
(4, 16, 244, 0, 1),
(4, 16, 245, 0, 1),
(4, 16, 246, 0, 1),
(4, 16, 247, 0, 1),
(4, 16, 248, 0, 1),
(4, 16, 249, 0, 1),
(4, 16, 250, 0, 1),
(4, 16, 251, 0, 1),
(4, 16, 252, 0, 1),
(4, 16, 253, 0, 1),
(4, 16, 254, 0, 1),
(4, 16, 255, 0, 1),
(4, 16, 256, 0, 1),
(4, 16, 257, 0, 1),
(4, 16, 258, 0, 1),
(4, 16, 259, 0, 1),
(4, 16, 260, 0, 1),
(4, 16, 261, 0, 1),
(4, 16, 262, 0, 1),
(4, 16, 263, 0, 1),
(4, 15, 264, 0, 1),
(4, 15, 265, 0, 1),
(4, 15, 266, 0, 1),
(4, 15, 267, 0, 1),
(4, 15, 268, 0, 1),
(4, 15, 269, 0, 1),
(4, 15, 270, 0, 1),
(4, 15, 271, 0, 1),
(4, 15, 272, 0, 1),
(4, 18, 273, 0, 1),
(4, 18, 274, 0, 1),
(4, 18, 275, 0, 1),
(4, 18, 276, 0, 1),
(4, 18, 277, 0, 1),
(4, 18, 278, 0, 1),
(4, 18, 279, 0, 1),
(4, 18, 280, 0, 1),
(4, 18, 281, 0, 1),
(4, 18, 282, 0, 1),
(4, 18, 283, 0, 1),
(4, 18, 284, 0, 1),
(4, 18, 285, 0, 1),
(4, 18, 286, 0, 1),
(4, 18, 287, 0, 1),
(4, 18, 288, 0, 1),
(4, 19, 289, 0, 1),
(4, 19, 290, 0, 1),
(4, 19, 291, 0, 1),
(4, 19, 292, 0, 1),
(4, 19, 293, 0, 1),
(4, 19, 294, 0, 1),
(4, 19, 295, 0, 1),
(4, 20, 296, 0, 1),
(4, 20, 297, 0, 1),
(4, 20, 298, 0, 1),
(4, 20, 299, 0, 1),
(4, 20, 300, 0, 1),
(4, 20, 301, 0, 1),
(4, 20, 302, 0, 1),
(4, 20, 303, 0, 1),
(4, 20, 304, 0, 1),
(4, 20, 305, 0, 1),
(4, 20, 306, 0, 1),
(4, 20, 307, 0, 1),
(4, 20, 308, 0, 1),
(4, 20, 309, 0, 1),
(4, 20, 310, 0, 1),
(4, 20, 311, 0, 1),
(4, 20, 312, 0, 1),
(4, 20, 313, 0, 1),
(4, 20, 314, 0, 1),
(4, 20, 315, 0, 1),
(4, 20, 316, 0, 1),
(4, 20, 317, 0, 1),
(4, 20, 318, 0, 1),
(4, 20, 319, 0, 1),
(4, 20, 320, 0, 1),
(4, 20, 321, 0, 1),
(4, 20, 322, 0, 1),
(4, 20, 323, 0, 1),
(4, 20, 324, 0, 1),
(4, 20, 325, 0, 1),
(4, 20, 326, 0, 1),
(4, 20, 327, 0, 1),
(4, 20, 328, 0, 1),
(4, 20, 329, 0, 1),
(4, 20, 330, 0, 1),
(4, 20, 331, 0, 1),
(4, 21, 332, 0, 1),
(4, 21, 333, 0, 1),
(4, 21, 334, 0, 1),
(4, 21, 335, 0, 1),
(4, 21, 336, 0, 1),
(4, 21, 337, 0, 1),
(4, 21, 338, 0, 1),
(4, 21, 339, 0, 1),
(4, 21, 340, 0, 1),
(4, 21, 341, 0, 1),
(4, 21, 342, 0, 1),
(4, 21, 343, 0, 1),
(4, 21, 344, 0, 1),
(4, 21, 345, 0, 1),
(4, 21, 346, 0, 1),
(4, 21, 347, 0, 1),
(4, 21, 348, 0, 1),
(4, 21, 349, 0, 1),
(4, 21, 350, 0, 1),
(4, 21, 351, 0, 1),
(4, 21, 352, 0, 1),
(4, 21, 353, 0, 1),
(4, 21, 354, 0, 1),
(4, 21, 355, 0, 1),
(4, 21, 356, 0, 1),
(4, 21, 357, 0, 1),
(4, 21, 358, 0, 1),
(4, 21, 359, 0, 1),
(4, 21, 360, 0, 1),
(4, 21, 361, 0, 1),
(4, 21, 362, 0, 1),
(4, 21, 363, 0, 1),
(4, 21, 364, 0, 1),
(4, 21, 365, 0, 1),
(4, 21, 366, 0, 1),
(4, 21, 367, 0, 1),
(4, 21, 368, 0, 1),
(4, 22, 369, 0, 1),
(4, 22, 370, 0, 1),
(4, 22, 371, 0, 1),
(4, 22, 372, 0, 1),
(4, 22, 373, 0, 1),
(4, 22, 374, 0, 1),
(4, 22, 375, 0, 1),
(4, 22, 376, 0, 1),
(4, 22, 377, 0, 1),
(4, 22, 378, 0, 1),
(4, 22, 379, 0, 1),
(4, 22, 380, 0, 1),
(4, 22, 381, 0, 1),
(4, 22, 382, 0, 1),
(4, 22, 383, 0, 1),
(4, 22, 384, 0, 1),
(4, 22, 385, 0, 1),
(4, 22, 386, 0, 1),
(4, 22, 387, 0, 1),
(4, 22, 388, 0, 1),
(4, 22, 389, 0, 1),
(4, 22, 390, 0, 1),
(4, 22, 391, 0, 1),
(4, 22, 392, 0, 1),
(4, 22, 393, 0, 1),
(4, 22, 394, 0, 1),
(4, 22, 395, 0, 1),
(4, 22, 396, 0, 1),
(4, 22, 397, 0, 1),
(4, 22, 398, 0, 1),
(4, 22, 399, 0, 1),
(4, 22, 400, 0, 1),
(4, 22, 401, 0, 1),
(4, 22, 402, 0, 1),
(4, 22, 403, 0, 1),
(4, 22, 404, 0, 1),
(4, 22, 405, 0, 1),
(4, 22, 406, 0, 1),
(4, 22, 407, 0, 1),
(4, 22, 408, 0, 1),
(4, 22, 409, 0, 1),
(4, 22, 410, 0, 1),
(4, 22, 411, 0, 1),
(4, 22, 412, 0, 1),
(4, 22, 413, 0, 1),
(4, 22, 414, 0, 1),
(4, 23, 415, 0, 1),
(4, 23, 416, 0, 1),
(4, 23, 417, 0, 1),
(4, 23, 418, 0, 1),
(4, 23, 419, 0, 1),
(4, 23, 420, 0, 1),
(4, 23, 421, 0, 1),
(4, 23, 422, 0, 1),
(4, 23, 423, 0, 1),
(4, 23, 424, 0, 1),
(4, 23, 425, 0, 1),
(4, 23, 426, 0, 1),
(4, 23, 427, 0, 1),
(4, 23, 428, 0, 1),
(4, 23, 429, 0, 1),
(4, 23, 430, 0, 1),
(4, 23, 431, 0, 1),
(4, 23, 432, 0, 1),
(4, 23, 433, 0, 1),
(4, 23, 434, 0, 1),
(4, 23, 435, 0, 1),
(4, 23, 436, 0, 1),
(4, 23, 437, 0, 1),
(4, 23, 438, 0, 1),
(4, 23, 439, 0, 1),
(4, 23, 440, 0, 1),
(4, 23, 441, 0, 1),
(4, 23, 442, 0, 1),
(4, 23, 443, 0, 1),
(4, 23, 444, 0, 1),
(4, 23, 445, 0, 1),
(4, 23, 446, 0, 1),
(4, 23, 447, 0, 1),
(4, 23, 448, 0, 1),
(4, 23, 449, 0, 1),
(4, 23, 450, 0, 1),
(4, 23, 451, 0, 1),
(4, 23, 452, 0, 1),
(4, 10, 490, 0, 1),
(4, 10, 491, 0, 1),
(4, 10, 492, 0, 1),
(4, 10, 493, 0, 1),
(4, 10, 494, 0, 1),
(4, 10, 495, 0, 1),
(4, 30, 496, 0, 1),
(4, 30, 497, 0, 1),
(4, 30, 498, 0, 1),
(4, 30, 499, 0, 1),
(4, 30, 500, 0, 1),
(4, 30, 501, 0, 1),
(4, 30, 502, 0, 1),
(4, 30, 503, 0, 1),
(4, 30, 504, 0, 1),
(4, 30, 505, 0, 1),
(4, 30, 506, 0, 1),
(4, 30, 507, 0, 1),
(4, 30, 508, 0, 1),
(4, 30, 509, 0, 1),
(4, 30, 510, 0, 1),
(4, 30, 511, 0, 1),
(4, 30, 512, 0, 1),
(4, 30, 513, 0, 1),
(4, 31, 514, 0, 1),
(4, 31, 515, 0, 1),
(4, 31, 516, 0, 1),
(4, 31, 517, 0, 1),
(4, 31, 518, 0, 1),
(4, 31, 519, 0, 1),
(4, 31, 520, 0, 1),
(4, 31, 521, 0, 1),
(4, 31, 522, 0, 1),
(4, 31, 523, 0, 1),
(4, 31, 524, 0, 1),
(4, 31, 525, 0, 1),
(4, 31, 526, 0, 1),
(4, 31, 527, 0, 1),
(4, 31, 528, 0, 1),
(4, 31, 529, 0, 1),
(4, 31, 530, 0, 1),
(4, 31, 531, 0, 1),
(4, 32, 532, 0, 1),
(4, 32, 533, 0, 1),
(4, 32, 534, 0, 1),
(4, 32, 535, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile2globalpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2globalpermissions`;
CREATE TABLE IF NOT EXISTS `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) default NULL,
  PRIMARY KEY  (`profileid`,`globalactionid`),
  KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile2globalpermissions`
--

INSERT INTO `vtiger_profile2globalpermissions` (`profileid`, `globalactionid`, `globalactionpermission`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 1, 1),
(2, 2, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile2standardpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2standardpermissions`;
CREATE TABLE IF NOT EXISTS `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) default NULL,
  PRIMARY KEY  (`profileid`,`tabid`,`operation`),
  KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile2standardpermissions`
--

INSERT INTO `vtiger_profile2standardpermissions` (`profileid`, `tabid`, `operation`, `permissions`) VALUES
(1, 2, 0, 0),
(1, 2, 1, 0),
(1, 2, 2, 0),
(1, 2, 3, 0),
(1, 2, 4, 0),
(1, 4, 0, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 0),
(1, 6, 0, 0),
(1, 6, 1, 0),
(1, 6, 2, 0),
(1, 6, 3, 0),
(1, 6, 4, 0),
(1, 7, 0, 0),
(1, 7, 1, 0),
(1, 7, 2, 0),
(1, 7, 3, 0),
(1, 7, 4, 0),
(1, 8, 0, 0),
(1, 8, 1, 0),
(1, 8, 2, 0),
(1, 8, 3, 0),
(1, 8, 4, 0),
(1, 9, 0, 0),
(1, 9, 1, 0),
(1, 9, 2, 0),
(1, 9, 3, 0),
(1, 9, 4, 0),
(1, 13, 0, 0),
(1, 13, 1, 0),
(1, 13, 2, 0),
(1, 13, 3, 0),
(1, 13, 4, 0),
(1, 14, 0, 0),
(1, 14, 1, 0),
(1, 14, 2, 0),
(1, 14, 3, 0),
(1, 14, 4, 0),
(1, 15, 0, 0),
(1, 15, 1, 0),
(1, 15, 2, 0),
(1, 15, 3, 0),
(1, 15, 4, 0),
(1, 16, 0, 0),
(1, 16, 1, 0),
(1, 16, 2, 0),
(1, 16, 3, 0),
(1, 16, 4, 0),
(1, 18, 0, 0),
(1, 18, 1, 0),
(1, 18, 2, 0),
(1, 18, 3, 0),
(1, 18, 4, 0),
(1, 19, 0, 0),
(1, 19, 1, 0),
(1, 19, 2, 0),
(1, 19, 3, 0),
(1, 19, 4, 0),
(1, 20, 0, 0),
(1, 20, 1, 0),
(1, 20, 2, 0),
(1, 20, 3, 0),
(1, 20, 4, 0),
(1, 21, 0, 0),
(1, 21, 1, 0),
(1, 21, 2, 0),
(1, 21, 3, 0),
(1, 21, 4, 0),
(1, 22, 0, 0),
(1, 22, 1, 0),
(1, 22, 2, 0),
(1, 22, 3, 0),
(1, 22, 4, 0),
(1, 23, 0, 0),
(1, 23, 1, 0),
(1, 23, 2, 0),
(1, 23, 3, 0),
(1, 23, 4, 0),
(1, 26, 0, 0),
(1, 26, 1, 0),
(1, 26, 2, 0),
(1, 26, 3, 0),
(1, 26, 4, 0),
(1, 30, 0, 0),
(1, 30, 1, 0),
(1, 30, 2, 0),
(1, 30, 3, 0),
(1, 30, 4, 0),
(1, 31, 0, 0),
(1, 31, 1, 0),
(1, 31, 2, 0),
(1, 31, 3, 0),
(1, 31, 4, 0),
(1, 32, 0, 0),
(1, 32, 1, 0),
(1, 32, 2, 0),
(1, 32, 3, 0),
(1, 32, 4, 0),
(2, 2, 0, 0),
(2, 2, 1, 0),
(2, 2, 2, 0),
(2, 2, 3, 0),
(2, 2, 4, 0),
(2, 4, 0, 0),
(2, 4, 1, 0),
(2, 4, 2, 0),
(2, 4, 3, 0),
(2, 4, 4, 0),
(2, 6, 0, 0),
(2, 6, 1, 0),
(2, 6, 2, 0),
(2, 6, 3, 0),
(2, 6, 4, 0),
(2, 7, 0, 0),
(2, 7, 1, 0),
(2, 7, 2, 0),
(2, 7, 3, 0),
(2, 7, 4, 0),
(2, 8, 0, 0),
(2, 8, 1, 0),
(2, 8, 2, 0),
(2, 8, 3, 0),
(2, 8, 4, 0),
(2, 9, 0, 0),
(2, 9, 1, 0),
(2, 9, 2, 0),
(2, 9, 3, 0),
(2, 9, 4, 0),
(2, 13, 0, 1),
(2, 13, 1, 1),
(2, 13, 2, 1),
(2, 13, 3, 0),
(2, 13, 4, 0),
(2, 14, 0, 0),
(2, 14, 1, 0),
(2, 14, 2, 0),
(2, 14, 3, 0),
(2, 14, 4, 0),
(2, 15, 0, 0),
(2, 15, 1, 0),
(2, 15, 2, 0),
(2, 15, 3, 0),
(2, 15, 4, 0),
(2, 16, 0, 0),
(2, 16, 1, 0),
(2, 16, 2, 0),
(2, 16, 3, 0),
(2, 16, 4, 0),
(2, 18, 0, 0),
(2, 18, 1, 0),
(2, 18, 2, 0),
(2, 18, 3, 0),
(2, 18, 4, 0),
(2, 19, 0, 0),
(2, 19, 1, 0),
(2, 19, 2, 0),
(2, 19, 3, 0),
(2, 19, 4, 0),
(2, 20, 0, 0),
(2, 20, 1, 0),
(2, 20, 2, 0),
(2, 20, 3, 0),
(2, 20, 4, 0),
(2, 21, 0, 0),
(2, 21, 1, 0),
(2, 21, 2, 0),
(2, 21, 3, 0),
(2, 21, 4, 0),
(2, 22, 0, 0),
(2, 22, 1, 0),
(2, 22, 2, 0),
(2, 22, 3, 0),
(2, 22, 4, 0),
(2, 23, 0, 0),
(2, 23, 1, 0),
(2, 23, 2, 0),
(2, 23, 3, 0),
(2, 23, 4, 0),
(2, 26, 0, 0),
(2, 26, 1, 0),
(2, 26, 2, 0),
(2, 26, 3, 0),
(2, 26, 4, 0),
(2, 30, 0, 0),
(2, 30, 1, 0),
(2, 30, 2, 0),
(2, 30, 3, 0),
(2, 30, 4, 0),
(2, 31, 0, 0),
(2, 31, 1, 0),
(2, 31, 2, 0),
(2, 31, 3, 0),
(2, 31, 4, 0),
(2, 32, 0, 0),
(2, 32, 1, 0),
(2, 32, 2, 0),
(2, 32, 3, 0),
(2, 32, 4, 0),
(3, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 0),
(3, 2, 4, 0),
(3, 4, 0, 0),
(3, 4, 1, 0),
(3, 4, 2, 0),
(3, 4, 3, 0),
(3, 4, 4, 0),
(3, 6, 0, 0),
(3, 6, 1, 0),
(3, 6, 2, 0),
(3, 6, 3, 0),
(3, 6, 4, 0),
(3, 7, 0, 0),
(3, 7, 1, 0),
(3, 7, 2, 0),
(3, 7, 3, 0),
(3, 7, 4, 0),
(3, 8, 0, 0),
(3, 8, 1, 0),
(3, 8, 2, 0),
(3, 8, 3, 0),
(3, 8, 4, 0),
(3, 9, 0, 0),
(3, 9, 1, 0),
(3, 9, 2, 0),
(3, 9, 3, 0),
(3, 9, 4, 0),
(3, 13, 0, 0),
(3, 13, 1, 0),
(3, 13, 2, 0),
(3, 13, 3, 0),
(3, 13, 4, 0),
(3, 14, 0, 0),
(3, 14, 1, 0),
(3, 14, 2, 0),
(3, 14, 3, 0),
(3, 14, 4, 0),
(3, 15, 0, 0),
(3, 15, 1, 0),
(3, 15, 2, 0),
(3, 15, 3, 0),
(3, 15, 4, 0),
(3, 16, 0, 0),
(3, 16, 1, 0),
(3, 16, 2, 0),
(3, 16, 3, 0),
(3, 16, 4, 0),
(3, 18, 0, 0),
(3, 18, 1, 0),
(3, 18, 2, 0),
(3, 18, 3, 0),
(3, 18, 4, 0),
(3, 19, 0, 0),
(3, 19, 1, 0),
(3, 19, 2, 0),
(3, 19, 3, 0),
(3, 19, 4, 0),
(3, 20, 0, 0),
(3, 20, 1, 0),
(3, 20, 2, 0),
(3, 20, 3, 0),
(3, 20, 4, 0),
(3, 21, 0, 0),
(3, 21, 1, 0),
(3, 21, 2, 0),
(3, 21, 3, 0),
(3, 21, 4, 0),
(3, 22, 0, 0),
(3, 22, 1, 0),
(3, 22, 2, 0),
(3, 22, 3, 0),
(3, 22, 4, 0),
(3, 23, 0, 0),
(3, 23, 1, 0),
(3, 23, 2, 0),
(3, 23, 3, 0),
(3, 23, 4, 0),
(3, 26, 0, 0),
(3, 26, 1, 0),
(3, 26, 2, 0),
(3, 26, 3, 0),
(3, 26, 4, 0),
(3, 30, 0, 0),
(3, 30, 1, 0),
(3, 30, 2, 0),
(3, 30, 3, 0),
(3, 30, 4, 0),
(3, 31, 0, 0),
(3, 31, 1, 0),
(3, 31, 2, 0),
(3, 31, 3, 0),
(3, 31, 4, 0),
(3, 32, 0, 0),
(3, 32, 1, 0),
(3, 32, 2, 0),
(3, 32, 3, 0),
(3, 32, 4, 0),
(4, 2, 0, 1),
(4, 2, 1, 1),
(4, 2, 2, 1),
(4, 2, 3, 0),
(4, 2, 4, 0),
(4, 4, 0, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 0),
(4, 4, 4, 0),
(4, 6, 0, 1),
(4, 6, 1, 1),
(4, 6, 2, 1),
(4, 6, 3, 0),
(4, 6, 4, 0),
(4, 7, 0, 1),
(4, 7, 1, 1),
(4, 7, 2, 1),
(4, 7, 3, 0),
(4, 7, 4, 0),
(4, 8, 0, 1),
(4, 8, 1, 1),
(4, 8, 2, 1),
(4, 8, 3, 0),
(4, 8, 4, 0),
(4, 9, 0, 1),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 0),
(4, 9, 4, 0),
(4, 13, 0, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 0),
(4, 13, 4, 0),
(4, 14, 0, 1),
(4, 14, 1, 1),
(4, 14, 2, 1),
(4, 14, 3, 0),
(4, 14, 4, 0),
(4, 15, 0, 1),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 0),
(4, 15, 4, 0),
(4, 16, 0, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 0),
(4, 16, 4, 0),
(4, 18, 0, 1),
(4, 18, 1, 1),
(4, 18, 2, 1),
(4, 18, 3, 0),
(4, 18, 4, 0),
(4, 19, 0, 1),
(4, 19, 1, 1),
(4, 19, 2, 1),
(4, 19, 3, 0),
(4, 19, 4, 0),
(4, 20, 0, 1),
(4, 20, 1, 1),
(4, 20, 2, 1),
(4, 20, 3, 0),
(4, 20, 4, 0),
(4, 21, 0, 1),
(4, 21, 1, 1),
(4, 21, 2, 1),
(4, 21, 3, 0),
(4, 21, 4, 0),
(4, 22, 0, 1),
(4, 22, 1, 1),
(4, 22, 2, 1),
(4, 22, 3, 0),
(4, 22, 4, 0),
(4, 23, 0, 1),
(4, 23, 1, 1),
(4, 23, 2, 1),
(4, 23, 3, 0),
(4, 23, 4, 0),
(4, 26, 0, 1),
(4, 26, 1, 1),
(4, 26, 2, 1),
(4, 26, 3, 0),
(4, 26, 4, 0),
(4, 30, 0, 0),
(4, 30, 1, 0),
(4, 30, 2, 0),
(4, 30, 3, 0),
(4, 30, 4, 0),
(4, 31, 0, 0),
(4, 31, 1, 0),
(4, 31, 2, 0),
(4, 31, 3, 0),
(4, 31, 4, 0),
(4, 32, 0, 0),
(4, 32, 1, 0),
(4, 32, 2, 0),
(4, 32, 3, 0),
(4, 32, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile2tab`
--

DROP TABLE IF EXISTS `vtiger_profile2tab`;
CREATE TABLE IF NOT EXISTS `vtiger_profile2tab` (
  `profileid` int(11) default NULL,
  `tabid` int(10) default NULL,
  `permissions` int(10) NOT NULL default '0',
  KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile2tab`
--

INSERT INTO `vtiger_profile2tab` (`profileid`, `tabid`, `permissions`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 13, 0),
(3, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 26, 0),
(3, 27, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),
(4, 18, 0),
(4, 19, 0),
(4, 20, 0),
(4, 21, 0),
(4, 22, 0),
(4, 23, 0),
(4, 24, 0),
(4, 25, 0),
(4, 26, 0),
(4, 27, 0),
(1, 30, 0),
(2, 30, 0),
(3, 30, 0),
(4, 30, 0),
(1, 31, 0),
(2, 31, 0),
(3, 31, 0),
(4, 31, 0),
(1, 32, 0),
(2, 32, 0),
(3, 32, 0),
(4, 32, 0),
(1, 33, 0),
(2, 33, 0),
(3, 33, 0),
(4, 33, 0),
(1, 35, 0),
(2, 35, 0),
(3, 35, 0),
(4, 35, 0),
(1, 36, 0),
(2, 36, 0),
(3, 36, 0),
(4, 36, 0),
(1, 37, 0),
(2, 37, 0),
(3, 37, 0),
(4, 37, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile2utility`
--

DROP TABLE IF EXISTS `vtiger_profile2utility`;
CREATE TABLE IF NOT EXISTS `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) default NULL,
  PRIMARY KEY  (`profileid`,`tabid`,`activityid`),
  KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile2utility`
--

INSERT INTO `vtiger_profile2utility` (`profileid`, `tabid`, `activityid`, `permission`) VALUES
(1, 2, 5, 0),
(1, 2, 6, 0),
(1, 2, 10, 0),
(1, 4, 5, 0),
(1, 4, 6, 0),
(1, 4, 8, 0),
(1, 4, 10, 0),
(1, 6, 5, 0),
(1, 6, 6, 0),
(1, 6, 8, 0),
(1, 6, 10, 0),
(1, 7, 5, 0),
(1, 7, 6, 0),
(1, 7, 8, 0),
(1, 7, 9, 0),
(1, 7, 10, 0),
(1, 8, 6, 0),
(1, 13, 5, 0),
(1, 13, 6, 0),
(1, 13, 8, 0),
(1, 13, 10, 0),
(1, 14, 5, 0),
(1, 14, 6, 0),
(1, 14, 10, 0),
(1, 18, 5, 0),
(1, 18, 6, 0),
(1, 18, 10, 0),
(1, 30, 5, 0),
(1, 30, 6, 0),
(1, 30, 10, 0),
(1, 31, 5, 0),
(1, 31, 6, 0),
(1, 31, 10, 0),
(1, 32, 5, 0),
(1, 32, 6, 0),
(1, 32, 8, 0),
(2, 2, 5, 1),
(2, 2, 6, 1),
(2, 2, 10, 0),
(2, 4, 5, 1),
(2, 4, 6, 1),
(2, 4, 8, 0),
(2, 4, 10, 0),
(2, 6, 5, 1),
(2, 6, 6, 1),
(2, 6, 8, 0),
(2, 6, 10, 0),
(2, 7, 5, 1),
(2, 7, 6, 1),
(2, 7, 8, 0),
(2, 7, 9, 0),
(2, 7, 10, 0),
(2, 8, 6, 1),
(2, 13, 5, 1),
(2, 13, 6, 1),
(2, 13, 8, 0),
(2, 13, 10, 0),
(2, 14, 5, 1),
(2, 14, 6, 1),
(2, 14, 10, 0),
(2, 18, 5, 1),
(2, 18, 6, 1),
(2, 18, 10, 0),
(2, 30, 5, 0),
(2, 30, 6, 0),
(2, 30, 10, 0),
(2, 31, 5, 0),
(2, 31, 6, 0),
(2, 31, 10, 0),
(2, 32, 5, 0),
(2, 32, 6, 0),
(2, 32, 8, 0),
(3, 2, 5, 1),
(3, 2, 6, 1),
(3, 2, 10, 0),
(3, 4, 5, 1),
(3, 4, 6, 1),
(3, 4, 8, 0),
(3, 4, 10, 0),
(3, 6, 5, 1),
(3, 6, 6, 1),
(3, 6, 8, 0),
(3, 6, 10, 0),
(3, 7, 5, 1),
(3, 7, 6, 1),
(3, 7, 8, 0),
(3, 7, 9, 0),
(3, 7, 10, 0),
(3, 8, 6, 1),
(3, 13, 5, 1),
(3, 13, 6, 1),
(3, 13, 8, 0),
(3, 13, 10, 0),
(3, 14, 5, 1),
(3, 14, 6, 1),
(3, 14, 10, 0),
(3, 18, 5, 1),
(3, 18, 6, 1),
(3, 18, 10, 0),
(3, 30, 5, 0),
(3, 30, 6, 0),
(3, 30, 10, 0),
(3, 31, 5, 0),
(3, 31, 6, 0),
(3, 31, 10, 0),
(3, 32, 5, 0),
(3, 32, 6, 0),
(3, 32, 8, 0),
(4, 2, 5, 1),
(4, 2, 6, 1),
(4, 2, 10, 0),
(4, 4, 5, 1),
(4, 4, 6, 1),
(4, 4, 8, 1),
(4, 4, 10, 0),
(4, 6, 5, 1),
(4, 6, 6, 1),
(4, 6, 8, 1),
(4, 6, 10, 0),
(4, 7, 5, 1),
(4, 7, 6, 1),
(4, 7, 8, 1),
(4, 7, 9, 0),
(4, 7, 10, 0),
(4, 8, 6, 1),
(4, 13, 5, 1),
(4, 13, 6, 1),
(4, 13, 8, 1),
(4, 13, 10, 0),
(4, 14, 5, 1),
(4, 14, 6, 1),
(4, 14, 10, 0),
(4, 18, 5, 1),
(4, 18, 6, 1),
(4, 18, 10, 0),
(4, 30, 5, 0),
(4, 30, 6, 0),
(4, 30, 10, 0),
(4, 31, 5, 0),
(4, 31, 6, 0),
(4, 31, 10, 0),
(4, 32, 5, 0),
(4, 32, 6, 0),
(4, 32, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_profile_seq`
--

DROP TABLE IF EXISTS `vtiger_profile_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_profile_seq`
--

INSERT INTO `vtiger_profile_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_purchaseorder`
--

DROP TABLE IF EXISTS `vtiger_purchaseorder`;
CREATE TABLE IF NOT EXISTS `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL default '0',
  `subject` varchar(100) default NULL,
  `quoteid` int(19) default NULL,
  `vendorid` int(19) default NULL,
  `requisition_no` varchar(100) default NULL,
  `purchaseorder_no` varchar(100) default NULL,
  `tracking_no` varchar(100) default NULL,
  `contactid` int(19) default NULL,
  `duedate` date default NULL,
  `carrier` varchar(200) default NULL,
  `type` varchar(100) default NULL,
  `adjustment` decimal(25,3) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `total` decimal(25,3) default NULL,
  `subtotal` decimal(25,3) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,3) default NULL,
  `s_h_amount` decimal(25,3) default NULL,
  `terms_conditions` text,
  `postatus` varchar(200) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  PRIMARY KEY  (`purchaseorderid`),
  KEY `purchaseorder_vendorid_idx` (`vendorid`),
  KEY `purchaseorder_quoteid_idx` (`quoteid`),
  KEY `purchaseorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_purchaseorder`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_purchaseordercf`
--

DROP TABLE IF EXISTS `vtiger_purchaseordercf`;
CREATE TABLE IF NOT EXISTS `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_purchaseordercf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quickview`
--

DROP TABLE IF EXISTS `vtiger_quickview`;
CREATE TABLE IF NOT EXISTS `vtiger_quickview` (
  `fieldid` int(19) NOT NULL,
  `related_fieldid` int(19) NOT NULL,
  `sequence` int(19) NOT NULL,
  `currentview` int(19) NOT NULL,
  KEY `fk_1_vtiger_quickview` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quickview`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotes`
--

DROP TABLE IF EXISTS `vtiger_quotes`;
CREATE TABLE IF NOT EXISTS `vtiger_quotes` (
  `quoteid` int(19) NOT NULL default '0',
  `subject` varchar(100) default NULL,
  `potentialid` int(19) default NULL,
  `quotestage` varchar(200) default NULL,
  `validtill` date default NULL,
  `contactid` int(19) default NULL,
  `quote_no` varchar(100) default NULL,
  `subtotal` decimal(25,3) default NULL,
  `carrier` varchar(200) default NULL,
  `shipping` varchar(100) default NULL,
  `inventorymanager` int(19) default NULL,
  `type` varchar(100) default NULL,
  `adjustment` decimal(25,3) default NULL,
  `total` decimal(25,3) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,3) default NULL,
  `s_h_amount` decimal(25,3) default NULL,
  `accountid` int(19) default NULL,
  `terms_conditions` text,
  `currency_id` int(19) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  PRIMARY KEY  (`quoteid`),
  KEY `quote_quotestage_idx` (`quotestage`),
  KEY `quotes_potentialid_idx` (`potentialid`),
  KEY `quotes_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quotes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotesbillads`
--

DROP TABLE IF EXISTS `vtiger_quotesbillads`;
CREATE TABLE IF NOT EXISTS `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`quotebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quotesbillads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotescf`
--

DROP TABLE IF EXISTS `vtiger_quotescf`;
CREATE TABLE IF NOT EXISTS `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quotescf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotesshipads`
--

DROP TABLE IF EXISTS `vtiger_quotesshipads`;
CREATE TABLE IF NOT EXISTS `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`quoteshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quotesshipads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotestage`
--

DROP TABLE IF EXISTS `vtiger_quotestage`;
CREATE TABLE IF NOT EXISTS `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL auto_increment,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`quotestageid`),
  UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_quotestage`
--

INSERT INTO `vtiger_quotestage` (`quotestageid`, `quotestage`, `presence`, `picklist_valueid`) VALUES
(1, 'Created', 0, 139),
(2, 'Delivered', 0, 140),
(3, 'Reviewed', 0, 141),
(4, 'Accepted', 0, 142),
(5, 'Rejected', 0, 143);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotestagehistory`
--

DROP TABLE IF EXISTS `vtiger_quotestagehistory`;
CREATE TABLE IF NOT EXISTS `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `quotestage` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `quotestagehistory_quoteid_idx` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_quotestagehistory`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_quotestage_seq`
--

DROP TABLE IF EXISTS `vtiger_quotestage_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_quotestage_seq`
--

INSERT INTO `vtiger_quotestage_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_rating`
--

DROP TABLE IF EXISTS `vtiger_rating`;
CREATE TABLE IF NOT EXISTS `vtiger_rating` (
  `rating_id` int(19) NOT NULL auto_increment,
  `rating` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_rating`
--

INSERT INTO `vtiger_rating` (`rating_id`, `rating`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 144),
(2, 'Acquired', 1, 145),
(3, 'Active', 1, 146),
(4, 'Market Failed', 1, 147),
(5, 'Project Cancelled', 1, 148),
(6, 'Shutdown', 1, 149);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_rating_seq`
--

DROP TABLE IF EXISTS `vtiger_rating_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_rating_seq`
--

INSERT INTO `vtiger_rating_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_recurringevents`
--

DROP TABLE IF EXISTS `vtiger_recurringevents`;
CREATE TABLE IF NOT EXISTS `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL auto_increment,
  `activityid` int(19) NOT NULL,
  `recurringdate` date default NULL,
  `recurringtype` varchar(30) default NULL,
  `recurringfreq` int(19) default NULL,
  `recurringinfo` varchar(50) default NULL,
  PRIMARY KEY  (`recurringid`),
  KEY `fk_1_vtiger_recurringevents` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_recurringevents`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_recurringtype`
--

DROP TABLE IF EXISTS `vtiger_recurringtype`;
CREATE TABLE IF NOT EXISTS `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL auto_increment,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`recurringeventid`),
  UNIQUE KEY `recurringtype_status_idx` (`recurringtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `vtiger_recurringtype`
--

INSERT INTO `vtiger_recurringtype` (`recurringeventid`, `recurringtype`, `sortorderid`, `presence`) VALUES
(1, '--None--', 0, 1),
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Yearly', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_recurringtype_seq`
--

DROP TABLE IF EXISTS `vtiger_recurringtype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_recurringtype_seq`
--

INSERT INTO `vtiger_recurringtype_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_recurring_frequency`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency`;
CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) default NULL,
  `recurring_frequency` varchar(200) default NULL,
  `sortorderid` int(11) default NULL,
  `presence` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_recurring_frequency`
--

INSERT INTO `vtiger_recurring_frequency` (`recurring_frequency_id`, `recurring_frequency`, `sortorderid`, `presence`) VALUES
(1, '--None--', 0, 1),
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Quarterly', 4, 1),
(6, 'Yearly', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_recurring_frequency_seq`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_recurring_frequency_seq`
--

INSERT INTO `vtiger_recurring_frequency_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_relatedlists`
--

DROP TABLE IF EXISTS `vtiger_relatedlists`;
CREATE TABLE IF NOT EXISTS `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) default NULL,
  `related_tabid` int(10) default NULL,
  `name` varchar(100) default NULL,
  `sequence` int(10) default NULL,
  `label` varchar(100) default NULL,
  `presence` int(10) NOT NULL default '0',
  `actions` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`relation_id`),
  KEY `relatedlists_relation_id_idx` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_relatedlists`
--

INSERT INTO `vtiger_relatedlists` (`relation_id`, `tabid`, `related_tabid`, `name`, `sequence`, `label`, `presence`, `actions`) VALUES
(1, 6, 4, 'get_contacts', 1, 'Contacts', 0, 'add'),
(2, 6, 2, 'get_opportunities', 2, 'Potentials', 0, 'add'),
(3, 6, 20, 'get_quotes', 3, 'Quotes', 0, 'add'),
(4, 6, 22, 'get_salesorder', 4, 'Sales Order', 0, 'add'),
(5, 6, 23, 'get_invoices', 5, 'Invoice', 0, 'add'),
(6, 6, 9, 'get_activities', 6, 'Activities', 0, 'add'),
(7, 6, 10, 'get_emails', 7, 'Emails', 0, 'add'),
(8, 6, 9, 'get_history', 8, 'Activity History', 0, 'add'),
(9, 6, 8, 'get_attachments', 9, 'Documents', 0, 'add,select'),
(10, 6, 13, 'get_tickets', 10, 'HelpDesk', 0, 'add'),
(11, 6, 14, 'get_products', 11, 'Products', 0, 'select'),
(12, 7, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(13, 7, 10, 'get_emails', 2, 'Emails', 0, 'add'),
(14, 7, 9, 'get_history', 3, 'Activity History', 0, 'add'),
(15, 7, 8, 'get_attachments', 4, 'Documents', 0, 'add,select'),
(16, 7, 14, 'get_products', 5, 'Products', 0, 'select'),
(17, 7, 26, 'get_campaigns', 6, 'Campaigns', 0, 'select'),
(18, 4, 2, 'get_opportunities', 1, 'Potentials', 0, 'add'),
(19, 4, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(20, 4, 10, 'get_emails', 3, 'Emails', 0, 'add'),
(21, 4, 13, 'get_tickets', 4, 'HelpDesk', 0, 'add'),
(22, 4, 20, 'get_quotes', 5, 'Quotes', 0, 'add'),
(23, 4, 21, 'get_purchase_orders', 6, 'Purchase Order', 0, 'add'),
(24, 4, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(25, 4, 14, 'get_products', 8, 'Products', 0, 'select'),
(26, 4, 9, 'get_history', 9, 'Activity History', 0, 'add'),
(27, 4, 8, 'get_attachments', 10, 'Documents', 0, 'add,select'),
(28, 4, 26, 'get_campaigns', 11, 'Campaigns', 0, 'select'),
(29, 4, 23, 'get_invoices', 12, 'Invoice', 0, 'add'),
(30, 2, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(31, 2, 4, 'get_contacts', 2, 'Contacts', 0, 'select'),
(32, 2, 14, 'get_products', 3, 'Products', 0, 'select'),
(33, 2, 0, 'get_stage_history', 4, 'Sales Stage History', 0, ''),
(34, 2, 8, 'get_attachments', 5, 'Documents', 0, 'add,select'),
(35, 2, 20, 'get_Quotes', 6, 'Quotes', 0, 'add'),
(36, 2, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(37, 2, 9, 'get_history', 8, 'Activity History', 0, ''),
(38, 14, 13, 'get_tickets', 1, 'HelpDesk', 0, 'add'),
(39, 14, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(40, 14, 20, 'get_quotes', 4, 'Quotes', 0, 'add'),
(41, 14, 21, 'get_purchase_orders', 5, 'Purchase Order', 0, 'add'),
(42, 14, 22, 'get_salesorder', 6, 'Sales Order', 0, 'add'),
(43, 14, 23, 'get_invoices', 7, 'Invoice', 0, 'add'),
(44, 14, 19, 'get_product_pricebooks', 8, 'PriceBooks', 0, 'add'),
(45, 14, 7, 'get_leads', 9, 'Leads', 0, 'select'),
(46, 14, 6, 'get_accounts', 10, 'Accounts', 0, 'select'),
(47, 14, 4, 'get_contacts', 11, 'Contacts', 0, 'select'),
(48, 14, 2, 'get_opportunities', 12, 'Potentials', 0, 'select'),
(49, 14, 14, 'get_products', 13, 'Product Bundles', 0, 'add,select'),
(50, 14, 14, 'get_parent_products', 14, 'Parent Product', 0, ''),
(51, 10, 4, 'get_contacts', 1, 'Contacts', 0, 'select,bulkmail'),
(52, 10, 0, 'get_users', 2, 'Users', 0, ''),
(53, 10, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(54, 13, 9, 'get_activities', 1, 'Activities', 0, 'add,select'),
(55, 13, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(56, 13, 0, 'get_ticket_history', 3, 'Ticket History', 0, ''),
(57, 13, 9, 'get_history', 4, 'Activity History', 0, ''),
(58, 19, 14, 'get_pricebook_products', 2, 'Products', 0, 'select'),
(59, 18, 14, 'get_products', 1, 'Products', 0, 'add,select'),
(60, 18, 21, 'get_purchase_orders', 2, 'Purchase Order', 0, 'add'),
(61, 18, 4, 'get_contacts', 3, 'Contacts', 0, 'select'),
(62, 18, 10, 'get_emails', 4, 'Emails', 0, 'add'),
(63, 20, 22, 'get_salesorder', 1, 'Sales Order', 0, ''),
(64, 20, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(65, 20, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(66, 20, 9, 'get_history', 4, 'Activity History', 0, ''),
(67, 20, 0, 'get_quotestagehistory', 5, 'Quote Stage History', 0, ''),
(68, 21, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(69, 21, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(70, 21, 9, 'get_history', 3, 'Activity History', 0, ''),
(71, 21, 0, 'get_postatushistory', 4, 'PurchaseOrder Status History', 0, ''),
(72, 22, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(73, 22, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(74, 22, 23, 'get_invoices', 3, 'Invoice', 0, ''),
(75, 22, 9, 'get_history', 4, 'Activity History', 0, ''),
(76, 22, 0, 'get_sostatushistory', 5, 'SalesOrder Status History', 0, ''),
(77, 23, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(78, 23, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(79, 23, 9, 'get_history', 3, 'Activity History', 0, ''),
(80, 23, 0, 'get_invoicestatushistory', 4, 'Invoice Status History', 0, ''),
(81, 9, 0, 'get_users', 1, 'Users', 0, ''),
(82, 9, 4, 'get_contacts', 2, 'Contacts', 0, ''),
(83, 26, 4, 'get_contacts', 1, 'Contacts', 0, 'add,select'),
(84, 26, 7, 'get_leads', 2, 'Leads', 0, 'add,select'),
(85, 26, 2, 'get_opportunities', 3, 'Potentials', 0, 'add'),
(86, 26, 9, 'get_activities', 4, 'Activities', 0, 'add'),
(87, 15, 8, 'get_attachments', 1, 'Documents', 0, 'add,select'),
(88, 30, 13, 'get_related_list', 1, 'Service Requests', 0, 'ADD,SELECT'),
(89, 30, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT'),
(90, 6, 30, 'get_dependents_list', 12, 'Service Contracts', 0, 'ADD'),
(91, 4, 30, 'get_dependents_list', 13, 'Service Contracts', 0, 'ADD'),
(92, 31, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT'),
(93, 31, 20, 'get_quotes', 2, 'Quotes', 0, 'ADD'),
(94, 31, 21, 'get_purchase_orders', 3, 'Purchase Order', 0, 'ADD'),
(95, 31, 22, 'get_salesorder', 4, 'Sales Order', 0, 'ADD'),
(96, 31, 23, 'get_invoices', 5, 'Invoice', 0, 'ADD'),
(97, 31, 19, 'get_service_pricebooks', 6, 'PriceBooks', 0, 'ADD'),
(98, 31, 7, 'get_related_list', 7, 'Leads', 0, 'SELECT'),
(99, 31, 6, 'get_related_list', 8, 'Accounts', 0, 'SELECT'),
(100, 31, 4, 'get_related_list', 9, 'Contacts', 0, 'SELECT'),
(101, 31, 2, 'get_related_list', 10, 'Potentials', 0, 'SELECT'),
(102, 31, 8, 'get_attachments', 11, 'Documents', 0, 'ADD,SELECT'),
(103, 13, 31, 'get_related_list', 5, 'Services', 0, 'SELECT'),
(104, 7, 31, 'get_related_list', 7, 'Services', 0, 'SELECT'),
(105, 6, 31, 'get_related_list', 13, 'Services', 0, 'SELECT'),
(106, 4, 31, 'get_related_list', 14, 'Services', 0, 'SELECT'),
(107, 2, 31, 'get_related_list', 9, 'Services', 0, 'SELECT'),
(108, 19, 31, 'get_pricebook_services', 3, 'Services', 0, 'SELECT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_relatedlists_rb`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_rb`;
CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_rb` (
  `entityid` int(19) default NULL,
  `action` varchar(50) default NULL,
  `rel_table` varchar(200) default NULL,
  `rel_column` varchar(200) default NULL,
  `ref_column` varchar(200) default NULL,
  `related_crm_ids` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_relatedlists_rb`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_relatedlists_seq`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_relatedlists_seq`
--

INSERT INTO `vtiger_relatedlists_seq` (`id`) VALUES
(108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_relcriteria`
--

DROP TABLE IF EXISTS `vtiger_relcriteria`;
CREATE TABLE IF NOT EXISTS `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) default '',
  `comparator` varchar(10) default '',
  `value` varchar(200) default '',
  PRIMARY KEY  (`queryid`,`columnindex`),
  KEY `relcriteria_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_relcriteria`
--

INSERT INTO `vtiger_relcriteria` (`queryid`, `columnindex`, `columnname`, `comparator`, `value`) VALUES
(1, 0, 'vtiger_accountContacts:accountname:Contacts_Account_Name:account_id:V', 'n', ''),
(2, 0, 'vtiger_accountContacts:accountname:Contacts_Account_Name:account_id:V', 'e', ''),
(3, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V', 'n', ''),
(7, 0, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'e', 'Closed Won'),
(12, 0, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V', 'n', 'Closed'),
(15, 0, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Accepted'),
(15, 1, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Rejected');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reminder_interval`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval`;
CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL auto_increment,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL,
  PRIMARY KEY  (`reminder_intervalid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `vtiger_reminder_interval`
--

INSERT INTO `vtiger_reminder_interval` (`reminder_intervalid`, `reminder_interval`, `sortorderid`, `presence`) VALUES
(1, 'None', 0, 1),
(2, '1 Minute', 1, 1),
(3, '5 Minutes', 2, 1),
(4, '15 Minutes', 3, 1),
(5, '30 Minutes', 4, 1),
(6, '45 Minutes', 5, 1),
(7, '1 Hour', 6, 1),
(8, '1 Day', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reminder_interval_seq`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reminder_interval_seq`
--

INSERT INTO `vtiger_reminder_interval_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_report`
--

DROP TABLE IF EXISTS `vtiger_report`;
CREATE TABLE IF NOT EXISTS `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) default '',
  `description` varchar(250) default '',
  `reporttype` varchar(50) default '',
  `queryid` int(19) NOT NULL default '0',
  `state` varchar(50) default 'SAVED',
  `customizable` int(1) default '1',
  `category` int(11) default '1',
  `owner` int(11) default '1',
  `sharingtype` varchar(200) default 'Private',
  PRIMARY KEY  (`reportid`),
  KEY `report_queryid_idx` (`queryid`),
  KEY `report_folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_report`
--

INSERT INTO `vtiger_report` (`reportid`, `folderid`, `reportname`, `description`, `reporttype`, `queryid`, `state`, `customizable`, `category`, `owner`, `sharingtype`) VALUES
(1, 1, 'Contacts by Accounts', 'Contacts related to Accounts', 'tabular', 1, 'SAVED', 1, 1, 1, 'Public'),
(2, 1, 'Contacts without Accounts', 'Contacts not related to Accounts', 'tabular', 2, 'SAVED', 1, 1, 1, 'Public'),
(3, 1, 'Contacts by Potentials', 'Contacts related to Potentials', 'tabular', 3, 'SAVED', 1, 1, 1, 'Public'),
(4, 2, 'Lead by Source', 'Lead by Source', 'summary', 4, 'SAVED', 1, 1, 1, 'Public'),
(5, 2, 'Lead Status Report', 'Lead Status Report', 'summary', 5, 'SAVED', 1, 1, 1, 'Public'),
(6, 3, 'Potential Pipeline', 'Potential Pipeline', 'summary', 6, 'SAVED', 1, 1, 1, 'Public'),
(7, 3, 'Closed Potentials', 'Potential that have Won', 'tabular', 7, 'SAVED', 1, 1, 1, 'Public'),
(8, 4, 'Last Month Activities', 'Last Month Activities', 'tabular', 8, 'SAVED', 1, 1, 1, 'Public'),
(9, 4, 'This Month Activities', 'This Month Activities', 'tabular', 9, 'SAVED', 1, 1, 1, 'Public'),
(10, 5, 'Tickets by Products', 'Tickets related to Products', 'tabular', 10, 'SAVED', 1, 1, 1, 'Public'),
(11, 5, 'Tickets by Priority', 'Tickets by Priority', 'summary', 11, 'SAVED', 1, 1, 1, 'Public'),
(12, 5, 'Open Tickets', 'Tickets that are Open', 'tabular', 12, 'SAVED', 1, 1, 1, 'Public'),
(13, 6, 'Product Details', 'Product Detailed Report', 'tabular', 13, 'SAVED', 1, 1, 1, 'Public'),
(14, 6, 'Products by Contacts', 'Products related to Contacts', 'tabular', 14, 'SAVED', 1, 1, 1, 'Public'),
(15, 7, 'Open Quotes', 'Quotes that are Open', 'tabular', 15, 'SAVED', 1, 1, 1, 'Public'),
(16, 7, 'Quotes Detailed Report', 'Quotes Detailed Report', 'tabular', 16, 'SAVED', 1, 1, 1, 'Public'),
(17, 8, 'PurchaseOrder by Contacts', 'PurchaseOrder related to Contacts', 'tabular', 17, 'SAVED', 1, 1, 1, 'Public'),
(18, 8, 'PurchaseOrder Detailed Report', 'PurchaseOrder Detailed Report', 'tabular', 18, 'SAVED', 1, 1, 1, 'Public'),
(19, 9, 'Invoice Detailed Report', 'Invoice Detailed Report', 'tabular', 19, 'SAVED', 1, 1, 1, 'Public'),
(20, 10, 'SalesOrder Detailed Report', 'SalesOrder Detailed Report', 'tabular', 20, 'SAVED', 1, 1, 1, 'Public'),
(21, 11, 'Campaign Expectations and Actuals', 'Campaign Expectations and Actuals', 'tabular', 21, 'SAVED', 1, 1, 1, 'Public');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportdatefilter`
--

DROP TABLE IF EXISTS `vtiger_reportdatefilter`;
CREATE TABLE IF NOT EXISTS `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) default '',
  `datefilter` varchar(250) default '',
  `startdate` date default NULL,
  `enddate` date default NULL,
  PRIMARY KEY  (`datefilterid`),
  KEY `reportdatefilter_datefilterid_idx` (`datefilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportdatefilter`
--

INSERT INTO `vtiger_reportdatefilter` (`datefilterid`, `datecolumnname`, `datefilter`, `startdate`, `enddate`) VALUES
(8, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'lastmonth', '2005-05-01', '2005-05-31'),
(9, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportfilters`
--

DROP TABLE IF EXISTS `vtiger_reportfilters`;
CREATE TABLE IF NOT EXISTS `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportfilters`
--

INSERT INTO `vtiger_reportfilters` (`filterid`, `name`) VALUES
(1, 'Private'),
(2, 'Public'),
(3, 'Shared');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportfolder`
--

DROP TABLE IF EXISTS `vtiger_reportfolder`;
CREATE TABLE IF NOT EXISTS `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL auto_increment,
  `foldername` varchar(100) NOT NULL default '',
  `description` varchar(250) default '',
  `state` varchar(50) default 'SAVED',
  PRIMARY KEY  (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcar la base de datos para la tabla `vtiger_reportfolder`
--

INSERT INTO `vtiger_reportfolder` (`folderid`, `foldername`, `description`, `state`) VALUES
(1, 'Account and Contact Reports', 'Account and Contact Reports', 'SAVED'),
(2, 'Lead Reports', 'Lead Reports', 'SAVED'),
(3, 'Potential Reports', 'Potential Reports', 'SAVED'),
(4, 'Activity Reports', 'Activity Reports', 'SAVED'),
(5, 'HelpDesk Reports', 'HelpDesk Reports', 'SAVED'),
(6, 'Product Reports', 'Product Reports', 'SAVED'),
(7, 'Quote Reports', 'Quote Reports', 'SAVED'),
(8, 'PurchaseOrder Reports', 'PurchaseOrder Reports', 'SAVED'),
(9, 'Invoice Reports', 'Invoice Reports', 'SAVED'),
(10, 'SalesOrder Reports', 'SalesOrder Reports', 'SAVED'),
(11, 'Campaign Reports', 'Campaign Reports', 'SAVED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportmodules`
--

DROP TABLE IF EXISTS `vtiger_reportmodules`;
CREATE TABLE IF NOT EXISTS `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(50) NOT NULL default '',
  `secondarymodules` varchar(250) default '',
  PRIMARY KEY  (`reportmodulesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportmodules`
--

INSERT INTO `vtiger_reportmodules` (`reportmodulesid`, `primarymodule`, `secondarymodules`) VALUES
(1, 'Contacts', 'Accounts'),
(2, 'Contacts', 'Accounts'),
(3, 'Contacts', 'Potentials'),
(4, 'Leads', ''),
(5, 'Leads', ''),
(6, 'Potentials', ''),
(7, 'Potentials', ''),
(8, 'Calendar', ''),
(9, 'Calendar', ''),
(10, 'HelpDesk', 'Products'),
(11, 'HelpDesk', ''),
(12, 'HelpDesk', ''),
(13, 'Products', ''),
(14, 'Products', 'Contacts'),
(15, 'Quotes', ''),
(16, 'Quotes', ''),
(17, 'PurchaseOrder', 'Contacts'),
(18, 'PurchaseOrder', ''),
(19, 'Invoice', ''),
(20, 'SalesOrder', ''),
(21, 'Campaigns', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportsharing`
--

DROP TABLE IF EXISTS `vtiger_reportsharing`;
CREATE TABLE IF NOT EXISTS `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportsharing`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportsortcol`
--

DROP TABLE IF EXISTS `vtiger_reportsortcol`;
CREATE TABLE IF NOT EXISTS `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) default '',
  `sortorder` varchar(250) default 'Asc',
  PRIMARY KEY  (`sortcolid`,`reportid`),
  KEY `fk_1_vtiger_reportsortcol` (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportsortcol`
--

INSERT INTO `vtiger_reportsortcol` (`sortcolid`, `reportid`, `columnname`, `sortorder`) VALUES
(1, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V', 'Ascending'),
(1, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V', 'Ascending'),
(1, 6, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'Ascending'),
(1, 11, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V', 'Ascending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_reportsummary`
--

DROP TABLE IF EXISTS `vtiger_reportsummary`;
CREATE TABLE IF NOT EXISTS `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`reportsummaryid`,`summarytype`,`columnname`),
  KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_reportsummary`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_revenuetype`
--

DROP TABLE IF EXISTS `vtiger_revenuetype`;
CREATE TABLE IF NOT EXISTS `vtiger_revenuetype` (
  `revenuetypeid` int(19) NOT NULL auto_increment,
  `revenuetype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`revenuetypeid`),
  UNIQUE KEY `revenuetype_revenuetype_idx` (`revenuetype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_revenuetype`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_role`
--

DROP TABLE IF EXISTS `vtiger_role`;
CREATE TABLE IF NOT EXISTS `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) default NULL,
  `parentrole` varchar(255) default NULL,
  `depth` int(19) default NULL,
  PRIMARY KEY  (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_role`
--

INSERT INTO `vtiger_role` (`roleid`, `rolename`, `parentrole`, `depth`) VALUES
('H1', 'Organisation', 'H1', 0),
('H2', 'CEO', 'H1::H2', 1),
('H3', 'Vice President', 'H1::H2::H3', 2),
('H4', 'Sales Manager', 'H1::H2::H3::H4', 3),
('H5', 'Sales Man', 'H1::H2::H3::H4::H5', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_role2picklist`
--

DROP TABLE IF EXISTS `vtiger_role2picklist`;
CREATE TABLE IF NOT EXISTS `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) default NULL,
  PRIMARY KEY  (`roleid`,`picklistvalueid`,`picklistid`),
  KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`),
  KEY `fk_2_vtiger_role2picklist` (`picklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_role2picklist`
--

INSERT INTO `vtiger_role2picklist` (`roleid`, `picklistvalueid`, `picklistid`, `sortid`) VALUES
('H1', 1, 1, 0),
('H1', 2, 1, 1),
('H1', 3, 1, 2),
('H1', 4, 1, 3),
('H1', 5, 1, 4),
('H1', 6, 1, 5),
('H1', 7, 1, 6),
('H1', 8, 1, 7),
('H1', 9, 1, 8),
('H1', 10, 1, 9),
('H1', 11, 1, 10),
('H1', 12, 2, 0),
('H1', 13, 2, 1),
('H1', 14, 3, 0),
('H1', 15, 3, 1),
('H1', 16, 3, 2),
('H1', 17, 3, 3),
('H1', 18, 3, 4),
('H1', 19, 3, 5),
('H1', 20, 4, 0),
('H1', 21, 4, 1),
('H1', 22, 4, 2),
('H1', 23, 4, 3),
('H1', 24, 4, 4),
('H1', 25, 4, 5),
('H1', 26, 4, 6),
('H1', 27, 4, 7),
('H1', 28, 4, 8),
('H1', 29, 4, 9),
('H1', 30, 4, 10),
('H1', 31, 4, 11),
('H1', 32, 4, 12),
('H1', 33, 5, 0),
('H1', 34, 5, 1),
('H1', 35, 5, 2),
('H1', 36, 5, 3),
('H1', 37, 5, 4),
('H1', 38, 6, 0),
('H1', 39, 6, 1),
('H1', 40, 6, 2),
('H1', 41, 7, 0),
('H1', 42, 7, 1),
('H1', 43, 7, 2),
('H1', 44, 7, 3),
('H1', 45, 7, 4),
('H1', 46, 8, 0),
('H1', 47, 9, 0),
('H1', 48, 9, 1),
('H1', 49, 9, 2),
('H1', 50, 9, 3),
('H1', 51, 10, 0),
('H1', 52, 10, 1),
('H1', 53, 10, 2),
('H1', 54, 10, 3),
('H1', 55, 10, 4),
('H1', 56, 10, 5),
('H1', 57, 10, 6),
('H1', 58, 10, 7),
('H1', 59, 10, 8),
('H1', 60, 11, 0),
('H1', 61, 11, 1),
('H1', 62, 11, 2),
('H1', 63, 11, 3),
('H1', 64, 11, 4),
('H1', 65, 11, 5),
('H1', 66, 11, 6),
('H1', 67, 11, 7),
('H1', 68, 11, 8),
('H1', 69, 11, 9),
('H1', 70, 11, 10),
('H1', 71, 11, 11),
('H1', 72, 11, 12),
('H1', 73, 11, 13),
('H1', 74, 11, 14),
('H1', 75, 11, 15),
('H1', 76, 11, 16),
('H1', 77, 11, 17),
('H1', 78, 11, 18),
('H1', 79, 11, 19),
('H1', 80, 11, 20),
('H1', 81, 11, 21),
('H1', 82, 11, 22),
('H1', 83, 11, 23),
('H1', 84, 11, 24),
('H1', 85, 11, 25),
('H1', 86, 11, 26),
('H1', 87, 11, 27),
('H1', 88, 11, 28),
('H1', 89, 11, 29),
('H1', 90, 11, 30),
('H1', 91, 11, 31),
('H1', 92, 12, 0),
('H1', 93, 12, 1),
('H1', 94, 12, 2),
('H1', 95, 12, 3),
('H1', 96, 12, 4),
('H1', 97, 12, 5),
('H1', 98, 13, 0),
('H1', 99, 13, 1),
('H1', 100, 13, 2),
('H1', 101, 13, 3),
('H1', 102, 13, 4),
('H1', 103, 13, 5),
('H1', 104, 13, 6),
('H1', 105, 13, 7),
('H1', 106, 13, 8),
('H1', 107, 13, 9),
('H1', 108, 13, 10),
('H1', 109, 13, 11),
('H1', 110, 13, 12),
('H1', 111, 14, 0),
('H1', 112, 14, 1),
('H1', 113, 14, 2),
('H1', 114, 14, 3),
('H1', 115, 14, 4),
('H1', 116, 14, 5),
('H1', 117, 14, 6),
('H1', 118, 14, 7),
('H1', 119, 14, 8),
('H1', 120, 14, 9),
('H1', 121, 14, 10),
('H1', 122, 14, 11),
('H1', 123, 15, 0),
('H1', 124, 15, 1),
('H1', 125, 15, 2),
('H1', 126, 15, 3),
('H1', 127, 16, 0),
('H1', 128, 16, 1),
('H1', 129, 16, 2),
('H1', 130, 17, 0),
('H1', 131, 17, 1),
('H1', 132, 17, 2),
('H1', 133, 17, 3),
('H1', 134, 17, 4),
('H1', 135, 18, 0),
('H1', 136, 18, 1),
('H1', 137, 18, 2),
('H1', 138, 18, 3),
('H1', 139, 19, 0),
('H1', 140, 19, 1),
('H1', 141, 19, 2),
('H1', 142, 19, 3),
('H1', 143, 19, 4),
('H1', 144, 20, 0),
('H1', 145, 20, 1),
('H1', 146, 20, 2),
('H1', 147, 20, 3),
('H1', 148, 20, 4),
('H1', 149, 20, 5),
('H1', 150, 21, 0),
('H1', 151, 21, 1),
('H1', 152, 21, 2),
('H1', 153, 21, 3),
('H1', 154, 21, 4),
('H1', 155, 21, 5),
('H1', 156, 21, 6),
('H1', 157, 21, 7),
('H1', 158, 21, 8),
('H1', 159, 21, 9),
('H1', 160, 22, 0),
('H1', 161, 22, 1),
('H1', 162, 22, 2),
('H1', 163, 22, 3),
('H1', 164, 22, 4),
('H1', 165, 22, 5),
('H1', 166, 23, 0),
('H1', 167, 23, 1),
('H1', 168, 23, 2),
('H1', 169, 23, 3),
('H1', 170, 24, 0),
('H1', 171, 24, 1),
('H1', 172, 24, 2),
('H1', 173, 25, 0),
('H1', 174, 25, 1),
('H1', 175, 25, 2),
('H1', 176, 25, 3),
('H1', 177, 25, 4),
('H1', 178, 25, 5),
('H1', 179, 26, 0),
('H1', 180, 26, 1),
('H1', 181, 26, 2),
('H1', 182, 27, 0),
('H1', 183, 27, 1),
('H1', 184, 27, 2),
('H1', 185, 27, 3),
('H1', 186, 28, 0),
('H1', 187, 28, 1),
('H1', 188, 28, 2),
('H1', 189, 28, 3),
('H1', 190, 29, 0),
('H1', 191, 29, 1),
('H1', 192, 29, 2),
('H1', 193, 29, 3),
('H1', 194, 30, 0),
('H1', 195, 30, 1),
('H1', 196, 30, 2),
('H1', 197, 30, 3),
('H1', 198, 30, 4),
('H1', 199, 30, 5),
('H1', 200, 30, 6),
('H1', 201, 30, 7),
('H1', 202, 30, 8),
('H1', 203, 30, 9),
('H1', 204, 30, 10),
('H1', 205, 30, 11),
('H1', 206, 30, 12),
('H1', 207, 30, 13),
('H1', 208, 30, 14),
('H1', 209, 30, 15),
('H1', 210, 31, 1),
('H1', 211, 31, 2),
('H1', 212, 31, 3),
('H1', 213, 31, 4),
('H1', 214, 32, 1),
('H1', 215, 32, 2),
('H1', 216, 32, 3),
('H1', 217, 32, 4),
('H1', 218, 32, 5),
('H1', 219, 32, 6),
('H1', 220, 33, 1),
('H1', 221, 33, 2),
('H1', 222, 33, 3),
('H1', 223, 34, 1),
('H1', 224, 34, 2),
('H1', 225, 34, 3),
('H1', 226, 35, 1),
('H1', 227, 35, 2),
('H1', 228, 35, 3),
('H1', 229, 36, 1),
('H1', 230, 36, 2),
('H1', 231, 36, 3),
('H1', 232, 36, 4),
('H1', 233, 36, 5),
('H1', 234, 36, 6),
('H2', 1, 1, 0),
('H2', 2, 1, 1),
('H2', 3, 1, 2),
('H2', 4, 1, 3),
('H2', 5, 1, 4),
('H2', 6, 1, 5),
('H2', 7, 1, 6),
('H2', 8, 1, 7),
('H2', 9, 1, 8),
('H2', 10, 1, 9),
('H2', 11, 1, 10),
('H2', 12, 2, 0),
('H2', 13, 2, 1),
('H2', 14, 3, 0),
('H2', 15, 3, 1),
('H2', 16, 3, 2),
('H2', 17, 3, 3),
('H2', 18, 3, 4),
('H2', 19, 3, 5),
('H2', 20, 4, 0),
('H2', 21, 4, 1),
('H2', 22, 4, 2),
('H2', 23, 4, 3),
('H2', 24, 4, 4),
('H2', 25, 4, 5),
('H2', 26, 4, 6),
('H2', 27, 4, 7),
('H2', 28, 4, 8),
('H2', 29, 4, 9),
('H2', 30, 4, 10),
('H2', 31, 4, 11),
('H2', 32, 4, 12),
('H2', 33, 5, 0),
('H2', 34, 5, 1),
('H2', 35, 5, 2),
('H2', 36, 5, 3),
('H2', 37, 5, 4),
('H2', 38, 6, 0),
('H2', 39, 6, 1),
('H2', 40, 6, 2),
('H2', 41, 7, 0),
('H2', 42, 7, 1),
('H2', 43, 7, 2),
('H2', 44, 7, 3),
('H2', 45, 7, 4),
('H2', 46, 8, 0),
('H2', 47, 9, 0),
('H2', 48, 9, 1),
('H2', 49, 9, 2),
('H2', 50, 9, 3),
('H2', 51, 10, 0),
('H2', 52, 10, 1),
('H2', 53, 10, 2),
('H2', 54, 10, 3),
('H2', 55, 10, 4),
('H2', 56, 10, 5),
('H2', 57, 10, 6),
('H2', 58, 10, 7),
('H2', 59, 10, 8),
('H2', 60, 11, 0),
('H2', 61, 11, 1),
('H2', 62, 11, 2),
('H2', 63, 11, 3),
('H2', 64, 11, 4),
('H2', 65, 11, 5),
('H2', 66, 11, 6),
('H2', 67, 11, 7),
('H2', 68, 11, 8),
('H2', 69, 11, 9),
('H2', 70, 11, 10),
('H2', 71, 11, 11),
('H2', 72, 11, 12),
('H2', 73, 11, 13),
('H2', 74, 11, 14),
('H2', 75, 11, 15),
('H2', 76, 11, 16),
('H2', 77, 11, 17),
('H2', 78, 11, 18),
('H2', 79, 11, 19),
('H2', 80, 11, 20),
('H2', 81, 11, 21),
('H2', 82, 11, 22),
('H2', 83, 11, 23),
('H2', 84, 11, 24),
('H2', 85, 11, 25),
('H2', 86, 11, 26),
('H2', 87, 11, 27),
('H2', 88, 11, 28),
('H2', 89, 11, 29),
('H2', 90, 11, 30),
('H2', 91, 11, 31),
('H2', 92, 12, 0),
('H2', 93, 12, 1),
('H2', 94, 12, 2),
('H2', 95, 12, 3),
('H2', 96, 12, 4),
('H2', 97, 12, 5),
('H2', 98, 13, 0),
('H2', 99, 13, 1),
('H2', 100, 13, 2),
('H2', 101, 13, 3),
('H2', 102, 13, 4),
('H2', 103, 13, 5),
('H2', 104, 13, 6),
('H2', 105, 13, 7),
('H2', 106, 13, 8),
('H2', 107, 13, 9),
('H2', 108, 13, 10),
('H2', 109, 13, 11),
('H2', 110, 13, 12),
('H2', 111, 14, 0),
('H2', 112, 14, 1),
('H2', 113, 14, 2),
('H2', 114, 14, 3),
('H2', 115, 14, 4),
('H2', 116, 14, 5),
('H2', 117, 14, 6),
('H2', 118, 14, 7),
('H2', 119, 14, 8),
('H2', 120, 14, 9),
('H2', 121, 14, 10),
('H2', 122, 14, 11),
('H2', 123, 15, 0),
('H2', 124, 15, 1),
('H2', 125, 15, 2),
('H2', 126, 15, 3),
('H2', 127, 16, 0),
('H2', 128, 16, 1),
('H2', 129, 16, 2),
('H2', 130, 17, 0),
('H2', 131, 17, 1),
('H2', 132, 17, 2),
('H2', 133, 17, 3),
('H2', 134, 17, 4),
('H2', 135, 18, 0),
('H2', 136, 18, 1),
('H2', 137, 18, 2),
('H2', 138, 18, 3),
('H2', 139, 19, 0),
('H2', 140, 19, 1),
('H2', 141, 19, 2),
('H2', 142, 19, 3),
('H2', 143, 19, 4),
('H2', 144, 20, 0),
('H2', 145, 20, 1),
('H2', 146, 20, 2),
('H2', 147, 20, 3),
('H2', 148, 20, 4),
('H2', 149, 20, 5),
('H2', 150, 21, 0),
('H2', 151, 21, 1),
('H2', 152, 21, 2),
('H2', 153, 21, 3),
('H2', 154, 21, 4),
('H2', 155, 21, 5),
('H2', 156, 21, 6),
('H2', 157, 21, 7),
('H2', 158, 21, 8),
('H2', 159, 21, 9),
('H2', 160, 22, 0),
('H2', 161, 22, 1),
('H2', 162, 22, 2),
('H2', 163, 22, 3),
('H2', 164, 22, 4),
('H2', 165, 22, 5),
('H2', 166, 23, 0),
('H2', 167, 23, 1),
('H2', 168, 23, 2),
('H2', 169, 23, 3),
('H2', 170, 24, 0),
('H2', 171, 24, 1),
('H2', 172, 24, 2),
('H2', 173, 25, 0),
('H2', 174, 25, 1),
('H2', 175, 25, 2),
('H2', 176, 25, 3),
('H2', 177, 25, 4),
('H2', 178, 25, 5),
('H2', 179, 26, 0),
('H2', 180, 26, 1),
('H2', 181, 26, 2),
('H2', 182, 27, 0),
('H2', 183, 27, 1),
('H2', 184, 27, 2),
('H2', 185, 27, 3),
('H2', 186, 28, 0),
('H2', 187, 28, 1),
('H2', 188, 28, 2),
('H2', 189, 28, 3),
('H2', 190, 29, 0),
('H2', 191, 29, 1),
('H2', 192, 29, 2),
('H2', 193, 29, 3),
('H2', 194, 30, 0),
('H2', 195, 30, 1),
('H2', 196, 30, 2),
('H2', 197, 30, 3),
('H2', 198, 30, 4),
('H2', 199, 30, 5),
('H2', 200, 30, 6),
('H2', 201, 30, 7),
('H2', 202, 30, 8),
('H2', 203, 30, 9),
('H2', 204, 30, 10),
('H2', 205, 30, 11),
('H2', 206, 30, 12),
('H2', 207, 30, 13),
('H2', 208, 30, 14),
('H2', 209, 30, 15),
('H2', 210, 31, 1),
('H2', 211, 31, 2),
('H2', 212, 31, 3),
('H2', 213, 31, 4),
('H2', 214, 32, 1),
('H2', 215, 32, 2),
('H2', 216, 32, 3),
('H2', 217, 32, 4),
('H2', 218, 32, 5),
('H2', 219, 32, 6),
('H2', 220, 33, 1),
('H2', 221, 33, 2),
('H2', 222, 33, 3),
('H2', 223, 34, 1),
('H2', 224, 34, 2),
('H2', 225, 34, 3),
('H2', 226, 35, 1),
('H2', 227, 35, 2),
('H2', 228, 35, 3),
('H2', 229, 36, 1),
('H2', 230, 36, 2),
('H2', 231, 36, 3),
('H2', 232, 36, 4),
('H2', 233, 36, 5),
('H2', 234, 36, 6),
('H3', 1, 1, 0),
('H3', 2, 1, 1),
('H3', 3, 1, 2),
('H3', 4, 1, 3),
('H3', 5, 1, 4),
('H3', 6, 1, 5),
('H3', 7, 1, 6),
('H3', 8, 1, 7),
('H3', 9, 1, 8),
('H3', 10, 1, 9),
('H3', 11, 1, 10),
('H3', 12, 2, 0),
('H3', 13, 2, 1),
('H3', 14, 3, 0),
('H3', 15, 3, 1),
('H3', 16, 3, 2),
('H3', 17, 3, 3),
('H3', 18, 3, 4),
('H3', 19, 3, 5),
('H3', 20, 4, 0),
('H3', 21, 4, 1),
('H3', 22, 4, 2),
('H3', 23, 4, 3),
('H3', 24, 4, 4),
('H3', 25, 4, 5),
('H3', 26, 4, 6),
('H3', 27, 4, 7),
('H3', 28, 4, 8),
('H3', 29, 4, 9),
('H3', 30, 4, 10),
('H3', 31, 4, 11),
('H3', 32, 4, 12),
('H3', 33, 5, 0),
('H3', 34, 5, 1),
('H3', 35, 5, 2),
('H3', 36, 5, 3),
('H3', 37, 5, 4),
('H3', 38, 6, 0),
('H3', 39, 6, 1),
('H3', 40, 6, 2),
('H3', 41, 7, 0),
('H3', 42, 7, 1),
('H3', 43, 7, 2),
('H3', 44, 7, 3),
('H3', 45, 7, 4),
('H3', 46, 8, 0),
('H3', 47, 9, 0),
('H3', 48, 9, 1),
('H3', 49, 9, 2),
('H3', 50, 9, 3),
('H3', 51, 10, 0),
('H3', 52, 10, 1),
('H3', 53, 10, 2),
('H3', 54, 10, 3),
('H3', 55, 10, 4),
('H3', 56, 10, 5),
('H3', 57, 10, 6),
('H3', 58, 10, 7),
('H3', 59, 10, 8),
('H3', 60, 11, 0),
('H3', 61, 11, 1),
('H3', 62, 11, 2),
('H3', 63, 11, 3),
('H3', 64, 11, 4),
('H3', 65, 11, 5),
('H3', 66, 11, 6),
('H3', 67, 11, 7),
('H3', 68, 11, 8),
('H3', 69, 11, 9),
('H3', 70, 11, 10),
('H3', 71, 11, 11),
('H3', 72, 11, 12),
('H3', 73, 11, 13),
('H3', 74, 11, 14),
('H3', 75, 11, 15),
('H3', 76, 11, 16),
('H3', 77, 11, 17),
('H3', 78, 11, 18),
('H3', 79, 11, 19),
('H3', 80, 11, 20),
('H3', 81, 11, 21),
('H3', 82, 11, 22),
('H3', 83, 11, 23),
('H3', 84, 11, 24),
('H3', 85, 11, 25),
('H3', 86, 11, 26),
('H3', 87, 11, 27),
('H3', 88, 11, 28),
('H3', 89, 11, 29),
('H3', 90, 11, 30),
('H3', 91, 11, 31),
('H3', 92, 12, 0),
('H3', 93, 12, 1),
('H3', 94, 12, 2),
('H3', 95, 12, 3),
('H3', 96, 12, 4),
('H3', 97, 12, 5),
('H3', 98, 13, 0),
('H3', 99, 13, 1),
('H3', 100, 13, 2),
('H3', 101, 13, 3),
('H3', 102, 13, 4),
('H3', 103, 13, 5),
('H3', 104, 13, 6),
('H3', 105, 13, 7),
('H3', 106, 13, 8),
('H3', 107, 13, 9),
('H3', 108, 13, 10),
('H3', 109, 13, 11),
('H3', 110, 13, 12),
('H3', 111, 14, 0),
('H3', 112, 14, 1),
('H3', 113, 14, 2),
('H3', 114, 14, 3),
('H3', 115, 14, 4),
('H3', 116, 14, 5),
('H3', 117, 14, 6),
('H3', 118, 14, 7),
('H3', 119, 14, 8),
('H3', 120, 14, 9),
('H3', 121, 14, 10),
('H3', 122, 14, 11),
('H3', 123, 15, 0),
('H3', 124, 15, 1),
('H3', 125, 15, 2),
('H3', 126, 15, 3),
('H3', 127, 16, 0),
('H3', 128, 16, 1),
('H3', 129, 16, 2),
('H3', 130, 17, 0),
('H3', 131, 17, 1),
('H3', 132, 17, 2),
('H3', 133, 17, 3),
('H3', 134, 17, 4),
('H3', 135, 18, 0),
('H3', 136, 18, 1),
('H3', 137, 18, 2),
('H3', 138, 18, 3),
('H3', 139, 19, 0),
('H3', 140, 19, 1),
('H3', 141, 19, 2),
('H3', 142, 19, 3),
('H3', 143, 19, 4),
('H3', 144, 20, 0),
('H3', 145, 20, 1),
('H3', 146, 20, 2),
('H3', 147, 20, 3),
('H3', 148, 20, 4),
('H3', 149, 20, 5),
('H3', 150, 21, 0),
('H3', 151, 21, 1),
('H3', 152, 21, 2),
('H3', 153, 21, 3),
('H3', 154, 21, 4),
('H3', 155, 21, 5),
('H3', 156, 21, 6),
('H3', 157, 21, 7),
('H3', 158, 21, 8),
('H3', 159, 21, 9),
('H3', 160, 22, 0),
('H3', 161, 22, 1),
('H3', 162, 22, 2),
('H3', 163, 22, 3),
('H3', 164, 22, 4),
('H3', 165, 22, 5),
('H3', 166, 23, 0),
('H3', 167, 23, 1),
('H3', 168, 23, 2),
('H3', 169, 23, 3),
('H3', 170, 24, 0),
('H3', 171, 24, 1),
('H3', 172, 24, 2),
('H3', 173, 25, 0),
('H3', 174, 25, 1),
('H3', 175, 25, 2),
('H3', 176, 25, 3),
('H3', 177, 25, 4),
('H3', 178, 25, 5),
('H3', 179, 26, 0),
('H3', 180, 26, 1),
('H3', 181, 26, 2),
('H3', 182, 27, 0),
('H3', 183, 27, 1),
('H3', 184, 27, 2),
('H3', 185, 27, 3),
('H3', 186, 28, 0),
('H3', 187, 28, 1),
('H3', 188, 28, 2),
('H3', 189, 28, 3),
('H3', 190, 29, 0),
('H3', 191, 29, 1),
('H3', 192, 29, 2),
('H3', 193, 29, 3),
('H3', 194, 30, 0),
('H3', 195, 30, 1),
('H3', 196, 30, 2),
('H3', 197, 30, 3),
('H3', 198, 30, 4),
('H3', 199, 30, 5),
('H3', 200, 30, 6),
('H3', 201, 30, 7),
('H3', 202, 30, 8),
('H3', 203, 30, 9),
('H3', 204, 30, 10),
('H3', 205, 30, 11),
('H3', 206, 30, 12),
('H3', 207, 30, 13),
('H3', 208, 30, 14),
('H3', 209, 30, 15),
('H3', 210, 31, 1),
('H3', 211, 31, 2),
('H3', 212, 31, 3),
('H3', 213, 31, 4),
('H3', 214, 32, 1),
('H3', 215, 32, 2),
('H3', 216, 32, 3),
('H3', 217, 32, 4),
('H3', 218, 32, 5),
('H3', 219, 32, 6),
('H3', 220, 33, 1),
('H3', 221, 33, 2),
('H3', 222, 33, 3),
('H3', 223, 34, 1),
('H3', 224, 34, 2),
('H3', 225, 34, 3),
('H3', 226, 35, 1),
('H3', 227, 35, 2),
('H3', 228, 35, 3),
('H3', 229, 36, 1),
('H3', 230, 36, 2),
('H3', 231, 36, 3),
('H3', 232, 36, 4),
('H3', 233, 36, 5),
('H3', 234, 36, 6),
('H4', 1, 1, 0),
('H4', 2, 1, 1),
('H4', 3, 1, 2),
('H4', 4, 1, 3),
('H4', 5, 1, 4),
('H4', 6, 1, 5),
('H4', 7, 1, 6),
('H4', 8, 1, 7),
('H4', 9, 1, 8),
('H4', 10, 1, 9),
('H4', 11, 1, 10),
('H4', 12, 2, 0),
('H4', 13, 2, 1),
('H4', 14, 3, 0),
('H4', 15, 3, 1),
('H4', 16, 3, 2),
('H4', 17, 3, 3),
('H4', 18, 3, 4),
('H4', 19, 3, 5),
('H4', 20, 4, 0),
('H4', 21, 4, 1),
('H4', 22, 4, 2),
('H4', 23, 4, 3),
('H4', 24, 4, 4),
('H4', 25, 4, 5),
('H4', 26, 4, 6),
('H4', 27, 4, 7),
('H4', 28, 4, 8),
('H4', 29, 4, 9),
('H4', 30, 4, 10),
('H4', 31, 4, 11),
('H4', 32, 4, 12),
('H4', 33, 5, 0),
('H4', 34, 5, 1),
('H4', 35, 5, 2),
('H4', 36, 5, 3),
('H4', 37, 5, 4),
('H4', 38, 6, 0),
('H4', 39, 6, 1),
('H4', 40, 6, 2),
('H4', 41, 7, 0),
('H4', 42, 7, 1),
('H4', 43, 7, 2),
('H4', 44, 7, 3),
('H4', 45, 7, 4),
('H4', 46, 8, 0),
('H4', 47, 9, 0),
('H4', 48, 9, 1),
('H4', 49, 9, 2),
('H4', 50, 9, 3),
('H4', 51, 10, 0),
('H4', 52, 10, 1),
('H4', 53, 10, 2),
('H4', 54, 10, 3),
('H4', 55, 10, 4),
('H4', 56, 10, 5),
('H4', 57, 10, 6),
('H4', 58, 10, 7),
('H4', 59, 10, 8),
('H4', 60, 11, 0),
('H4', 61, 11, 1),
('H4', 62, 11, 2),
('H4', 63, 11, 3),
('H4', 64, 11, 4),
('H4', 65, 11, 5),
('H4', 66, 11, 6),
('H4', 67, 11, 7),
('H4', 68, 11, 8),
('H4', 69, 11, 9),
('H4', 70, 11, 10),
('H4', 71, 11, 11),
('H4', 72, 11, 12),
('H4', 73, 11, 13),
('H4', 74, 11, 14),
('H4', 75, 11, 15),
('H4', 76, 11, 16),
('H4', 77, 11, 17),
('H4', 78, 11, 18),
('H4', 79, 11, 19),
('H4', 80, 11, 20),
('H4', 81, 11, 21),
('H4', 82, 11, 22),
('H4', 83, 11, 23),
('H4', 84, 11, 24),
('H4', 85, 11, 25),
('H4', 86, 11, 26),
('H4', 87, 11, 27),
('H4', 88, 11, 28),
('H4', 89, 11, 29),
('H4', 90, 11, 30),
('H4', 91, 11, 31),
('H4', 92, 12, 0),
('H4', 93, 12, 1),
('H4', 94, 12, 2),
('H4', 95, 12, 3),
('H4', 96, 12, 4),
('H4', 97, 12, 5),
('H4', 98, 13, 0),
('H4', 99, 13, 1),
('H4', 100, 13, 2),
('H4', 101, 13, 3),
('H4', 102, 13, 4),
('H4', 103, 13, 5),
('H4', 104, 13, 6),
('H4', 105, 13, 7),
('H4', 106, 13, 8),
('H4', 107, 13, 9),
('H4', 108, 13, 10),
('H4', 109, 13, 11),
('H4', 110, 13, 12),
('H4', 111, 14, 0),
('H4', 112, 14, 1),
('H4', 113, 14, 2),
('H4', 114, 14, 3),
('H4', 115, 14, 4),
('H4', 116, 14, 5),
('H4', 117, 14, 6),
('H4', 118, 14, 7),
('H4', 119, 14, 8),
('H4', 120, 14, 9),
('H4', 121, 14, 10),
('H4', 122, 14, 11),
('H4', 123, 15, 0),
('H4', 124, 15, 1),
('H4', 125, 15, 2),
('H4', 126, 15, 3),
('H4', 127, 16, 0),
('H4', 128, 16, 1),
('H4', 129, 16, 2),
('H4', 130, 17, 0),
('H4', 131, 17, 1),
('H4', 132, 17, 2),
('H4', 133, 17, 3),
('H4', 134, 17, 4),
('H4', 135, 18, 0),
('H4', 136, 18, 1),
('H4', 137, 18, 2),
('H4', 138, 18, 3),
('H4', 139, 19, 0),
('H4', 140, 19, 1),
('H4', 141, 19, 2),
('H4', 142, 19, 3),
('H4', 143, 19, 4),
('H4', 144, 20, 0),
('H4', 145, 20, 1),
('H4', 146, 20, 2),
('H4', 147, 20, 3),
('H4', 148, 20, 4),
('H4', 149, 20, 5),
('H4', 150, 21, 0),
('H4', 151, 21, 1),
('H4', 152, 21, 2),
('H4', 153, 21, 3),
('H4', 154, 21, 4),
('H4', 155, 21, 5),
('H4', 156, 21, 6),
('H4', 157, 21, 7),
('H4', 158, 21, 8),
('H4', 159, 21, 9),
('H4', 160, 22, 0),
('H4', 161, 22, 1),
('H4', 162, 22, 2),
('H4', 163, 22, 3),
('H4', 164, 22, 4),
('H4', 165, 22, 5),
('H4', 166, 23, 0),
('H4', 167, 23, 1),
('H4', 168, 23, 2),
('H4', 169, 23, 3),
('H4', 170, 24, 0),
('H4', 171, 24, 1),
('H4', 172, 24, 2),
('H4', 173, 25, 0),
('H4', 174, 25, 1),
('H4', 175, 25, 2),
('H4', 176, 25, 3),
('H4', 177, 25, 4),
('H4', 178, 25, 5),
('H4', 179, 26, 0),
('H4', 180, 26, 1),
('H4', 181, 26, 2),
('H4', 182, 27, 0),
('H4', 183, 27, 1),
('H4', 184, 27, 2),
('H4', 185, 27, 3),
('H4', 186, 28, 0),
('H4', 187, 28, 1),
('H4', 188, 28, 2),
('H4', 189, 28, 3),
('H4', 190, 29, 0),
('H4', 191, 29, 1),
('H4', 192, 29, 2),
('H4', 193, 29, 3),
('H4', 194, 30, 0),
('H4', 195, 30, 1),
('H4', 196, 30, 2),
('H4', 197, 30, 3),
('H4', 198, 30, 4),
('H4', 199, 30, 5),
('H4', 200, 30, 6),
('H4', 201, 30, 7),
('H4', 202, 30, 8),
('H4', 203, 30, 9),
('H4', 204, 30, 10),
('H4', 205, 30, 11),
('H4', 206, 30, 12),
('H4', 207, 30, 13),
('H4', 208, 30, 14),
('H4', 209, 30, 15),
('H4', 210, 31, 1),
('H4', 211, 31, 2),
('H4', 212, 31, 3),
('H4', 213, 31, 4),
('H4', 214, 32, 1),
('H4', 215, 32, 2),
('H4', 216, 32, 3),
('H4', 217, 32, 4),
('H4', 218, 32, 5),
('H4', 219, 32, 6),
('H4', 220, 33, 1),
('H4', 221, 33, 2),
('H4', 222, 33, 3),
('H4', 223, 34, 1),
('H4', 224, 34, 2),
('H4', 225, 34, 3),
('H4', 226, 35, 1),
('H4', 227, 35, 2),
('H4', 228, 35, 3),
('H4', 229, 36, 1),
('H4', 230, 36, 2),
('H4', 231, 36, 3),
('H4', 232, 36, 4),
('H4', 233, 36, 5),
('H4', 234, 36, 6),
('H5', 1, 1, 0),
('H5', 2, 1, 1),
('H5', 3, 1, 2),
('H5', 4, 1, 3),
('H5', 5, 1, 4),
('H5', 6, 1, 5),
('H5', 7, 1, 6),
('H5', 8, 1, 7),
('H5', 9, 1, 8),
('H5', 10, 1, 9),
('H5', 11, 1, 10),
('H5', 12, 2, 0),
('H5', 13, 2, 1),
('H5', 14, 3, 0),
('H5', 15, 3, 1),
('H5', 16, 3, 2),
('H5', 17, 3, 3),
('H5', 18, 3, 4),
('H5', 19, 3, 5),
('H5', 20, 4, 0),
('H5', 21, 4, 1),
('H5', 22, 4, 2),
('H5', 23, 4, 3),
('H5', 24, 4, 4),
('H5', 25, 4, 5),
('H5', 26, 4, 6),
('H5', 27, 4, 7),
('H5', 28, 4, 8),
('H5', 29, 4, 9),
('H5', 30, 4, 10),
('H5', 31, 4, 11),
('H5', 32, 4, 12),
('H5', 33, 5, 0),
('H5', 34, 5, 1),
('H5', 35, 5, 2),
('H5', 36, 5, 3),
('H5', 37, 5, 4),
('H5', 38, 6, 0),
('H5', 39, 6, 1),
('H5', 40, 6, 2),
('H5', 41, 7, 0),
('H5', 42, 7, 1),
('H5', 43, 7, 2),
('H5', 44, 7, 3),
('H5', 45, 7, 4),
('H5', 46, 8, 0),
('H5', 47, 9, 0),
('H5', 48, 9, 1),
('H5', 49, 9, 2),
('H5', 50, 9, 3),
('H5', 51, 10, 0),
('H5', 52, 10, 1),
('H5', 53, 10, 2),
('H5', 54, 10, 3),
('H5', 55, 10, 4),
('H5', 56, 10, 5),
('H5', 57, 10, 6),
('H5', 58, 10, 7),
('H5', 59, 10, 8),
('H5', 60, 11, 0),
('H5', 61, 11, 1),
('H5', 62, 11, 2),
('H5', 63, 11, 3),
('H5', 64, 11, 4),
('H5', 65, 11, 5),
('H5', 66, 11, 6),
('H5', 67, 11, 7),
('H5', 68, 11, 8),
('H5', 69, 11, 9),
('H5', 70, 11, 10),
('H5', 71, 11, 11),
('H5', 72, 11, 12),
('H5', 73, 11, 13),
('H5', 74, 11, 14),
('H5', 75, 11, 15),
('H5', 76, 11, 16),
('H5', 77, 11, 17),
('H5', 78, 11, 18),
('H5', 79, 11, 19),
('H5', 80, 11, 20),
('H5', 81, 11, 21),
('H5', 82, 11, 22),
('H5', 83, 11, 23),
('H5', 84, 11, 24),
('H5', 85, 11, 25),
('H5', 86, 11, 26),
('H5', 87, 11, 27),
('H5', 88, 11, 28),
('H5', 89, 11, 29),
('H5', 90, 11, 30),
('H5', 91, 11, 31),
('H5', 92, 12, 0),
('H5', 93, 12, 1),
('H5', 94, 12, 2),
('H5', 95, 12, 3),
('H5', 96, 12, 4),
('H5', 97, 12, 5),
('H5', 98, 13, 0),
('H5', 99, 13, 1),
('H5', 100, 13, 2),
('H5', 101, 13, 3),
('H5', 102, 13, 4),
('H5', 103, 13, 5),
('H5', 104, 13, 6),
('H5', 105, 13, 7),
('H5', 106, 13, 8),
('H5', 107, 13, 9),
('H5', 108, 13, 10),
('H5', 109, 13, 11),
('H5', 110, 13, 12),
('H5', 111, 14, 0),
('H5', 112, 14, 1),
('H5', 113, 14, 2),
('H5', 114, 14, 3),
('H5', 115, 14, 4),
('H5', 116, 14, 5),
('H5', 117, 14, 6),
('H5', 118, 14, 7),
('H5', 119, 14, 8),
('H5', 120, 14, 9),
('H5', 121, 14, 10),
('H5', 122, 14, 11),
('H5', 123, 15, 0),
('H5', 124, 15, 1),
('H5', 125, 15, 2),
('H5', 126, 15, 3),
('H5', 127, 16, 0),
('H5', 128, 16, 1),
('H5', 129, 16, 2),
('H5', 130, 17, 0),
('H5', 131, 17, 1),
('H5', 132, 17, 2),
('H5', 133, 17, 3),
('H5', 134, 17, 4),
('H5', 135, 18, 0),
('H5', 136, 18, 1),
('H5', 137, 18, 2),
('H5', 138, 18, 3),
('H5', 139, 19, 0),
('H5', 140, 19, 1),
('H5', 141, 19, 2),
('H5', 142, 19, 3),
('H5', 143, 19, 4),
('H5', 144, 20, 0),
('H5', 145, 20, 1),
('H5', 146, 20, 2),
('H5', 147, 20, 3),
('H5', 148, 20, 4),
('H5', 149, 20, 5),
('H5', 150, 21, 0),
('H5', 151, 21, 1),
('H5', 152, 21, 2),
('H5', 153, 21, 3),
('H5', 154, 21, 4),
('H5', 155, 21, 5),
('H5', 156, 21, 6),
('H5', 157, 21, 7),
('H5', 158, 21, 8),
('H5', 159, 21, 9),
('H5', 160, 22, 0),
('H5', 161, 22, 1),
('H5', 162, 22, 2),
('H5', 163, 22, 3),
('H5', 164, 22, 4),
('H5', 165, 22, 5),
('H5', 166, 23, 0),
('H5', 167, 23, 1),
('H5', 168, 23, 2),
('H5', 169, 23, 3),
('H5', 170, 24, 0),
('H5', 171, 24, 1),
('H5', 172, 24, 2),
('H5', 173, 25, 0),
('H5', 174, 25, 1),
('H5', 175, 25, 2),
('H5', 176, 25, 3),
('H5', 177, 25, 4),
('H5', 178, 25, 5),
('H5', 179, 26, 0),
('H5', 180, 26, 1),
('H5', 181, 26, 2),
('H5', 182, 27, 0),
('H5', 183, 27, 1),
('H5', 184, 27, 2),
('H5', 185, 27, 3),
('H5', 186, 28, 0),
('H5', 187, 28, 1),
('H5', 188, 28, 2),
('H5', 189, 28, 3),
('H5', 190, 29, 0),
('H5', 191, 29, 1),
('H5', 192, 29, 2),
('H5', 193, 29, 3),
('H5', 194, 30, 0),
('H5', 195, 30, 1),
('H5', 196, 30, 2),
('H5', 197, 30, 3),
('H5', 198, 30, 4),
('H5', 199, 30, 5),
('H5', 200, 30, 6),
('H5', 201, 30, 7),
('H5', 202, 30, 8),
('H5', 203, 30, 9),
('H5', 204, 30, 10),
('H5', 205, 30, 11),
('H5', 206, 30, 12),
('H5', 207, 30, 13),
('H5', 208, 30, 14),
('H5', 209, 30, 15),
('H5', 210, 31, 1),
('H5', 211, 31, 2),
('H5', 212, 31, 3),
('H5', 213, 31, 4),
('H5', 214, 32, 1),
('H5', 215, 32, 2),
('H5', 216, 32, 3),
('H5', 217, 32, 4),
('H5', 218, 32, 5),
('H5', 219, 32, 6),
('H5', 220, 33, 1),
('H5', 221, 33, 2),
('H5', 222, 33, 3),
('H5', 223, 34, 1),
('H5', 224, 34, 2),
('H5', 225, 34, 3),
('H5', 226, 35, 1),
('H5', 227, 35, 2),
('H5', 228, 35, 3),
('H5', 229, 36, 1),
('H5', 230, 36, 2),
('H5', 231, 36, 3),
('H5', 232, 36, 4),
('H5', 233, 36, 5),
('H5', 234, 36, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_role2profile`
--

DROP TABLE IF EXISTS `vtiger_role2profile`;
CREATE TABLE IF NOT EXISTS `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL,
  PRIMARY KEY  (`roleid`,`profileid`),
  KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_role2profile`
--

INSERT INTO `vtiger_role2profile` (`roleid`, `profileid`) VALUES
('H2', 1),
('H3', 2),
('H4', 2),
('H5', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_role_seq`
--

DROP TABLE IF EXISTS `vtiger_role_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_role_seq`
--

INSERT INTO `vtiger_role_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_rss`
--

DROP TABLE IF EXISTS `vtiger_rss`;
CREATE TABLE IF NOT EXISTS `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL default '',
  `rsstitle` varchar(200) default NULL,
  `rsstype` int(10) default '0',
  `starred` int(1) default '0',
  PRIMARY KEY  (`rssid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_rss`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salesmanactivityrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanactivityrel`;
CREATE TABLE IF NOT EXISTS `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL default '0',
  `activityid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`activityid`),
  KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  KEY `salesmanactivityrel_smid_idx` (`smid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salesmanactivityrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salesmanattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanattachmentsrel`;
CREATE TABLE IF NOT EXISTS `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL default '0',
  `attachmentsid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`attachmentsid`),
  KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salesmanattachmentsrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salesmanticketrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanticketrel`;
CREATE TABLE IF NOT EXISTS `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL default '0',
  `id` int(19) NOT NULL default '0',
  PRIMARY KEY  (`smid`,`id`),
  KEY `salesmanticketrel_smid_idx` (`smid`),
  KEY `salesmanticketrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salesmanticketrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salesorder`
--

DROP TABLE IF EXISTS `vtiger_salesorder`;
CREATE TABLE IF NOT EXISTS `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL default '0',
  `subject` varchar(100) default NULL,
  `potentialid` int(19) default NULL,
  `customerno` varchar(100) default NULL,
  `salesorder_no` varchar(100) default NULL,
  `quoteid` int(19) default NULL,
  `vendorterms` varchar(100) default NULL,
  `contactid` int(19) default NULL,
  `vendorid` int(19) default NULL,
  `duedate` date default NULL,
  `carrier` varchar(200) default NULL,
  `pending` varchar(200) default NULL,
  `type` varchar(100) default NULL,
  `adjustment` decimal(25,3) default NULL,
  `salescommission` decimal(25,3) default NULL,
  `exciseduty` decimal(25,3) default NULL,
  `total` decimal(25,3) default NULL,
  `subtotal` decimal(25,3) default NULL,
  `taxtype` varchar(25) default NULL,
  `discount_percent` decimal(25,3) default NULL,
  `discount_amount` decimal(25,3) default NULL,
  `s_h_amount` decimal(25,3) default NULL,
  `accountid` int(19) default NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) default NULL,
  `sostatus` varchar(200) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  `conversion_rate` decimal(10,3) NOT NULL default '1.000',
  `enable_recurring` int(11) default '0',
  PRIMARY KEY  (`salesorderid`),
  KEY `salesorder_vendorid_idx` (`vendorid`),
  KEY `salesorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salesorder`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salesordercf`
--

DROP TABLE IF EXISTS `vtiger_salesordercf`;
CREATE TABLE IF NOT EXISTS `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salesordercf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sales_stage`
--

DROP TABLE IF EXISTS `vtiger_sales_stage`;
CREATE TABLE IF NOT EXISTS `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL auto_increment,
  `sales_stage` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`sales_stage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `vtiger_sales_stage`
--

INSERT INTO `vtiger_sales_stage` (`sales_stage_id`, `sales_stage`, `presence`, `picklist_valueid`) VALUES
(1, 'Prospecting', 1, 150),
(2, 'Qualification', 1, 151),
(3, 'Needs Analysis', 1, 152),
(4, 'Value Proposition', 1, 153),
(5, 'Id. Decision Makers', 1, 154),
(6, 'Perception Analysis', 1, 155),
(7, 'Proposal/Price Quote', 1, 156),
(8, 'Negotiation/Review', 1, 157),
(9, 'Closed Won', 0, 158),
(10, 'Closed Lost', 0, 159);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sales_stage_seq`
--

DROP TABLE IF EXISTS `vtiger_sales_stage_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_sales_stage_seq`
--

INSERT INTO `vtiger_sales_stage_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salutationtype`
--

DROP TABLE IF EXISTS `vtiger_salutationtype`;
CREATE TABLE IF NOT EXISTS `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL auto_increment,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`salutationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_salutationtype`
--

INSERT INTO `vtiger_salutationtype` (`salutationid`, `salutationtype`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 160),
(2, 'Mr.', 1, 161),
(3, 'Ms.', 1, 162),
(4, 'Mrs.', 1, 163),
(5, 'Dr.', 1, 164),
(6, 'Prof.', 1, 165);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_salutationtype_seq`
--

DROP TABLE IF EXISTS `vtiger_salutationtype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_salutationtype_seq`
--

INSERT INTO `vtiger_salutationtype_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_seactivityrel`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel`;
CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  PRIMARY KEY  (`crmid`,`activityid`),
  KEY `seactivityrel_activityid_idx` (`activityid`),
  KEY `seactivityrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_seactivityrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_seactivityrel_seq`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_seactivityrel_seq`
--

INSERT INTO `vtiger_seactivityrel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_seattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_seattachmentsrel`;
CREATE TABLE IF NOT EXISTS `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL default '0',
  `attachmentsid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`attachmentsid`),
  KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  KEY `seattachmentsrel_crmid_idx` (`crmid`),
  KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_seattachmentsrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_selectcolumn`
--

DROP TABLE IF EXISTS `vtiger_selectcolumn`;
CREATE TABLE IF NOT EXISTS `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL default '0',
  `columnname` varchar(250) default '',
  PRIMARY KEY  (`queryid`,`columnindex`),
  KEY `selectcolumn_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_selectcolumn`
--

INSERT INTO `vtiger_selectcolumn` (`queryid`, `columnindex`, `columnname`) VALUES
(1, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(1, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(1, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(1, 3, 'vtiger_accountContacts:accountname:Contacts_Account_Name:account_id:V'),
(1, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(1, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(2, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(2, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(2, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(2, 3, 'vtiger_accountContacts:accountname:Contacts_Account_Name:account_id:V'),
(2, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(2, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(3, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(3, 2, 'vtiger_accountContacts:accountname:Contacts_Account_Name:account_id:V'),
(3, 3, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 4, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(3, 5, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(4, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(4, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(4, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(4, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(4, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(5, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(5, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(5, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(5, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),
(6, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(6, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(6, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(6, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(6, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(7, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(7, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(7, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(7, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(7, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(8, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(8, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(8, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(8, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(8, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(9, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(9, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(9, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(9, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(9, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(10, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(10, 1, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(10, 2, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(10, 3, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(10, 4, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(10, 5, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(11, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(11, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(11, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(11, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(11, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(11, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(12, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(12, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(12, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(12, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(12, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(12, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(13, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(13, 1, 'vtiger_products:productcode:Products_Product_Code:productcode:V'),
(13, 2, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(13, 3, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(13, 4, 'vtiger_products:website:Products_Website:website:V'),
(13, 5, 'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),
(13, 6, 'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),
(14, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(14, 1, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(14, 2, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(14, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(14, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(14, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(15, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(15, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(15, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(15, 3, 'vtiger_contactdetailsQuotes:lastname:Quotes_Contact_Name:contact_id:V'),
(15, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(15, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(16, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(16, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(16, 3, 'vtiger_contactdetailsQuotes:lastname:Quotes_Contact_Name:contact_id:V'),
(16, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(16, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 6, 'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),
(16, 7, 'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),
(17, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(17, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(17, 2, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(17, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(17, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(17, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(17, 6, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(18, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(18, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(18, 2, 'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),
(18, 3, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(18, 4, 'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),
(18, 5, 'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),
(18, 6, 'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),
(18, 7, 'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),
(18, 8, 'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),
(19, 0, 'vtiger_invoice:subject:Invoice_Subject:subject:V'),
(19, 1, 'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),
(19, 2, 'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),
(19, 3, 'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),
(19, 4, 'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),
(19, 5, 'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),
(20, 0, 'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),
(20, 1, 'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),
(20, 2, 'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),
(20, 3, 'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),
(20, 4, 'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),
(20, 5, 'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),
(20, 6, 'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),
(20, 7, 'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),
(20, 8, 'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),
(20, 9, 'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),
(21, 0, 'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),
(21, 1, 'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),
(21, 2, 'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),
(21, 3, 'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),
(21, 4, 'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),
(21, 5, 'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),
(21, 6, 'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),
(21, 7, 'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),
(21, 8, 'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_selectquery`
--

DROP TABLE IF EXISTS `vtiger_selectquery`;
CREATE TABLE IF NOT EXISTS `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) default '0',
  `numofobjects` int(19) default '0',
  PRIMARY KEY  (`queryid`),
  KEY `selectquery_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_selectquery`
--

INSERT INTO `vtiger_selectquery` (`queryid`, `startindex`, `numofobjects`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_selectquery_seq`
--

DROP TABLE IF EXISTS `vtiger_selectquery_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_selectquery_seq`
--

INSERT INTO `vtiger_selectquery_seq` (`id`) VALUES
(21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_senotesrel`
--

DROP TABLE IF EXISTS `vtiger_senotesrel`;
CREATE TABLE IF NOT EXISTS `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL default '0',
  `notesid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`notesid`),
  KEY `senotesrel_notesid_idx` (`notesid`),
  KEY `senotesrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_senotesrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_seproductsrel`
--

DROP TABLE IF EXISTS `vtiger_seproductsrel`;
CREATE TABLE IF NOT EXISTS `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL default '0',
  `productid` int(19) NOT NULL default '0',
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY  (`crmid`,`productid`),
  KEY `seproductsrel_productid_idx` (`productid`),
  KEY `seproductrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_seproductsrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_service`
--

DROP TABLE IF EXISTS `vtiger_service`;
CREATE TABLE IF NOT EXISTS `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) default NULL,
  `qty_per_unit` decimal(11,2) default '0.00',
  `unit_price` decimal(25,2) default NULL,
  `sales_start_date` date default NULL,
  `sales_end_date` date default NULL,
  `start_date` date default NULL,
  `expiry_date` date default NULL,
  `discontinued` int(1) NOT NULL default '0',
  `service_usageunit` varchar(200) default NULL,
  `handler` int(11) default NULL,
  `website` varchar(100) default NULL,
  `taxclass` varchar(200) default NULL,
  `currency_id` int(19) NOT NULL default '1',
  `commissionrate` decimal(7,3) default NULL,
  PRIMARY KEY  (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_service`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_servicecategory`
--

DROP TABLE IF EXISTS `vtiger_servicecategory`;
CREATE TABLE IF NOT EXISTS `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL auto_increment,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`servicecategoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_servicecategory`
--

INSERT INTO `vtiger_servicecategory` (`servicecategoryid`, `servicecategory`, `presence`, `picklist_valueid`) VALUES
(1, '--None--', 1, 229),
(2, 'Support', 1, 230),
(3, 'Installation', 1, 231),
(4, 'Migration', 1, 232),
(5, 'Customization', 1, 233),
(6, 'Training', 1, 234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_servicecategory_seq`
--

DROP TABLE IF EXISTS `vtiger_servicecategory_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_servicecategory_seq`
--

INSERT INTO `vtiger_servicecategory_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_servicecf`
--

DROP TABLE IF EXISTS `vtiger_servicecf`;
CREATE TABLE IF NOT EXISTS `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_servicecf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_servicecontracts`
--

DROP TABLE IF EXISTS `vtiger_servicecontracts`;
CREATE TABLE IF NOT EXISTS `vtiger_servicecontracts` (
  `servicecontractsid` int(11) default NULL,
  `start_date` varchar(100) default NULL,
  `end_date` varchar(100) default NULL,
  `sc_related_to` int(11) default NULL,
  `tracking_unit` varchar(100) default NULL,
  `total_units` varchar(100) default NULL,
  `used_units` varchar(100) default NULL,
  `subject` varchar(100) default NULL,
  `due_date` date default NULL,
  `planned_duration` varchar(256) default NULL,
  `actual_duration` varchar(256) default NULL,
  `contract_status` varchar(200) default NULL,
  `priority` varchar(200) default NULL,
  `contract_type` varchar(200) default NULL,
  `progress` decimal(5,2) default NULL,
  `contract_no` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_servicecontracts`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_servicecontractscf`
--

DROP TABLE IF EXISTS `vtiger_servicecontractscf`;
CREATE TABLE IF NOT EXISTS `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL,
  PRIMARY KEY  (`servicecontractsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_servicecontractscf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_service_usageunit`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit`;
CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL auto_increment,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`service_usageunitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_service_usageunit`
--

INSERT INTO `vtiger_service_usageunit` (`service_usageunitid`, `service_usageunit`, `presence`, `picklist_valueid`) VALUES
(1, 'Hours', 1, 226),
(2, 'Days', 1, 227),
(3, 'Incidents', 1, 228);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_service_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_service_usageunit_seq`
--

INSERT INTO `vtiger_service_usageunit_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_seticketsrel`
--

DROP TABLE IF EXISTS `vtiger_seticketsrel`;
CREATE TABLE IF NOT EXISTS `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL default '0',
  `ticketid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`crmid`,`ticketid`),
  KEY `seticketsrel_crmid_idx` (`crmid`),
  KEY `seticketsrel_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_seticketsrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_settings_blocks`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks`;
CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) default NULL,
  `sequence` int(19) default NULL,
  PRIMARY KEY  (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_settings_blocks`
--

INSERT INTO `vtiger_settings_blocks` (`blockid`, `label`, `sequence`) VALUES
(1, 'LBL_MODULE_MANAGER', 1),
(2, 'LBL_USER_MANAGEMENT', 2),
(3, 'LBL_STUDIO', 3),
(4, 'LBL_COMMUNICATION_TEMPLATES', 4),
(5, 'LBL_OTHER_SETTINGS', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_settings_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_settings_blocks_seq`
--

INSERT INTO `vtiger_settings_blocks_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_settings_field`
--

DROP TABLE IF EXISTS `vtiger_settings_field`;
CREATE TABLE IF NOT EXISTS `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) default NULL,
  `name` varchar(250) default NULL,
  `iconpath` varchar(300) default NULL,
  `description` text,
  `linkto` text,
  `sequence` int(19) default NULL,
  `active` int(19) default '0',
  PRIMARY KEY  (`fieldid`),
  KEY `fk_1_vtiger_settings_field` (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_settings_field`
--

INSERT INTO `vtiger_settings_field` (`fieldid`, `blockid`, `name`, `iconpath`, `description`, `linkto`, `sequence`, `active`) VALUES
(1, 2, 'LBL_USERS', 'ico-users.gif', 'LBL_USER_DESCRIPTION', 'index.php?module=Administration&action=index&parenttab=Settings', 1, 0),
(2, 2, 'LBL_ROLES', 'ico-roles.gif', 'LBL_ROLE_DESCRIPTION', 'index.php?module=Settings&action=listroles&parenttab=Settings', 2, 0),
(3, 2, 'LBL_PROFILES', 'ico-profile.gif', 'LBL_PROFILE_DESCRIPTION', 'index.php?module=Settings&action=ListProfiles&parenttab=Settings', 3, 0),
(4, 2, 'USERGROUPLIST', 'ico-groups.gif', 'LBL_GROUP_DESCRIPTION', 'index.php?module=Settings&action=listgroups&parenttab=Settings', 4, 0),
(5, 2, 'LBL_SHARING_ACCESS', 'shareaccess.gif', 'LBL_SHARING_ACCESS_DESCRIPTION', 'index.php?module=Settings&action=OrgSharingDetailView&parenttab=Settings', 5, 0),
(6, 2, 'LBL_FIELDS_ACCESS', 'orgshar.gif', 'LBL_SHARING_FIELDS_DESCRIPTION', 'index.php?module=Settings&action=DefaultFieldPermissions&parenttab=Settings', 6, 0),
(7, 2, 'LBL_AUDIT_TRAIL', 'audit.gif', 'LBL_AUDIT_DESCRIPTION', 'index.php?module=Settings&action=AuditTrailList&parenttab=Settings', 7, 0),
(8, 2, 'LBL_LOGIN_HISTORY_DETAILS', 'set-IcoLoginHistory.gif', 'LBL_LOGIN_HISTORY_DESCRIPTION', 'index.php?module=Settings&action=ListLoginHistory&parenttab=Settings', 8, 0),
(9, 3, 'VTLIB_LBL_MODULE_MANAGER', 'vtlib_modmng.gif', 'VTLIB_LBL_MODULE_MANAGER_DESCRIPTION', 'index.php?module=Settings&action=ModuleManager&parenttab=Settings', 1, 0),
(10, 3, 'LBL_PICKLIST_EDITOR', 'picklist.gif', 'LBL_PICKLIST_DESCRIPTION', 'index.php?module=PickList&action=PickList&parenttab=Settings', 2, 0),
(11, 4, 'EMAILTEMPLATES', 'ViewTemplate.gif', 'LBL_EMAIL_TEMPLATE_DESCRIPTION', 'index.php?module=Settings&action=listemailtemplates&parenttab=Settings', 3, 0),
(12, 4, 'LBL_MAIL_MERGE', 'mailmarge.gif', 'LBL_MAIL_MERGE_DESCRIPTION', 'index.php?module=Settings&action=listwordtemplates&parenttab=Settings', 4, 0),
(13, 4, 'NOTIFICATIONSCHEDULERS', 'notification.gif', 'LBL_NOTIF_SCHED_DESCRIPTION', 'index.php?module=Settings&action=listnotificationschedulers&parenttab=Settings', 1, 0),
(14, 4, 'INVENTORYNOTIFICATION', 'inventory.gif', 'LBL_INV_NOTIF_DESCRIPTION', 'index.php?module=Settings&action=listinventorynotifications&parenttab=Settings', 2, 0),
(15, 4, 'LBL_COMPANY_DETAILS', 'company.gif', 'LBL_COMPANY_DESCRIPTION', 'index.php?module=Settings&action=OrganizationConfig&parenttab=Settings', 3, 0),
(16, 5, 'LBL_MAIL_SERVER_SETTINGS', 'ogmailserver.gif', 'LBL_MAIL_SERVER_DESCRIPTION', 'index.php?module=Settings&action=EmailConfig&parenttab=Settings', 4, 0),
(17, 5, 'LBL_BACKUP_SERVER_SETTINGS', 'backupserver.gif', 'LBL_BACKUP_SERVER_DESCRIPTION', 'index.php?module=Settings&action=BackupServerConfig&parenttab=Settings', 5, 0),
(18, 5, 'LBL_ASSIGN_MODULE_OWNERS', 'assign.gif', 'LBL_MODULE_OWNERS_DESCRIPTION', 'index.php?module=Settings&action=ListModuleOwners&parenttab=Settings', 6, 0),
(19, 5, 'LBL_CURRENCY_SETTINGS', 'currency.gif', 'LBL_CURRENCY_DESCRIPTION', 'index.php?module=Settings&action=CurrencyListView&parenttab=Settings', 1, 0),
(20, 5, 'LBL_TAX_SETTINGS', 'taxConfiguration.gif', 'LBL_TAX_DESCRIPTION', 'index.php?module=Settings&action=TaxConfig&parenttab=Settings', 2, 0),
(21, 5, 'LBL_SYSTEM_INFO', 'system.gif', 'LBL_SYSTEM_DESCRIPTION', 'index.php?module=System&action=listsysconfig&parenttab=Settings', 3, 1),
(22, 5, 'LBL_PROXY_SETTINGS', 'proxy.gif', 'LBL_PROXY_DESCRIPTION', 'index.php?module=Settings&action=ProxyServerConfig&parenttab=Settings', 4, 0),
(23, 5, 'LBL_ANNOUNCEMENT', 'announ.gif', 'LBL_ANNOUNCEMENT_DESCRIPTION', 'index.php?module=Settings&action=Announcements&parenttab=Settings', 5, 0),
(24, 5, 'LBL_DEFAULT_MODULE_VIEW', 'set-IcoTwoTabConfig.gif', 'LBL_DEFAULT_MODULE_VIEW_DESC', 'index.php?module=Settings&action=DefModuleView&parenttab=Settings', 6, 0),
(25, 5, 'INVENTORYTERMSANDCONDITIONS', 'terms.gif', 'LBL_INV_TANDC_DESCRIPTION', 'index.php?module=Settings&action=OrganizationTermsandConditions&parenttab=Settings', 7, 0),
(26, 5, 'LBL_CUSTOMIZE_MODENT_NUMBER', 'settingsInvNumber.gif', 'LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION', 'index.php?module=Settings&action=CustomModEntityNo&parenttab=Settings', 8, 0),
(27, 5, 'LBL_MAIL_SCANNER', 'mailScanner.gif', 'LBL_MAIL_SCANNER_DESCRIPTION', 'index.php?module=Settings&action=MailScanner&parenttab=Settings', 9, 0),
(28, 5, 'LBL_LIST_WORKFLOWS', 'settingsWorkflow.png', 'LBL_LIST_WORKFLOWS_DESCRIPTION', 'index.php?module=com_vtiger_workflow&action=workflowlist&parenttab=Settings', 10, 0),
(29, 1, 'LBL_WORKFLOW_LIST', 'settingsWorkflow.png', 'LBL_AVAILABLE_WORKLIST_LIST', 'index.php?module=com_vtiger_workflow&action=workflowlist', 1, 0),
(30, 1, 'LBL_FIELDFORMULAS', 'modules/FieldFormulas/resources/FieldFormulas.png', 'LBL_FIELDFORMULAS_DESCRIPTION', 'index.php?module=FieldFormulas&action=index&parenttab=Settings', 11, 0),
(31, 5, 'LBL_CUSTOMER_PORTAL', 'portal_icon.png', 'PORTAL_EXTENSION_DESCRIPTION', 'index.php?module=CustomerPortal&action=index&parenttab=Settings', 11, 0),
(32, 1, 'LBL_TOOLTIP_MANAGEMENT', 'quickview.png', 'LBL_TOOLTIP_MANAGEMENT_DESCRIPTION', 'index.php?module=Tooltip&action=QuickView&parenttab=Settings', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_settings_field_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_field_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_settings_field_seq`
--

INSERT INTO `vtiger_settings_field_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sharedcalendar`
--

DROP TABLE IF EXISTS `vtiger_sharedcalendar`;
CREATE TABLE IF NOT EXISTS `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`sharedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_sharedcalendar`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_shippingtaxinfo`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo`;
CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) default NULL,
  `taxlabel` varchar(50) default NULL,
  `percentage` decimal(7,3) default NULL,
  `deleted` int(1) default NULL,
  PRIMARY KEY  (`taxid`),
  KEY `shippingtaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_shippingtaxinfo`
--

INSERT INTO `vtiger_shippingtaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'shtax1', 'VAT', 4.500, 0),
(2, 'shtax2', 'Sales', 10.000, 0),
(3, 'shtax3', 'Service', 12.500, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_shippingtaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_shippingtaxinfo_seq`
--

INSERT INTO `vtiger_shippingtaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_soapservice`
--

DROP TABLE IF EXISTS `vtiger_soapservice`;
CREATE TABLE IF NOT EXISTS `vtiger_soapservice` (
  `id` int(19) default NULL,
  `type` varchar(25) default NULL,
  `sessionid` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_soapservice`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sobillads`
--

DROP TABLE IF EXISTS `vtiger_sobillads`;
CREATE TABLE IF NOT EXISTS `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL default '0',
  `bill_city` varchar(30) default NULL,
  `bill_code` varchar(30) default NULL,
  `bill_country` varchar(30) default NULL,
  `bill_state` varchar(30) default NULL,
  `bill_street` varchar(250) default NULL,
  `bill_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`sobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_sobillads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_soshipads`
--

DROP TABLE IF EXISTS `vtiger_soshipads`;
CREATE TABLE IF NOT EXISTS `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL default '0',
  `ship_city` varchar(30) default NULL,
  `ship_code` varchar(30) default NULL,
  `ship_country` varchar(30) default NULL,
  `ship_state` varchar(30) default NULL,
  `ship_street` varchar(250) default NULL,
  `ship_pobox` varchar(30) default NULL,
  PRIMARY KEY  (`soshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_soshipads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sostatus`
--

DROP TABLE IF EXISTS `vtiger_sostatus`;
CREATE TABLE IF NOT EXISTS `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL auto_increment,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`sostatusid`),
  UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_sostatus`
--

INSERT INTO `vtiger_sostatus` (`sostatusid`, `sostatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Created', 0, 166),
(2, 'Approved', 0, 167),
(3, 'Delivered', 0, 168),
(4, 'Cancelled', 0, 169);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sostatushistory`
--

DROP TABLE IF EXISTS `vtiger_sostatushistory`;
CREATE TABLE IF NOT EXISTS `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL auto_increment,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) default NULL,
  `total` decimal(10,0) default NULL,
  `sostatus` varchar(200) default NULL,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`historyid`),
  KEY `sostatushistory_salesorderid_idx` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_sostatushistory`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_sostatus_seq`
--

DROP TABLE IF EXISTS `vtiger_sostatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_sostatus_seq`
--

INSERT INTO `vtiger_sostatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_status`
--

DROP TABLE IF EXISTS `vtiger_status`;
CREATE TABLE IF NOT EXISTS `vtiger_status` (
  `statusid` int(19) NOT NULL auto_increment,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_status`
--

INSERT INTO `vtiger_status` (`statusid`, `status`, `presence`, `picklist_valueid`) VALUES
(1, 'Active', 0, 1),
(2, 'Inactive', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_status_seq`
--

DROP TABLE IF EXISTS `vtiger_status_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_status_seq`
--

INSERT INTO `vtiger_status_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_systems`
--

DROP TABLE IF EXISTS `vtiger_systems`;
CREATE TABLE IF NOT EXISTS `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) default NULL,
  `server_port` int(19) default NULL,
  `server_username` varchar(100) default NULL,
  `server_password` varchar(100) default NULL,
  `server_type` varchar(20) default NULL,
  `smtp_auth` varchar(5) default NULL,
  `server_path` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_systems`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tab`
--

DROP TABLE IF EXISTS `vtiger_tab`;
CREATE TABLE IF NOT EXISTS `vtiger_tab` (
  `tabid` int(19) NOT NULL default '0',
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL default '1',
  `tabsequence` int(10) default NULL,
  `tablabel` varchar(25) NOT NULL,
  `modifiedby` int(19) default NULL,
  `modifiedtime` int(19) default NULL,
  `customized` int(19) default NULL,
  `ownedby` int(19) default NULL,
  `isentitytype` int(11) NOT NULL default '1',
  `version` varchar(10) default NULL,
  PRIMARY KEY  (`tabid`),
  UNIQUE KEY `tab_name_idx` (`name`),
  KEY `tab_modifiedby_idx` (`modifiedby`),
  KEY `tab_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tab`
--

INSERT INTO `vtiger_tab` (`tabid`, `name`, `presence`, `tabsequence`, `tablabel`, `modifiedby`, `modifiedtime`, `customized`, `ownedby`, `isentitytype`, `version`) VALUES
(1, 'Dashboard', 0, 12, 'Dashboards', NULL, NULL, 0, 1, 0, NULL),
(2, 'Potentials', 0, 7, 'Potentials', NULL, NULL, 0, 0, 1, NULL),
(3, 'Home', 0, 1, 'Home', NULL, NULL, 0, 1, 0, NULL),
(4, 'Contacts', 0, 6, 'Contacts', NULL, NULL, 0, 0, 1, NULL),
(6, 'Accounts', 0, 5, 'Accounts', NULL, NULL, 0, 0, 1, NULL),
(7, 'Leads', 0, 4, 'Leads', NULL, NULL, 0, 0, 1, NULL),
(8, 'Documents', 0, 9, 'Documents', NULL, NULL, 0, 0, 1, NULL),
(9, 'Calendar', 0, 3, 'Calendar', NULL, NULL, 0, 0, 1, NULL),
(10, 'Emails', 0, 10, 'Emails', NULL, NULL, 0, 1, 1, NULL),
(13, 'HelpDesk', 0, 11, 'HelpDesk', NULL, NULL, 0, 0, 1, NULL),
(14, 'Products', 0, 8, 'Products', NULL, NULL, 0, 1, 1, NULL),
(15, 'Faq', 0, 14, 'Faq', NULL, NULL, 0, 1, 1, NULL),
(16, 'Events', 2, 13, 'Events', NULL, NULL, 0, 0, 1, NULL),
(18, 'Vendors', 0, 15, 'Vendors', NULL, NULL, 0, 1, 1, NULL),
(19, 'PriceBooks', 0, 16, 'PriceBooks', NULL, NULL, 0, 1, 1, NULL),
(20, 'Quotes', 0, 17, 'Quotes', NULL, NULL, 0, 0, 1, NULL),
(21, 'PurchaseOrder', 0, 18, 'PurchaseOrder', NULL, NULL, 0, 0, 1, NULL),
(22, 'SalesOrder', 0, 19, 'SalesOrder', NULL, NULL, 0, 0, 1, NULL),
(23, 'Invoice', 0, 20, 'Invoice', NULL, NULL, 0, 0, 1, NULL),
(24, 'Rss', 0, 21, 'Rss', NULL, NULL, 0, 1, 0, NULL),
(25, 'Reports', 0, 22, 'Reports', NULL, NULL, 0, 1, 0, NULL),
(26, 'Campaigns', 0, 23, 'Campaigns', NULL, NULL, 0, 0, 1, NULL),
(27, 'Portal', 0, 24, 'Portal', NULL, NULL, 0, 1, 0, NULL),
(28, 'Webmails', 0, 25, 'Webmails', NULL, NULL, 0, 1, 1, NULL),
(29, 'Users', 0, 26, 'Users', NULL, NULL, 0, 1, 0, NULL),
(30, 'ServiceContracts', 0, 27, 'Service Contracts', NULL, NULL, 0, 0, 1, '0'),
(31, 'Services', 0, 28, 'Services', NULL, NULL, 0, 1, 1, '0'),
(32, 'PBXManager', 0, 29, 'PBXManager', NULL, NULL, 0, 0, 1, '1.1'),
(33, 'Webforms', 0, 30, 'Webforms', NULL, NULL, 0, 0, 0, '0.1'),
(34, 'FieldFormulas', 0, 31, 'Field Formulas', NULL, NULL, 0, 0, 0, '1.0'),
(35, 'CustomerPortal', 0, 32, 'CustomerPortal', NULL, NULL, 0, 0, 0, '1.1'),
(36, 'RecycleBin', 0, 33, 'Recycle Bin', NULL, NULL, 0, 0, 0, '1.0'),
(37, 'Tooltip', 0, 34, 'Tool Tip', NULL, NULL, 0, 0, 0, '1.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taskpriority`
--

DROP TABLE IF EXISTS `vtiger_taskpriority`;
CREATE TABLE IF NOT EXISTS `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL auto_increment,
  `taskpriority` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`taskpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_taskpriority`
--

INSERT INTO `vtiger_taskpriority` (`taskpriorityid`, `taskpriority`, `presence`, `picklist_valueid`) VALUES
(1, 'High', 1, 170),
(2, 'Medium', 1, 171),
(3, 'Low', 1, 172);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taskpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_taskpriority_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_taskpriority_seq`
--

INSERT INTO `vtiger_taskpriority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taskstatus`
--

DROP TABLE IF EXISTS `vtiger_taskstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL auto_increment,
  `taskstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`taskstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `vtiger_taskstatus`
--

INSERT INTO `vtiger_taskstatus` (`taskstatusid`, `taskstatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Not Started', 0, 173),
(2, 'In Progress', 0, 174),
(3, 'Completed', 0, 175),
(4, 'Pending Input', 0, 176),
(5, 'Deferred', 0, 177),
(6, 'Planned', 0, 178);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taskstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_taskstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_taskstatus_seq`
--

INSERT INTO `vtiger_taskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taxclass`
--

DROP TABLE IF EXISTS `vtiger_taxclass`;
CREATE TABLE IF NOT EXISTS `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL auto_increment,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`taxclassid`),
  UNIQUE KEY `taxclass_carrier_idx` (`taxclass`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_taxclass`
--

INSERT INTO `vtiger_taxclass` (`taxclassid`, `taxclass`, `sortorderid`, `presence`) VALUES
(1, 'SalesTax', 0, 1),
(2, 'Vat', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_taxclass_seq`
--

DROP TABLE IF EXISTS `vtiger_taxclass_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_taxclass_seq`
--

INSERT INTO `vtiger_taxclass_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketcategories`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL auto_increment,
  `ticketcategories` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`ticketcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_ticketcategories`
--

INSERT INTO `vtiger_ticketcategories` (`ticketcategories_id`, `ticketcategories`, `presence`, `picklist_valueid`) VALUES
(1, 'Big Problem', 1, 179),
(2, 'Small Problem', 1, 180),
(3, 'Other Problem', 1, 181);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketcategories_seq`
--

INSERT INTO `vtiger_ticketcategories_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketcf`
--

DROP TABLE IF EXISTS `vtiger_ticketcf`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketcf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketcomments`
--

DROP TABLE IF EXISTS `vtiger_ticketcomments`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL auto_increment,
  `ticketid` int(19) default NULL,
  `comments` text,
  `ownerid` int(19) NOT NULL default '0',
  `ownertype` varchar(10) default NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY  (`commentid`),
  KEY `ticketcomments_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_ticketcomments`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketpriorities`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL auto_increment,
  `ticketpriorities` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`ticketpriorities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_ticketpriorities`
--

INSERT INTO `vtiger_ticketpriorities` (`ticketpriorities_id`, `ticketpriorities`, `presence`, `picklist_valueid`) VALUES
(1, 'Low', 1, 182),
(2, 'Normal', 1, 183),
(3, 'High', 1, 184),
(4, 'Urgent', 1, 185);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketpriorities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketpriorities_seq`
--

INSERT INTO `vtiger_ticketpriorities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketseverities`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL auto_increment,
  `ticketseverities` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`ticketseverities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_ticketseverities`
--

INSERT INTO `vtiger_ticketseverities` (`ticketseverities_id`, `ticketseverities`, `presence`, `picklist_valueid`) VALUES
(1, 'Minor', 1, 186),
(2, 'Major', 1, 187),
(3, 'Feature', 1, 188),
(4, 'Critical', 1, 189);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketseverities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketseverities_seq`
--

INSERT INTO `vtiger_ticketseverities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketstatus`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL auto_increment,
  `ticketstatus` varchar(200) default NULL,
  `presence` int(1) NOT NULL default '0',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`ticketstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_ticketstatus`
--

INSERT INTO `vtiger_ticketstatus` (`ticketstatus_id`, `ticketstatus`, `presence`, `picklist_valueid`) VALUES
(1, 'Open', 0, 190),
(2, 'In Progress', 0, 191),
(3, 'Wait For Response', 0, 192),
(4, 'Closed', 0, 193);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketstatus_seq`
--

INSERT INTO `vtiger_ticketstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ticketstracktime`
--

DROP TABLE IF EXISTS `vtiger_ticketstracktime`;
CREATE TABLE IF NOT EXISTS `vtiger_ticketstracktime` (
  `ticket_id` int(11) NOT NULL default '0',
  `supporter_id` int(11) NOT NULL default '0',
  `minutes` int(11) default '0',
  `date_logged` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ticket_id`),
  KEY `ticketstracktime_ticket_id_idx` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ticketstracktime`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_read_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_rel_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_read_group_rel_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_read_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_read_group_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_read_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_rel_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_read_user_rel_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_read_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_read_user_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_write_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_rel_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_write_group_rel_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_write_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_write_group_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_write_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_rel_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_write_user_rel_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tmp_write_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_sharing_per`;
CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tmp_write_user_sharing_per`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tracker`
--

DROP TABLE IF EXISTS `vtiger_tracker`;
CREATE TABLE IF NOT EXISTS `vtiger_tracker` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `module_name` varchar(25) default NULL,
  `item_id` varchar(36) default NULL,
  `item_summary` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `vtiger_tracker`
--

INSERT INTO `vtiger_tracker` (`id`, `user_id`, `module_name`, `item_id`, `item_summary`) VALUES
(3, '1', 'Users', '1', 'Administrator ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tracking_unit`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit`;
CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL auto_increment,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tracking_unitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `vtiger_tracking_unit`
--

INSERT INTO `vtiger_tracking_unit` (`tracking_unitid`, `tracking_unit`, `presence`, `picklist_valueid`) VALUES
(1, 'None', 1, 210),
(2, 'Hours', 1, 211),
(3, 'Days', 1, 212),
(4, 'Incidents', 1, 213);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_tracking_unit_seq`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_tracking_unit_seq`
--

INSERT INTO `vtiger_tracking_unit_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_troubletickets`
--

DROP TABLE IF EXISTS `vtiger_troubletickets`;
CREATE TABLE IF NOT EXISTS `vtiger_troubletickets` (
  `ticketid` int(19) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `groupname` varchar(100) default NULL,
  `parent_id` varchar(100) default NULL,
  `product_id` varchar(100) default NULL,
  `priority` varchar(200) default NULL,
  `severity` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `category` varchar(200) default NULL,
  `title` varchar(255) NOT NULL,
  `solution` text,
  `update_log` text,
  `version_id` int(11) default NULL,
  `hours` varchar(200) default NULL,
  `days` varchar(200) default NULL,
  PRIMARY KEY  (`ticketid`),
  KEY `troubletickets_ticketid_idx` (`ticketid`),
  KEY `troubletickets_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_troubletickets`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_usageunit`
--

DROP TABLE IF EXISTS `vtiger_usageunit`;
CREATE TABLE IF NOT EXISTS `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL auto_increment,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL default '1',
  `picklist_valueid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`usageunitid`),
  UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `vtiger_usageunit`
--

INSERT INTO `vtiger_usageunit` (`usageunitid`, `usageunit`, `presence`, `picklist_valueid`) VALUES
(1, 'Box', 1, 194),
(2, 'Carton', 1, 195),
(3, 'Dozen', 1, 196),
(4, 'Each', 1, 197),
(5, 'Hours', 1, 198),
(6, 'Impressions', 1, 199),
(7, 'Lb', 1, 200),
(8, 'M', 1, 201),
(9, 'Pack', 1, 202),
(10, 'Pages', 1, 203),
(11, 'Pieces', 1, 204),
(12, 'Quantity', 1, 205),
(13, 'Reams', 1, 206),
(14, 'Sheet', 1, 207),
(15, 'Spiral Binder', 1, 208),
(16, 'Sq Ft', 1, 209);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_usageunit_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_usageunit_seq`
--

INSERT INTO `vtiger_usageunit_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_user2mergefields`
--

DROP TABLE IF EXISTS `vtiger_user2mergefields`;
CREATE TABLE IF NOT EXISTS `vtiger_user2mergefields` (
  `userid` int(11) default NULL,
  `tabid` int(19) default NULL,
  `fieldid` int(19) default NULL,
  `visible` int(2) default NULL,
  KEY `userid_tabid_idx` (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_user2mergefields`
--

INSERT INTO `vtiger_user2mergefields` (`userid`, `tabid`, `fieldid`, `visible`) VALUES
(0, 2, 107, 1),
(0, 2, 110, 1),
(0, 2, 111, 1),
(0, 2, 115, 1),
(0, 2, 116, 1),
(0, 4, 68, 1),
(0, 4, 85, 1),
(0, 6, 1, 1),
(0, 6, 20, 1),
(0, 7, 40, 1),
(0, 7, 42, 1),
(0, 7, 53, 1),
(0, 8, 193, 1),
(0, 8, 197, 1),
(0, 9, 219, 1),
(0, 9, 220, 1),
(0, 9, 221, 1),
(0, 9, 224, 1),
(0, 9, 227, 1),
(0, 9, 228, 1),
(0, 10, 207, 1),
(0, 10, 211, 1),
(0, 10, 212, 1),
(0, 10, 490, 1),
(0, 10, 491, 1),
(0, 13, 147, 1),
(0, 13, 152, 1),
(0, 13, 159, 1),
(0, 14, 163, 1),
(0, 15, 267, 1),
(0, 15, 268, 1),
(0, 15, 269, 1),
(0, 16, 242, 1),
(0, 16, 243, 1),
(0, 16, 244, 1),
(0, 16, 245, 1),
(0, 16, 246, 1),
(0, 16, 247, 1),
(0, 16, 249, 1),
(0, 16, 252, 1),
(0, 16, 254, 1),
(0, 18, 273, 1),
(0, 19, 289, 1),
(0, 19, 294, 1),
(0, 20, 297, 1),
(0, 20, 299, 1),
(0, 20, 312, 1),
(0, 20, 313, 1),
(0, 20, 318, 1),
(0, 20, 319, 1),
(0, 21, 333, 1),
(0, 21, 334, 1),
(0, 21, 349, 1),
(0, 21, 350, 1),
(0, 21, 355, 1),
(0, 21, 356, 1),
(0, 22, 370, 1),
(0, 22, 379, 1),
(0, 22, 389, 1),
(0, 22, 390, 1),
(0, 22, 395, 1),
(0, 22, 396, 1),
(0, 22, 414, 1),
(0, 23, 415, 1),
(0, 23, 431, 1),
(0, 23, 433, 1),
(0, 23, 438, 1),
(0, 23, 439, 1),
(0, 26, 122, 1),
(0, 26, 127, 1),
(0, 26, 128, 1),
(1, 2, 107, 1),
(1, 2, 110, 1),
(1, 2, 111, 1),
(1, 2, 115, 1),
(1, 2, 116, 1),
(1, 4, 68, 1),
(1, 4, 85, 1),
(1, 6, 1, 1),
(1, 6, 20, 1),
(1, 7, 40, 1),
(1, 7, 42, 1),
(1, 7, 53, 1),
(1, 8, 193, 1),
(1, 8, 197, 1),
(1, 9, 219, 1),
(1, 9, 220, 1),
(1, 9, 221, 1),
(1, 9, 224, 1),
(1, 9, 227, 1),
(1, 9, 228, 1),
(1, 10, 207, 1),
(1, 10, 211, 1),
(1, 10, 212, 1),
(1, 10, 490, 1),
(1, 10, 491, 1),
(1, 13, 147, 1),
(1, 13, 152, 1),
(1, 13, 159, 1),
(1, 14, 163, 1),
(1, 15, 267, 1),
(1, 15, 268, 1),
(1, 15, 269, 1),
(1, 16, 242, 1),
(1, 16, 243, 1),
(1, 16, 244, 1),
(1, 16, 245, 1),
(1, 16, 246, 1),
(1, 16, 247, 1),
(1, 16, 249, 1),
(1, 16, 252, 1),
(1, 16, 254, 1),
(1, 18, 273, 1),
(1, 19, 289, 1),
(1, 19, 294, 1),
(1, 20, 297, 1),
(1, 20, 299, 1),
(1, 20, 312, 1),
(1, 20, 313, 1),
(1, 20, 318, 1),
(1, 20, 319, 1),
(1, 21, 333, 1),
(1, 21, 334, 1),
(1, 21, 349, 1),
(1, 21, 350, 1),
(1, 21, 355, 1),
(1, 21, 356, 1),
(1, 22, 370, 1),
(1, 22, 379, 1),
(1, 22, 389, 1),
(1, 22, 390, 1),
(1, 22, 395, 1),
(1, 22, 396, 1),
(1, 22, 414, 1),
(1, 23, 415, 1),
(1, 23, 431, 1),
(1, 23, 433, 1),
(1, 23, 438, 1),
(1, 23, 439, 1),
(1, 26, 122, 1),
(1, 26, 127, 1),
(1, 26, 128, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_user2role`
--

DROP TABLE IF EXISTS `vtiger_user2role`;
CREATE TABLE IF NOT EXISTS `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`),
  KEY `user2role_roleid_idx` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_user2role`
--

INSERT INTO `vtiger_user2role` (`userid`, `roleid`) VALUES
(1, 'H2'),
(2, 'H3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_users`
--

DROP TABLE IF EXISTS `vtiger_users`;
CREATE TABLE IF NOT EXISTS `vtiger_users` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_password` varchar(30) default NULL,
  `user_hash` varchar(32) default NULL,
  `cal_color` varchar(25) default '#E6FAD8',
  `first_name` varchar(30) default NULL,
  `last_name` varchar(30) default NULL,
  `reports_to_id` varchar(36) default NULL,
  `is_admin` varchar(3) default '0',
  `currency_id` int(19) NOT NULL default '1',
  `description` text,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `phone_home` varchar(50) default NULL,
  `phone_mobile` varchar(50) default NULL,
  `phone_work` varchar(50) default NULL,
  `phone_other` varchar(50) default NULL,
  `phone_fax` varchar(50) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `yahoo_id` varchar(100) default NULL,
  `status` varchar(25) default NULL,
  `signature` varchar(250) default NULL,
  `address_street` varchar(150) default NULL,
  `address_city` varchar(100) default NULL,
  `address_state` varchar(100) default NULL,
  `address_country` varchar(25) default NULL,
  `address_postalcode` varchar(9) default NULL,
  `user_preferences` text,
  `tz` varchar(30) default NULL,
  `holidays` varchar(60) default NULL,
  `namedays` varchar(60) default NULL,
  `workdays` varchar(30) default NULL,
  `weekstart` int(11) default NULL,
  `date_format` varchar(200) default NULL,
  `hour_format` varchar(30) default 'am/pm',
  `start_hour` varchar(30) default '10:00',
  `end_hour` varchar(30) default '23:00',
  `activity_view` varchar(200) default 'Today',
  `lead_view` varchar(200) default 'Today',
  `imagename` varchar(250) default NULL,
  `deleted` int(1) NOT NULL default '0',
  `confirm_password` varchar(30) default NULL,
  `internal_mailer` varchar(3) NOT NULL default '1',
  `reminder_interval` varchar(100) default NULL,
  `reminder_next_time` varchar(100) default NULL,
  `crypt_type` varchar(20) NOT NULL default 'MD5',
  `accesskey` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `user_hash`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `yahoo_id`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`) VALUES
(1, 'admin', '$1$ad$bqMTngHXFo5G8An8Aig//.', 'd868c7ee2782de29f99dd99196ff9f81', '#E6FAD8', '', 'Administrator', '', 'on', 1, '', '2009-12-20 20:43:16', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'demo@debpbx.org', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', 'am/pm', '08:00', '23:00', 'This Week', 'Today', '', 0, '$1$ad$peilFE10wX.4b0aIm7/.t/', '1', '1 Minute', '2009-12-20 21:01', 'MD5', 'KwHkaki2lou2o3a'),
(2, 'standarduser', '$1$st$uLfsbaxHqXKBxU5m5SkIg0', NULL, '#E6FAD8', '', 'StandardUser', '', 'off', 1, '', '2009-12-20 20:14:19', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'demo@debpbx.org', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '24', '08:00', '23:00', 'This Week', 'Today', '', 0, '$1$st$1iX6Nfn6NbdWdlCljgg3u1', '1', '1 Minute', NULL, 'MD5', 'Os3Sip6UfRRMZqzy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_users2group`
--

DROP TABLE IF EXISTS `vtiger_users2group`;
CREATE TABLE IF NOT EXISTS `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  PRIMARY KEY  (`groupid`,`userid`),
  KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`),
  KEY `fk_2_vtiger_users2group` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_users2group`
--

INSERT INTO `vtiger_users2group` (`groupid`, `userid`) VALUES
(4, 1),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_users_last_import`
--

DROP TABLE IF EXISTS `vtiger_users_last_import`;
CREATE TABLE IF NOT EXISTS `vtiger_users_last_import` (
  `id` int(36) NOT NULL auto_increment,
  `assigned_user_id` varchar(36) default NULL,
  `bean_type` varchar(36) default NULL,
  `bean_id` varchar(36) default NULL,
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_users_last_import`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_users_seq`
--

DROP TABLE IF EXISTS `vtiger_users_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_users_seq`
--

INSERT INTO `vtiger_users_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_usertype`
--

DROP TABLE IF EXISTS `vtiger_usertype`;
CREATE TABLE IF NOT EXISTS `vtiger_usertype` (
  `usertypeid` int(19) NOT NULL auto_increment,
  `usertype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`usertypeid`),
  UNIQUE KEY `usertype_usertype_idx` (`usertype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vtiger_usertype`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_user_module_preferences`
--

DROP TABLE IF EXISTS `vtiger_user_module_preferences`;
CREATE TABLE IF NOT EXISTS `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`tabid`),
  KEY `fk_2_vtiger_user_module_preferences` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_user_module_preferences`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_vendor`
--

DROP TABLE IF EXISTS `vtiger_vendor`;
CREATE TABLE IF NOT EXISTS `vtiger_vendor` (
  `vendorid` int(19) NOT NULL default '0',
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `website` varchar(100) default NULL,
  `glacct` varchar(200) default NULL,
  `category` varchar(50) default NULL,
  `street` text,
  `city` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `pobox` varchar(30) default NULL,
  `postalcode` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `description` text,
  PRIMARY KEY  (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_vendor`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_vendorcf`
--

DROP TABLE IF EXISTS `vtiger_vendorcf`;
CREATE TABLE IF NOT EXISTS `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_vendorcf`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_vendorcontactrel`
--

DROP TABLE IF EXISTS `vtiger_vendorcontactrel`;
CREATE TABLE IF NOT EXISTS `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL default '0',
  `contactid` int(19) NOT NULL default '0',
  PRIMARY KEY  (`vendorid`,`contactid`),
  KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  KEY `vendorcontactrel_contact_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_vendorcontactrel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_version`
--

DROP TABLE IF EXISTS `vtiger_version`;
CREATE TABLE IF NOT EXISTS `vtiger_version` (
  `id` int(11) NOT NULL auto_increment,
  `old_version` varchar(30) default NULL,
  `current_version` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_version`
--

INSERT INTO `vtiger_version` (`id`, `old_version`, `current_version`) VALUES
(1, '5.1.0', '5.1.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_version_seq`
--

DROP TABLE IF EXISTS `vtiger_version_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_version_seq`
--

INSERT INTO `vtiger_version_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_visibility`
--

DROP TABLE IF EXISTS `vtiger_visibility`;
CREATE TABLE IF NOT EXISTS `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL auto_increment,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL default '0',
  `presence` int(1) NOT NULL default '1',
  PRIMARY KEY  (`visibilityid`),
  UNIQUE KEY `visibility_visibility_idx` (`visibility`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `vtiger_visibility`
--

INSERT INTO `vtiger_visibility` (`visibilityid`, `visibility`, `sortorderid`, `presence`) VALUES
(1, 'Private', 0, 1),
(2, 'Public', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_visibility_seq`
--

DROP TABLE IF EXISTS `vtiger_visibility_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_visibility_seq`
--

INSERT INTO `vtiger_visibility_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_wordtemplates`
--

DROP TABLE IF EXISTS `vtiger_wordtemplates`;
CREATE TABLE IF NOT EXISTS `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `parent_type` varchar(50) NOT NULL,
  `data` longblob,
  `description` text,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_wordtemplates`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity`
--

DROP TABLE IF EXISTS `vtiger_ws_entity`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity`
--

INSERT INTO `vtiger_ws_entity` (`id`, `name`, `handler_path`, `handler_class`, `ismodule`) VALUES
(1, 'Calendar', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(2, 'Leads', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(3, 'Accounts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(4, 'Contacts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(5, 'Potentials', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(6, 'Products', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(7, 'Documents', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(8, 'Emails', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(9, 'HelpDesk', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(10, 'Faq', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(11, 'Vendors', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(12, 'PriceBooks', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(13, 'Quotes', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(14, 'PurchaseOrder', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(15, 'SalesOrder', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(16, 'Invoice', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(17, 'Campaigns', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(18, 'Events', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(19, 'Users', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(20, 'Groups', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(21, 'Currency', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(22, 'DocumentFolders', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(23, 'ServiceContracts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(24, 'Services', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(25, 'PBXManager', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL auto_increment,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`),
  UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_fieldtype`
--

INSERT INTO `vtiger_ws_entity_fieldtype` (`fieldtypeid`, `table_name`, `field_name`, `fieldtype`) VALUES
(1, 'vtiger_attachmentsfolder', 'createdby', 'reference');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_fieldtype_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_fieldtype_seq`
--

INSERT INTO `vtiger_ws_entity_fieldtype_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_name`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_name`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_name`
--

INSERT INTO `vtiger_ws_entity_name` (`entity_id`, `name_fields`, `index_field`, `table_name`) VALUES
(20, 'groupname', 'groupid', 'vtiger_groups'),
(21, 'currency_name', 'id', 'vtiger_currency_info'),
(22, 'foldername', 'folderid', 'vtiger_attachmentsfolder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_referencetype`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_referencetype`
--

INSERT INTO `vtiger_ws_entity_referencetype` (`fieldtypeid`, `type`) VALUES
(1, 'Users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_seq`
--

INSERT INTO `vtiger_ws_entity_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_entity_tables`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_tables`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`webservice_entity_id`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_entity_tables`
--

INSERT INTO `vtiger_ws_entity_tables` (`webservice_entity_id`, `table_name`) VALUES
(20, 'vtiger_groups'),
(21, 'vtiger_currency_info'),
(22, 'vtiger_attachmentsfolder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_fieldtype`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL auto_increment,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`),
  UNIQUE KEY `uitype_idx` (`uitype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Volcar la base de datos para la tabla `vtiger_ws_fieldtype`
--

INSERT INTO `vtiger_ws_fieldtype` (`fieldtypeid`, `uitype`, `fieldtype`) VALUES
(1, '15', 'picklist'),
(2, '16', 'picklist'),
(3, '19', 'text'),
(4, '20', 'text'),
(5, '21', 'text'),
(6, '24', 'text'),
(7, '3', 'autogenerated'),
(8, '11', 'phone'),
(9, '33', 'multipicklist'),
(10, '17', 'url'),
(11, '85', 'skype'),
(12, '56', 'boolean'),
(13, '156', 'boolean'),
(14, '53', 'owner'),
(15, '61', 'file'),
(16, '28', 'file'),
(17, '50', 'reference'),
(18, '51', 'reference'),
(19, '57', 'reference'),
(20, '58', 'reference'),
(21, '73', 'reference'),
(22, '75', 'reference'),
(23, '76', 'reference'),
(24, '78', 'reference'),
(25, '80', 'reference'),
(26, '81', 'reference'),
(27, '101', 'reference'),
(28, '52', 'reference'),
(29, '357', 'reference'),
(30, '59', 'reference'),
(31, '66', 'reference'),
(32, '77', 'reference'),
(33, '68', 'reference'),
(34, '117', 'reference'),
(35, '116', 'reference'),
(36, '26', 'reference'),
(37, '10', 'reference');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_operation`
--

DROP TABLE IF EXISTS `vtiger_ws_operation`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL,
  PRIMARY KEY  (`operationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `vtiger_ws_operation`
--

INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES
(1, 'login', 'include/Webservices/Login.php', 'vtws_login', 'POST', 1),
(2, 'retrieve', 'include/Webservices/Retrieve.php', 'vtws_retrieve', 'GET', 0),
(3, 'create', 'include/Webservices/Create.php', 'vtws_create', 'POST', 0),
(4, 'update', 'include/Webservices/Update.php', 'vtws_update', 'POST', 0),
(5, 'delete', 'include/Webservices/Delete.php', 'vtws_delete', 'POST', 0),
(6, 'sync', 'include/Webservices/GetUpdates.php', 'vtws_sync', 'GET', 0),
(7, 'query', 'include/Webservices/Query.php', 'vtws_query', 'GET', 0),
(8, 'logout', 'include/Webservices/Logout.php', 'vtws_logout', 'POST', 0),
(9, 'listtypes', 'include/Webservices/ModuleTypes.php', 'vtws_listtypes', 'GET', 0),
(10, 'getchallenge', 'include/Webservices/AuthToken.php', 'vtws_getchallenge', 'GET', 1),
(11, 'describe', 'include/Webservices/DescribeObject.php', 'vtws_describe', 'GET', 0),
(12, 'extendsession', 'include/Webservices/ExtendSession.php', 'vtws_extendSession', 'POST', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_operation_parameters`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_parameters`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY  (`operationid`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcar la base de datos para la tabla `vtiger_ws_operation_parameters`
--

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES
(1, 'accessKey', 'String', 2),
(1, 'username', 'String', 1),
(2, 'id', 'String', 1),
(3, 'element', 'encoded', 2),
(3, 'elementType', 'String', 1),
(4, 'element', 'encoded', 1),
(5, 'id', 'String', 1),
(6, 'elementType', 'String', 2),
(6, 'modifiedTime', 'DateTime', 1),
(7, 'query', 'String', 1),
(8, 'sessionName', 'String', 1),
(10, 'username', 'String', 1),
(11, 'elementType', 'String', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_operation_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_seq`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_operation_seq`
--

INSERT INTO `vtiger_ws_operation_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_referencetype`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY  (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_referencetype`
--

INSERT INTO `vtiger_ws_referencetype` (`fieldtypeid`, `type`) VALUES
(17, 'Accounts'),
(18, 'Accounts'),
(19, 'Contacts'),
(20, 'Campaigns'),
(21, 'Accounts'),
(22, 'Vendors'),
(23, 'Potentials'),
(24, 'Quotes'),
(25, 'SalesOrder'),
(26, 'Vendors'),
(27, 'Users'),
(28, 'Users'),
(29, 'Accounts'),
(29, 'Contacts'),
(29, 'Leads'),
(29, 'Users'),
(29, 'Vendors'),
(30, 'Products'),
(31, 'Accounts'),
(31, 'HelpDesk'),
(31, 'Leads'),
(31, 'Potentials'),
(32, 'Users'),
(33, 'Accounts'),
(33, 'Contacts'),
(34, 'Currency'),
(35, 'Currency'),
(36, 'DocumentFolders');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_ws_userauthtoken`
--

DROP TABLE IF EXISTS `vtiger_ws_userauthtoken`;
CREATE TABLE IF NOT EXISTS `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL,
  PRIMARY KEY  (`userid`,`expiretime`),
  UNIQUE KEY `userid_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `vtiger_ws_userauthtoken`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `vtiger_account`
--
ALTER TABLE `vtiger_account`
  ADD CONSTRAINT `fk_1_vtiger_account` FOREIGN KEY (`accountid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_accountbillads`
--
ALTER TABLE `vtiger_accountbillads`
  ADD CONSTRAINT `fk_1_vtiger_accountbillads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_accountscf`
--
ALTER TABLE `vtiger_accountscf`
  ADD CONSTRAINT `fk_1_vtiger_accountscf` FOREIGN KEY (`accountid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_accountshipads`
--
ALTER TABLE `vtiger_accountshipads`
  ADD CONSTRAINT `fk_1_vtiger_accountshipads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_activity`
--
ALTER TABLE `vtiger_activity`
  ADD CONSTRAINT `fk_1_vtiger_activity` FOREIGN KEY (`activityid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_activityproductrel`
--
ALTER TABLE `vtiger_activityproductrel`
  ADD CONSTRAINT `fk_2_vtiger_activityproductrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_attachments`
--
ALTER TABLE `vtiger_attachments`
  ADD CONSTRAINT `fk_1_vtiger_attachments` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_blocks`
--
ALTER TABLE `vtiger_blocks`
  ADD CONSTRAINT `fk_1_vtiger_blocks` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_campaigncontrel`
--
ALTER TABLE `vtiger_campaigncontrel`
  ADD CONSTRAINT `fk_2_vtiger_campaigncontrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_campaignleadrel`
--
ALTER TABLE `vtiger_campaignleadrel`
  ADD CONSTRAINT `fk_2_vtiger_campaignleadrel` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_campaignscf`
--
ALTER TABLE `vtiger_campaignscf`
  ADD CONSTRAINT `fk_1_vtiger_campaignscf` FOREIGN KEY (`campaignid`) REFERENCES `vtiger_campaign` (`campaignid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_chat_msg`
--
ALTER TABLE `vtiger_chat_msg`
  ADD CONSTRAINT `fk_1_vtiger_chat_msg` FOREIGN KEY (`chat_from`) REFERENCES `vtiger_chat_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_chat_pchat`
--
ALTER TABLE `vtiger_chat_pchat`
  ADD CONSTRAINT `fk_1_vtiger_chat_pchat` FOREIGN KEY (`msg`) REFERENCES `vtiger_chat_msg` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_chat_pvchat`
--
ALTER TABLE `vtiger_chat_pvchat`
  ADD CONSTRAINT `fk_1_vtiger_chat_pvchat` FOREIGN KEY (`msg`) REFERENCES `vtiger_chat_msg` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_cntactivityrel`
--
ALTER TABLE `vtiger_cntactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_cntactivityrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_competitor`
--
ALTER TABLE `vtiger_competitor`
  ADD CONSTRAINT `fk_1_vtiger_competitor` FOREIGN KEY (`competitorid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_contactaddress`
--
ALTER TABLE `vtiger_contactaddress`
  ADD CONSTRAINT `fk_1_vtiger_contactaddress` FOREIGN KEY (`contactaddressid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_contactdetails`
--
ALTER TABLE `vtiger_contactdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactdetails` FOREIGN KEY (`contactid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_contactscf`
--
ALTER TABLE `vtiger_contactscf`
  ADD CONSTRAINT `fk_1_vtiger_contactscf` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_contactsubdetails`
--
ALTER TABLE `vtiger_contactsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactsubdetails` FOREIGN KEY (`contactsubscriptionid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_contpotentialrel`
--
ALTER TABLE `vtiger_contpotentialrel`
  ADD CONSTRAINT `fk_2_vtiger_contpotentialrel` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_crmentitynotesrel`
--
ALTER TABLE `vtiger_crmentitynotesrel`
  ADD CONSTRAINT `fk_2_vtiger_crmentitynotesrel` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_customaction`
--
ALTER TABLE `vtiger_customaction`
  ADD CONSTRAINT `fk_1_vtiger_customaction` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_customerdetails`
--
ALTER TABLE `vtiger_customerdetails`
  ADD CONSTRAINT `fk_1_vtiger_customerdetails` FOREIGN KEY (`customerid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_customview`
--
ALTER TABLE `vtiger_customview`
  ADD CONSTRAINT `fk_1_vtiger_customview` FOREIGN KEY (`entitytype`) REFERENCES `vtiger_tab` (`name`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_cvadvfilter`
--
ALTER TABLE `vtiger_cvadvfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvadvfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_cvcolumnlist`
--
ALTER TABLE `vtiger_cvcolumnlist`
  ADD CONSTRAINT `fk_1_vtiger_cvcolumnlist` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_cvstdfilter`
--
ALTER TABLE `vtiger_cvstdfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvstdfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_grp2grp`
--
ALTER TABLE `vtiger_datashare_grp2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2grp` FOREIGN KEY (`to_groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_grp2role`
--
ALTER TABLE `vtiger_datashare_grp2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_grp2rs`
--
ALTER TABLE `vtiger_datashare_grp2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_module_rel`
--
ALTER TABLE `vtiger_datashare_module_rel`
  ADD CONSTRAINT `fk_1_vtiger_datashare_module_rel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_relatedmodules`
--
ALTER TABLE `vtiger_datashare_relatedmodules`
  ADD CONSTRAINT `fk_2_vtiger_datashare_relatedmodules` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_role2group`
--
ALTER TABLE `vtiger_datashare_role2group`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2group` FOREIGN KEY (`share_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_role2role`
--
ALTER TABLE `vtiger_datashare_role2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_role2rs`
--
ALTER TABLE `vtiger_datashare_role2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_rs2grp`
--
ALTER TABLE `vtiger_datashare_rs2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2grp` FOREIGN KEY (`share_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_rs2role`
--
ALTER TABLE `vtiger_datashare_rs2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_datashare_rs2rs`
--
ALTER TABLE `vtiger_datashare_rs2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_defaultcv`
--
ALTER TABLE `vtiger_defaultcv`
  ADD CONSTRAINT `fk_1_vtiger_defaultcv` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  ADD CONSTRAINT `fk_1_vtiger_def_org_share` FOREIGN KEY (`permission`) REFERENCES `vtiger_org_share_action_mapping` (`share_action_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_entityname`
--
ALTER TABLE `vtiger_entityname`
  ADD CONSTRAINT `fk_1_vtiger_entityname` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  ADD CONSTRAINT `fk_1_vtiger_faq` FOREIGN KEY (`id`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  ADD CONSTRAINT `fk_1_vtiger_faqcomments` FOREIGN KEY (`faqid`) REFERENCES `vtiger_faq` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_field`
--
ALTER TABLE `vtiger_field`
  ADD CONSTRAINT `fk_1_vtiger_field` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_group2grouprel`
--
ALTER TABLE `vtiger_group2grouprel`
  ADD CONSTRAINT `fk_2_vtiger_group2grouprel` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vtiger_group2role`
--
ALTER TABLE `vtiger_group2role`
  ADD CONSTRAINT `fk_2_vtiger_group2role` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_group2rs`
--
ALTER TABLE `vtiger_group2rs`
  ADD CONSTRAINT `fk_2_vtiger_group2rs` FOREIGN KEY (`roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homedashbd`
--
ALTER TABLE `vtiger_homedashbd`
  ADD CONSTRAINT `fk_1_vtiger_homedashbd` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homedefault`
--
ALTER TABLE `vtiger_homedefault`
  ADD CONSTRAINT `fk_1_vtiger_homedefault` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homemodule`
--
ALTER TABLE `vtiger_homemodule`
  ADD CONSTRAINT `fk_1_vtiger_homemodule` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homemoduleflds`
--
ALTER TABLE `vtiger_homemoduleflds`
  ADD CONSTRAINT `fk_1_vtiger_homemoduleflds` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homemodule` (`stuffid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homerss`
--
ALTER TABLE `vtiger_homerss`
  ADD CONSTRAINT `fk_1_vtiger_homerss` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_homestuff`
--
ALTER TABLE `vtiger_homestuff`
  ADD CONSTRAINT `fk_1_vtiger_homestuff` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_invoice`
--
ALTER TABLE `vtiger_invoice`
  ADD CONSTRAINT `fk_2_vtiger_invoice` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_invoicebillads`
--
ALTER TABLE `vtiger_invoicebillads`
  ADD CONSTRAINT `fk_1_vtiger_invoicebillads` FOREIGN KEY (`invoicebilladdressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_invoicecf`
--
ALTER TABLE `vtiger_invoicecf`
  ADD CONSTRAINT `fk_1_vtiger_invoicecf` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_invoiceshipads`
--
ALTER TABLE `vtiger_invoiceshipads`
  ADD CONSTRAINT `fk_1_vtiger_invoiceshipads` FOREIGN KEY (`invoiceshipaddressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  ADD CONSTRAINT `fk_1_vtiger_invoicestatushistory` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_lar`
--
ALTER TABLE `vtiger_lar`
  ADD CONSTRAINT `fk_1_vtiger_lar` FOREIGN KEY (`createdby`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadacctrel`
--
ALTER TABLE `vtiger_leadacctrel`
  ADD CONSTRAINT `fk_2_vtiger_leadacctrel` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadaddress`
--
ALTER TABLE `vtiger_leadaddress`
  ADD CONSTRAINT `fk_1_vtiger_leadaddress` FOREIGN KEY (`leadaddressid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadcontrel`
--
ALTER TABLE `vtiger_leadcontrel`
  ADD CONSTRAINT `fk_2_vtiger_leadcontrel` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leaddetails`
--
ALTER TABLE `vtiger_leaddetails`
  ADD CONSTRAINT `fk_1_vtiger_leaddetails` FOREIGN KEY (`leadid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadpotrel`
--
ALTER TABLE `vtiger_leadpotrel`
  ADD CONSTRAINT `fk_2_vtiger_leadpotrel` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadscf`
--
ALTER TABLE `vtiger_leadscf`
  ADD CONSTRAINT `fk_1_vtiger_leadscf` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_leadsubdetails`
--
ALTER TABLE `vtiger_leadsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_leadsubdetails` FOREIGN KEY (`leadsubscriptionid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_moduleowners`
--
ALTER TABLE `vtiger_moduleowners`
  ADD CONSTRAINT `fk_1_vtiger_moduleowners` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_notes`
--
ALTER TABLE `vtiger_notes`
  ADD CONSTRAINT `fk_1_vtiger_notes` FOREIGN KEY (`notesid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_org_share_action2tab`
--
ALTER TABLE `vtiger_org_share_action2tab`
  ADD CONSTRAINT `fk_2_vtiger_org_share_action2tab` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_parenttabrel`
--
ALTER TABLE `vtiger_parenttabrel`
  ADD CONSTRAINT `fk_2_vtiger_parenttabrel` FOREIGN KEY (`parenttabid`) REFERENCES `vtiger_parenttab` (`parenttabid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_1_vtiger_parenttabrel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_pobillads`
--
ALTER TABLE `vtiger_pobillads`
  ADD CONSTRAINT `fk_1_vtiger_pobillads` FOREIGN KEY (`pobilladdressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_portalinfo`
--
ALTER TABLE `vtiger_portalinfo`
  ADD CONSTRAINT `fk_1_vtiger_portalinfo` FOREIGN KEY (`id`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_poshipads`
--
ALTER TABLE `vtiger_poshipads`
  ADD CONSTRAINT `fk_1_vtiger_poshipads` FOREIGN KEY (`poshipaddressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  ADD CONSTRAINT `fk_1_vtiger_postatushistory` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_potcompetitorrel`
--
ALTER TABLE `vtiger_potcompetitorrel`
  ADD CONSTRAINT `fk_2_vtiger_potcompetitorrel` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_potential`
--
ALTER TABLE `vtiger_potential`
  ADD CONSTRAINT `fk_1_vtiger_potential` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_potentialscf`
--
ALTER TABLE `vtiger_potentialscf`
  ADD CONSTRAINT `fk_1_vtiger_potentialscf` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  ADD CONSTRAINT `fk_1_vtiger_potstagehistory` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_pricebook`
--
ALTER TABLE `vtiger_pricebook`
  ADD CONSTRAINT `fk_1_vtiger_pricebook` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_pricebookcf`
--
ALTER TABLE `vtiger_pricebookcf`
  ADD CONSTRAINT `fk_1_vtiger_pricebookcf` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_pricebookproductrel`
--
ALTER TABLE `vtiger_pricebookproductrel`
  ADD CONSTRAINT `fk_1_vtiger_pricebookproductrel` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_productcf`
--
ALTER TABLE `vtiger_productcf`
  ADD CONSTRAINT `fk_1_vtiger_productcf` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_productcollaterals`
--
ALTER TABLE `vtiger_productcollaterals`
  ADD CONSTRAINT `fk_1_vtiger_productcollaterals` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_products`
--
ALTER TABLE `vtiger_products`
  ADD CONSTRAINT `fk_1_vtiger_products` FOREIGN KEY (`productid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_profile2globalpermissions`
--
ALTER TABLE `vtiger_profile2globalpermissions`
  ADD CONSTRAINT `fk_1_vtiger_profile2globalpermissions` FOREIGN KEY (`profileid`) REFERENCES `vtiger_profile` (`profileid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_purchaseorder`
--
ALTER TABLE `vtiger_purchaseorder`
  ADD CONSTRAINT `fk_4_vtiger_purchaseorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_purchaseordercf`
--
ALTER TABLE `vtiger_purchaseordercf`
  ADD CONSTRAINT `fk_1_vtiger_purchaseordercf` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quickview`
--
ALTER TABLE `vtiger_quickview`
  ADD CONSTRAINT `fk_1_vtiger_quickview` FOREIGN KEY (`fieldid`) REFERENCES `vtiger_field` (`fieldid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quotes`
--
ALTER TABLE `vtiger_quotes`
  ADD CONSTRAINT `fk_3_vtiger_quotes` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quotesbillads`
--
ALTER TABLE `vtiger_quotesbillads`
  ADD CONSTRAINT `fk_1_vtiger_quotesbillads` FOREIGN KEY (`quotebilladdressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quotescf`
--
ALTER TABLE `vtiger_quotescf`
  ADD CONSTRAINT `fk_1_vtiger_quotescf` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quotesshipads`
--
ALTER TABLE `vtiger_quotesshipads`
  ADD CONSTRAINT `fk_1_vtiger_quotesshipads` FOREIGN KEY (`quoteshipaddressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  ADD CONSTRAINT `fk_1_vtiger_quotestagehistory` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  ADD CONSTRAINT `fk_1_vtiger_recurringevents` FOREIGN KEY (`activityid`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_relcriteria`
--
ALTER TABLE `vtiger_relcriteria`
  ADD CONSTRAINT `fk_1_vtiger_relcriteria` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_report`
--
ALTER TABLE `vtiger_report`
  ADD CONSTRAINT `fk_2_vtiger_report` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_reportdatefilter`
--
ALTER TABLE `vtiger_reportdatefilter`
  ADD CONSTRAINT `fk_1_vtiger_reportdatefilter` FOREIGN KEY (`datefilterid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_reportmodules`
--
ALTER TABLE `vtiger_reportmodules`
  ADD CONSTRAINT `fk_1_vtiger_reportmodules` FOREIGN KEY (`reportmodulesid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_reportsortcol`
--
ALTER TABLE `vtiger_reportsortcol`
  ADD CONSTRAINT `fk_1_vtiger_reportsortcol` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_reportsummary`
--
ALTER TABLE `vtiger_reportsummary`
  ADD CONSTRAINT `fk_1_vtiger_reportsummary` FOREIGN KEY (`reportsummaryid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_role2picklist`
--
ALTER TABLE `vtiger_role2picklist`
  ADD CONSTRAINT `fk_2_vtiger_role2picklist` FOREIGN KEY (`picklistid`) REFERENCES `vtiger_picklist` (`picklistid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_1_vtiger_role2picklist` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_salesmanactivityrel`
--
ALTER TABLE `vtiger_salesmanactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanactivityrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_salesmanattachmentsrel`
--
ALTER TABLE `vtiger_salesmanattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanattachmentsrel` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_attachments` (`attachmentsid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_salesmanticketrel`
--
ALTER TABLE `vtiger_salesmanticketrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanticketrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_salesorder`
--
ALTER TABLE `vtiger_salesorder`
  ADD CONSTRAINT `fk_3_vtiger_salesorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_salesordercf`
--
ALTER TABLE `vtiger_salesordercf`
  ADD CONSTRAINT `fk_1_vtiger_salesordercf` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_seactivityrel`
--
ALTER TABLE `vtiger_seactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_seactivityrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_seattachmentsrel`
--
ALTER TABLE `vtiger_seattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_seattachmentsrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_selectcolumn`
--
ALTER TABLE `vtiger_selectcolumn`
  ADD CONSTRAINT `fk_1_vtiger_selectcolumn` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD CONSTRAINT `fk_2_vtiger_senotesrel` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_seproductsrel`
--
ALTER TABLE `vtiger_seproductsrel`
  ADD CONSTRAINT `fk_2_vtiger_seproductsrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_seticketsrel`
--
ALTER TABLE `vtiger_seticketsrel`
  ADD CONSTRAINT `fk_2_vtiger_seticketsrel` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_settings_field`
--
ALTER TABLE `vtiger_settings_field`
  ADD CONSTRAINT `fk_1_vtiger_settings_field` FOREIGN KEY (`blockid`) REFERENCES `vtiger_settings_blocks` (`blockid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_sobillads`
--
ALTER TABLE `vtiger_sobillads`
  ADD CONSTRAINT `fk_1_vtiger_sobillads` FOREIGN KEY (`sobilladdressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_soshipads`
--
ALTER TABLE `vtiger_soshipads`
  ADD CONSTRAINT `fk_1_vtiger_soshipads` FOREIGN KEY (`soshipaddressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  ADD CONSTRAINT `fk_1_vtiger_sostatushistory` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_ticketcf`
--
ALTER TABLE `vtiger_ticketcf`
  ADD CONSTRAINT `fk_1_vtiger_ticketcf` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  ADD CONSTRAINT `fk_1_vtiger_ticketcomments` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_read_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_read_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_read_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_read_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_write_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_write_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_write_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_tmp_write_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_troubletickets`
--
ALTER TABLE `vtiger_troubletickets`
  ADD CONSTRAINT `fk_1_vtiger_troubletickets` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_user2role`
--
ALTER TABLE `vtiger_user2role`
  ADD CONSTRAINT `fk_2_vtiger_user2role` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_users2group`
--
ALTER TABLE `vtiger_users2group`
  ADD CONSTRAINT `fk_2_vtiger_users2group` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_user_module_preferences`
--
ALTER TABLE `vtiger_user_module_preferences`
  ADD CONSTRAINT `fk_2_vtiger_user_module_preferences` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vtiger_vendor`
--
ALTER TABLE `vtiger_vendor`
  ADD CONSTRAINT `fk_1_vtiger_vendor` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_vendorcf`
--
ALTER TABLE `vtiger_vendorcf`
  ADD CONSTRAINT `fk_1_vtiger_vendorcf` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_vendorcontactrel`
--
ALTER TABLE `vtiger_vendorcontactrel`
  ADD CONSTRAINT `fk_2_vtiger_vendorcontactrel` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_ws_entity_referencetype`
--
ALTER TABLE `vtiger_ws_entity_referencetype`
  ADD CONSTRAINT `vtiger_fk_1_actors_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_entity_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_ws_entity_tables`
--
ALTER TABLE `vtiger_ws_entity_tables`
  ADD CONSTRAINT `fk_1_vtiger_ws_actor_tables` FOREIGN KEY (`webservice_entity_id`) REFERENCES `vtiger_ws_entity` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vtiger_ws_referencetype`
--
ALTER TABLE `vtiger_ws_referencetype`
  ADD CONSTRAINT `fk_1_vtiger_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;
