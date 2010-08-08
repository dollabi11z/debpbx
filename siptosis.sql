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
-- $ID: siptosis.sql, v 0.1  2010/08/08 15:57:00 federico Exp $
--
-- siptosis
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


-- BUILDING TRUNK FOR SKYPE SIP
INSERT INTO `trunks` (`trunkid`, `name`, `tech`, `outcid`, `keepcid`, `maxchans`, `failscript`, `dialoutprefix`, `channelid`, `usercontext`, `provider`, `disabled`) VALUES
(IDXXX, 'USERXXX', 'sip', '', 'off', '', '', '', 'USERXXX', '', '', 'off');

INSERT INTO `sip` (`id`, `keyword`, `data`, `flags`) VALUES
('tr-peer-IDXXX', 'account', 'USERXXX', 2),
('tr-peer-IDXXX', 'username', 'USERXXX', 3),
('tr-peer-IDXXX', 'type', 'friend', 4),
('tr-peer-IDXXX', 'context', 'sts_in', 5),
('tr-peer-IDXXX', 'secret', 'PASSXXX', 6),
('tr-peer-IDXXX', 'host', 'localhost', 7),
('tr-peer-IDXXX', 'nat', 'no', 8),
('tr-peer-IDXXX', 'dtmfmode', 'auto', 9),
('tr-peer-IDXXX', 'canreinvite', 'no', 10),
('tr-peer-IDXXX', 'qualify', 'yes', 11),
('tr-peer-IDXXX', 'defaultip', '127.0.0.1', 12),
('tr-peer-IDXXX', 'port', '5070', 13),
('tr-peer-IDXXX', 'incominglimit', '1', 14),
('tr-peer-IDXXX', 'outgoinglimit', '1', 15),
('tr-peer-IDXXX', 'call-limit', '1', 16),
('tr-peer-IDXXX', 'busylevel', '1', 17);


-- INCOMING
INSERT INTO `cidlookup_incoming` (`cidlookup_id`, `extension`, `cidnum`) VALUES
(0, '123456789', '');

INSERT INTO `incoming` (`cidnum`, `extension`, `destination`, `faxexten`, `faxemail`, `answer`, `wait`, `privacyman`, `alertinfo`, `ringing`, `mohclass`, `description`, `grppre`, `delay_answer`, `pricid`, `pmmaxretries`, `pmminlength`) VALUES
('', '123456789', 'from-did-direct,EXTENSIONXXX,1', NULL, NULL, NULL, NULL, 0, '', '', 'default', 'USERXXX', '', 0, '', '3', '10');

#APPLY CONFIGURATION CHANGES
UPDATE `asterisk_db`.`admin` SET `value` = 'true' WHERE CONVERT( `admin`.`variable` USING utf8 ) = 'need_reload' LIMIT 1 ;

