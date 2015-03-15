-- phpMyAdmin SQL Dump
-- version 4.0.10.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2015 at 06:00 PM
-- Server version: 5.0.95
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `TLOD`
--

-- --------------------------------------------------------

--
-- Table structure for table `inv_data`
--

CREATE TABLE IF NOT EXISTS `inv_data` (
  `iID` int(11) NOT NULL auto_increment,
  `Name` varchar(24) NOT NULL,
  `ItemModel` int(11) NOT NULL,
  `ItemAmount` int(11) NOT NULL,
  PRIMARY KEY  (`iID`),
  KEY `Name` (`Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=447 ;

-- --------------------------------------------------------

--
-- Table structure for table `tree_data`
--

CREATE TABLE IF NOT EXISTS `tree_data` (
  `tID` int(11) NOT NULL auto_increment,
  `ModelID` int(11) NOT NULL,
  `Health` float NOT NULL default '100',
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL,
  PRIMARY KEY  (`tID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=451 ;

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
  `InvSize` int(11) NOT NULL default '5',
  `Pos_X` float NOT NULL default '0',
  `Pos_Y` float NOT NULL default '0',
  `Pos_Z` float NOT NULL default '0',
  `IP` varchar(16) NOT NULL,
  `Last_IP` varchar(16) NOT NULL,
  `Last_Login` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_data`
--

CREATE TABLE IF NOT EXISTS `vehicle_data` (
  `vID` int(11) NOT NULL auto_increment,
  `Model` int(11) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL,
  `Rot` float NOT NULL,
  PRIMARY KEY  (`vID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;
