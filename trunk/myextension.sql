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

INSERT INTO `users` (`extension`, `password`, `name`, `voicemail`, `ringtimer`, `noanswer`, `recording`, `outboundcid`, `sipname`, `mohclass`) VALUES
('400', '', 'FAX', 'novm', 0, '', 'out=Never|in=Never', '', '', 'default');

INSERT INTO `devices` (`id`, `tech`, `dial`, `devicetype`, `user`, `description`, `emergency_cid`) VALUES
('400', 'iax2', 'IAX2/400', 'fixed', '400', 'FAX', '');

INSERT INTO `iax` (`id`, `keyword`, `data`, `flags`) VALUES
('400', 'permit', '0.0.0.0/0.0.0.0', 15),
('400', 'deny', '0.0.0.0/0.0.0.0', 14),
('400', 'mailbox', '400@device', 13),
('400', 'accountcode', '', 12),
('400', 'dial', 'IAX2/400', 11),
('400', 'allow', 'ulaw', 10),
('400', 'disallow', 'all', 9),
('400', 'qualify', 'yes', 8),
('400', 'port', '4569', 7),
('400', 'type', 'friend', 6),
('400', 'host', 'dynamic', 5),
('400', 'context', 'from-internal', 4),
('400', 'notransfer', 'yes', 3),
('400', 'secret', 'IAX2_SECRET', 2),
('400', 'requirecalltoken', '', 16),
('400', 'account', '400', 17),
('400', 'callerid', 'device <400>', 18),
('400', 'setvar', 'REALCALLERIDNUM=400', 19),
('400', 'record_in', 'Never', 20),
('400', 'record_out', 'Never', 21);

