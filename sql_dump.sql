-- phpMyAdmin SQL Dump
-- version 4.0.10.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2015 at 12:51 PM
-- Server version: 5.0.95
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `TLOD`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `Name` varchar(24) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Score` int(11) NOT NULL default '0',
  `AdminLevel` tinyint(4) NOT NULL default '0',
  `Hunger` float NOT NULL default '100',
  `Thirst` float NOT NULL default '100',
  `Sleep` float NOT NULL default '100',
  `Exp` float NOT NULL default '0',
  `Level` smallint(6) NOT NULL default '0',
  `hKills` int(11) NOT NULL default '0',
  `zKills` int(11) NOT NULL default '0',
  `dKills` int(11) NOT NULL default '0',
  `cItems` int(11) NOT NULL default '0',
  `cCraft` int(11) NOT NULL default '0',
  `cTrees` int(11) NOT NULL default '0',
  `InvSize` int(11) NOT NULL default '5',
  `Pos_X` float NOT NULL default '0',
  `Pos_Y` float NOT NULL default '0',
  `Pos_Z` float NOT NULL default '0',
  `IP` varchar(16) NOT NULL,
  `Last_IP` varchar(16) NOT NULL,
  `Last_Login` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
