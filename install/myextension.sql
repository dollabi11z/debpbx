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
-- $ID: myextension.sql, v 0.1  2010/05/10 15:57:00 federico Exp $
--
-- freepbx
-- Author: Federico Pereira <fpereira@debpbx.org>
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

-- MODIFYING DEFAULT PASSWORD
UPDATE `asterisk_db`.`ampusers` SET `username` =  'FREEPBX_ADMIN',`password_sha1` = 'SHA1_PASS' WHERE CONVERT( `ampusers`.`username` USING utf8 ) = 'admin' LIMIT 1;

-- CONFIGURATION GENERAL SETTINGS
UPDATE `asterisk_db`.`globals` SET `value` =  'trwW' WHERE CONVERT( `globals`.`variable` USING utf8 ) = 'DIAL_OPTIONS' LIMIT 1 ;
UPDATE `asterisk_db`.`globals` SET `value` =  '30' WHERE CONVERT( `globals`.`variable` USING utf8 ) = 'RINGTIMER' LIMIT 1 ;
UPDATE `asterisk_db`.`globals` SET `value` =  'DISABLED' WHERE CONVERT( `globals`.`variable` USING utf8 ) = 'RECORDING_STATE' LIMIT 1 ;
UPDATE `asterisk_db`.`globals` SET `value` =  'ar' WHERE CONVERT( `globals`.`variable` USING utf8 ) = 'TONEZONE' LIMIT 1 ;
UPDATE `asterisk_db`.`globals` SET `value` =  'yes' WHERE CONVERT( `globals`.`variable` USING utf8 ) = 'ALLOW_SIP_ANON' LIMIT 1 ;
INSERT INTO `asterisk_db`.`admin` (`variable` ,`value`) VALUES ('email', 'E_MAIL');

-- FEATURE CODES
UPDATE `asterisk_db`.`featurecodes` SET `enabled` =  '1' WHERE CONVERT( `featurecodes`.`modulename` USING utf8 ) = 'core' AND CONVERT( `featurecodes`.`featurename` USING utf8 ) =  'chanspy' LIMIT 1 


