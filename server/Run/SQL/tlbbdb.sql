-- MySQL dump 10.11
--
-- Host: localhost    Database: tlbbdb
-- ------------------------------------------------------
-- Server version	5.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_ability`
--

DROP TABLE IF EXISTS `t_ability`;
CREATE TABLE `t_ability` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `abid` smallint(6) NOT NULL,
  `ablvl` smallint(6) NOT NULL,
  `abexp` int(10) unsigned NOT NULL,
  `dbversion` int(11) default '0',
  `isvalid` int(11) default '1',
  PRIMARY KEY  (`aid`),
  KEY `Index_ab_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=64774 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_char`
--

DROP TABLE IF EXISTS `t_char`;
CREATE TABLE `t_char` (
  `aid` bigint(20) NOT NULL auto_increment,
  `accname` varchar(50) character set latin1 collate latin1_bin NOT NULL,
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) character set latin1 collate latin1_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `pw` varchar(15) NOT NULL,
  `sex` smallint(6) NOT NULL,
  `level` int(11) NOT NULL,
  `enegry` int(11) NOT NULL,
  `energymax` int(11) NOT NULL,
  `outlook` int(11) NOT NULL,
  `scene` int(11) NOT NULL,
  `xpos` int(11) NOT NULL,
  `zpos` int(11) NOT NULL,
  `menpai` smallint(6) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `strikepoint` smallint(6) NOT NULL,
  `str` int(11) NOT NULL,
  `spr` int(11) NOT NULL,
  `con` int(11) NOT NULL,
  `ipr` int(11) NOT NULL,
  `dex` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `logouttime` int(11) NOT NULL,
  `logintime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `haircolor` int(11) NOT NULL,
  `hairmodel` int(11) NOT NULL,
  `facecolor` int(11) NOT NULL,
  `facemodel` int(11) NOT NULL,
  `vmoney` int(11) NOT NULL,
  `isvalid` smallint(6) NOT NULL,
  `exp` int(11) NOT NULL,
  `pres` text NOT NULL,
  `mdata` text,
  `mflag` text,
  `relflag` text,
  `settings` text,
  `dbversion` int(11) NOT NULL default '0',
  `shopinfo` text,
  `carrypet` varchar(20) NOT NULL,
  `guldid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `headid` int(11) NOT NULL,
  `erecover` int(11) NOT NULL,
  `vigor` int(11) NOT NULL,
  `maxvigor` int(11) NOT NULL,
  `vrecover` int(11) NOT NULL,
  `pwdeltime` int(11) NOT NULL,
  `pinfo` text,
  `bkscene` int(11) default NULL,
  `bkxpos` int(11) default NULL,
  `bkzpos` int(11) default NULL,
  `titleinfo` text,
  `dietime` int(11) NOT NULL,
  `cooldown` text,
  `bankmoney` int(11) NOT NULL,
  `bankend` int(11) NOT NULL,
  `rage` int(11) default '0',
  `reserve` varchar(100) default NULL,
  `dinfo` int(11) default '0',
  `defeq` int(11) default '-1',
  `guildpoint` int(11) default '0',
  `menpaipoint` int(11) default '0',
  `gevil` int(11) default '0',
  `pkvalue` int(11) default '0',
  `otime` int(11) default '0',
  `deltime` int(11) default '0',
  `expinfo` varchar(200) default '0',
  `savetime` int(11) default '0',
  `crc32` int(11) default '0',
  `pvpinfo` text,
  `loginip` int(11) NOT NULL default '0',
  `pkvaluetime` int(11) NOT NULL default '0',
  `fatigue` varchar(40) default NULL,
  `yuanbao` int(11) NOT NULL default '0',
  `visualgem` text,
  `isolditem` smallint(6) NOT NULL default '0',
  `uipoint` int(11) NOT NULL default '0',
  `zengdian` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_char_charguid` (`charguid`),
  UNIQUE KEY `Index_char_charname` (`charname`),
  KEY `Index_char_accname` (`accname`),
  KEY `Index_char_level` (`level`,`exp`),
  KEY `Index_char_yuanbao` (`yuanbao`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_charextra`
--

DROP TABLE IF EXISTS `t_charextra`;
CREATE TABLE `t_charextra` (
  `charguid` int(11) NOT NULL,
  `dbversion` int(11) NOT NULL default '0',
  `buyyuanbao` int(11) NOT NULL default '0',
  `kmcount` int(11) NOT NULL default '0',
  `cmcount` tinyint(4) NOT NULL default '0',
  `sbmoney` int(10) unsigned NOT NULL default '0',
  `sbunlock` int(10) unsigned NOT NULL default '0',
  `sbstatus` smallint(6) NOT NULL default '0',
  `ipregion` int(11) NOT NULL default '-1',
  `petnumextra` tinyint(4) NOT NULL default '0',
  `leagueid` int(11) NOT NULL default '-1',
  `moneyjz` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charguid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_city`
--

DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `aid` bigint(20) NOT NULL auto_increment,
  `poolid` int(11) NOT NULL,
  `citydata` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `Index_city_poolid` (`poolid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_city_building`
--

DROP TABLE IF EXISTS `t_city_building`;
CREATE TABLE `t_city_building` (
  `aid` bigint(20) NOT NULL auto_increment,
  `poolid` int(11) NOT NULL default '0',
  `bdtype` int(11) NOT NULL default '-1',
  `bdid` int(11) NOT NULL default '-1',
  `bdlevel` smallint(6) NOT NULL default '0',
  `ri` text NOT NULL,
  `ricontri` text NOT NULL,
  `rimaxnum` text NOT NULL,
  `riprice` text NOT NULL,
  `ritvalue` text NOT NULL,
  `rivalid` text NOT NULL,
  `rinum` smallint(6) NOT NULL default '0',
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_citybd_poolid` (`poolid`,`bdtype`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_city_info`
--

DROP TABLE IF EXISTS `t_city_info`;
CREATE TABLE `t_city_info` (
  `aid` bigint(20) NOT NULL auto_increment,
  `poolid` int(11) NOT NULL,
  `fcityid1` int(11) NOT NULL default '-1',
  `fboth1` smallint(6) NOT NULL default '0',
  `fcityid2` int(11) NOT NULL default '-1',
  `fboth2` smallint(6) NOT NULL default '0',
  `fcityid3` int(11) NOT NULL default '-1',
  `fboth3` smallint(6) NOT NULL default '0',
  `fcityid4` int(11) NOT NULL default '-1',
  `fboth4` smallint(6) NOT NULL default '0',
  `fcityid5` int(11) NOT NULL default '-1',
  `fboth5` smallint(6) NOT NULL default '0',
  `fcityid6` int(11) NOT NULL default '-1',
  `fboth6` smallint(6) NOT NULL default '0',
  `fcityid7` int(11) NOT NULL default '-1',
  `fboth7` smallint(6) NOT NULL default '0',
  `fcityid8` int(11) NOT NULL default '-1',
  `fboth8` smallint(6) NOT NULL default '0',
  `fnum` int(11) NOT NULL,
  `btime1` int(11) NOT NULL default '0',
  `bguild1` int(11) NOT NULL default '-1',
  `bguild2` int(11) NOT NULL default '-1',
  `btime2` int(11) NOT NULL default '0',
  `bguild3` int(11) NOT NULL default '-1',
  `btime3` int(11) NOT NULL default '0',
  `bnum` int(11) NOT NULL default '0',
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_cityinfo_pooid` (`poolid`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_city_new`
--

DROP TABLE IF EXISTS `t_city_new`;
CREATE TABLE `t_city_new` (
  `poolid` int(11) NOT NULL,
  `guildid` int(11) NOT NULL default '-1',
  `scene` int(11) NOT NULL default '-1',
  `citylevel` smallint(6) NOT NULL default '0',
  `cityname` varchar(30) NOT NULL,
  `cubprog` int(11) NOT NULL default '0',
  `mxbprog` int(11) NOT NULL default '0',
  `cusprog` int(11) NOT NULL default '0',
  `mxsprog` int(11) NOT NULL default '0',
  `curupbld` int(11) NOT NULL default '0',
  `mantain` smallint(6) NOT NULL default '0',
  `indrate` int(11) NOT NULL default '0',
  `argrate` int(11) NOT NULL default '0',
  `comrate` int(11) NOT NULL default '0',
  `defrate` int(11) NOT NULL default '0',
  `scirate` int(11) NOT NULL default '0',
  `extrate` int(11) NOT NULL default '0',
  `leftpoint` int(11) NOT NULL default '0',
  `cuspeifang` int(11) NOT NULL default '0',
  `cusbld` int(11) NOT NULL default '0',
  `smoney` int(11) NOT NULL default '0',
  `smoneyfix` int(11) NOT NULL default '0',
  `bmoney` int(11) NOT NULL default '0',
  `pmoney` int(11) NOT NULL default '0',
  `gmoneymax` int(11) NOT NULL default '0',
  `foundtime` int(11) NOT NULL default '0',
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`poolid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_crc32`
--

DROP TABLE IF EXISTS `t_crc32`;
CREATE TABLE `t_crc32` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `logouttime` int(11) NOT NULL,
  `crc32` int(11) NOT NULL,
  `fulldata` longtext NOT NULL,
  `isdelete` smallint(6) NOT NULL default '0',
  `server` int(11) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `Index_crc_charguid` (`charguid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_cshop`
--

DROP TABLE IF EXISTS `t_cshop`;
CREATE TABLE `t_cshop` (
  `aid` bigint(20) NOT NULL auto_increment,
  `worldid` int(11) NOT NULL,
  `serverid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  `cshopid` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_cshop_PoolId` (`worldid`,`serverid`,`poolid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_cshopitem`
--

DROP TABLE IF EXISTS `t_cshopitem`;
CREATE TABLE `t_cshopitem` (
  `aid` bigint(20) NOT NULL auto_increment,
  `cshopid` int(11) NOT NULL,
  `cshoppos` int(11) NOT NULL,
  `serial` int(11) NOT NULL default '0',
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) character set latin1 collate latin1_bin NOT NULL,
  `gtype` smallint(6) NOT NULL,
  `gvalue` int(11) NOT NULL default '0',
  `svalue` int(11) NOT NULL default '0',
  `ctime` int(11) NOT NULL default '0',
  `costctime` int(11) NOT NULL default '0',
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_cshopitem_cshopid` (`cshopid`,`cshoppos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_findfriendad`
--

DROP TABLE IF EXISTS `t_findfriendad`;
CREATE TABLE `t_findfriendad` (
  `aid` bigint(20) NOT NULL auto_increment,
  `poolid` int(11) NOT NULL,
  `charguid` int(10) unsigned NOT NULL,
  `type` smallint(6) NOT NULL,
  `charname` varchar(50) NOT NULL,
  `charlevel` int(10) unsigned NOT NULL,
  `charsex` smallint(6) NOT NULL,
  `charmenpai` smallint(6) NOT NULL,
  `charguildname` varchar(50) NOT NULL,
  `charismarried` smallint(6) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `announcetext` varchar(128) NOT NULL,
  `messageboard` varchar(4096) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_pcre_pindex` (`poolid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_general_set`
--

DROP TABLE IF EXISTS `t_general_set`;
CREATE TABLE `t_general_set` (
  `aid` bigint(20) NOT NULL auto_increment,
  `sKey` varchar(50) NOT NULL,
  `nVal` int(11) default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_general_set_Index` (`sKey`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_global`
--

DROP TABLE IF EXISTS `t_global`;
CREATE TABLE `t_global` (
  `poolid` int(11) NOT NULL,
  `data1` int(11) NOT NULL,
  PRIMARY KEY  (`poolid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_guild`
--

DROP TABLE IF EXISTS `t_guild`;
CREATE TABLE `t_guild` (
  `aid` bigint(20) NOT NULL auto_increment,
  `guildid` int(11) NOT NULL,
  `guildname` varchar(50) NOT NULL,
  `guildstat` int(11) NOT NULL,
  `chiefguid` int(11) NOT NULL,
  `pcount` int(11) NOT NULL,
  `ucount` int(11) NOT NULL,
  `mucount` int(11) NOT NULL,
  `gpoint` int(11) NOT NULL,
  `guildmoney` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `logevity` int(11) NOT NULL,
  `contribu` int(11) NOT NULL,
  `honor` int(11) NOT NULL,
  `indlvl` int(11) NOT NULL,
  `agrlvl` int(11) NOT NULL,
  `comlvl` int(11) NOT NULL,
  `deflvl` int(11) NOT NULL,
  `techlvl` int(11) NOT NULL,
  `ambilvl` int(11) NOT NULL,
  `admin` text NOT NULL,
  `guilddesc` varchar(150) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `glvl` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL,
  `guilduser` text NOT NULL,
  `guildmsg` varchar(300) NOT NULL,
  `guildextra` longtext NOT NULL,
  `gnameinfo` text NOT NULL,
  `guildboom` text NOT NULL,
  `leagueid` int(11) NOT NULL default '-1',
  `lqltime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_guild_gguild` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_guild_new`
--

DROP TABLE IF EXISTS `t_guild_new`;
CREATE TABLE `t_guild_new` (
  `guildid` int(11) NOT NULL,
  `guilddesc` varchar(150) NOT NULL,
  `guildname` varchar(50) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `guildstat` smallint(6) NOT NULL default '0',
  `glvl` int(11) NOT NULL default '0',
  `chiefguid` int(11) NOT NULL default '0',
  `pcount` int(11) NOT NULL default '0',
  `ucount` int(11) NOT NULL default '0',
  `mucount` int(11) NOT NULL default '0',
  `gpoint` int(11) NOT NULL default '0',
  `guildmoney` int(11) NOT NULL default '0',
  `cityid` int(11) NOT NULL default '0',
  `ctime` int(11) NOT NULL default '0',
  `logevity` int(11) NOT NULL default '0',
  `contribu` int(11) NOT NULL default '0',
  `honor` int(11) NOT NULL default '0',
  `indlvl` int(11) NOT NULL default '0',
  `agrlvl` int(11) NOT NULL default '0',
  `comlvl` int(11) NOT NULL default '0',
  `deflvl` int(11) NOT NULL default '0',
  `techlvl` int(11) NOT NULL default '0',
  `ambilvl` int(11) NOT NULL default '0',
  `admin` text NOT NULL,
  `fixucount` int(11) NOT NULL default '0',
  `salarytime` int(11) NOT NULL default '0',
  `guildmsg` varchar(300) NOT NULL,
  `dataversion` int(11) NOT NULL default '0',
  `isvalid` int(11) NOT NULL default '0',
  `gnameinfo` text NOT NULL,
  `guildboom` text NOT NULL,
  `leagueid` int(11) NOT NULL default '-1',
  `lqltime` int(11) NOT NULL default '0',
  `battle_succ` int(11) NOT NULL default '0',
  `battle_fail` int(11) NOT NULL default '0',
  `battle_score` int(11) NOT NULL default '0',
  `battle_kill` int(11) NOT NULL default '0',
  `battle_res` int(11) NOT NULL default '0',
  `week_suc0` int(11) NOT NULL default '0',
  `week_suc1` int(11) NOT NULL default '0',
  `week_suc2` int(11) NOT NULL default '0',
  `week_suc3` int(11) NOT NULL default '0',
  `week_fal0` int(11) NOT NULL default '0',
  `week_fal1` int(11) NOT NULL default '0',
  `week_fal2` int(11) NOT NULL default '0',
  `week_fal3` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_guild_user`
--

DROP TABLE IF EXISTS `t_guild_user`;
CREATE TABLE `t_guild_user` (
  `aid` bigint(20) NOT NULL auto_increment,
  `guildid` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) NOT NULL,
  `guildpos` smallint(6) NOT NULL,
  `lastontime` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `menpai` smallint(6) NOT NULL,
  `contri` int(11) NOT NULL,
  `maxcoutri` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `pwcontri` int(11) NOT NULL,
  `cwcontri` int(11) NOT NULL,
  `guildpostime` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `gptime` int(11) NOT NULL,
  `lastdowntime` int(11) NOT NULL,
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_gusr_guildpos` (`guildid`,`pos`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_impact`
--

DROP TABLE IF EXISTS `t_impact`;
CREATE TABLE `t_impact` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `imdata` text NOT NULL,
  `dbversion` int(11) default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_impact_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=63535 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_iteminfo`
--

DROP TABLE IF EXISTS `t_iteminfo`;
CREATE TABLE `t_iteminfo` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `guid` int(11) NOT NULL,
  `world` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `itemtype` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `p9` int(11) NOT NULL,
  `p10` int(11) NOT NULL,
  `p11` int(11) NOT NULL,
  `p12` int(11) NOT NULL,
  `p13` int(11) NOT NULL,
  `p14` int(11) NOT NULL,
  `p15` int(11) default '0',
  `p16` int(11) default '0',
  `p17` int(11) default '0',
  `creator` varchar(60) default '0',
  `isvalid` smallint(6) NOT NULL default '1',
  `dbversion` int(11) default '0',
  `fixattr` varchar(200) NOT NULL,
  `var` varchar(40) default '0',
  `visualid` int(11) NOT NULL default '0',
  `maxgemid` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_it_charguid` (`charguid`,`pos`),
  KEY `Index_it_itemguid` (`guid`,`world`,`server`),
  KEY `Index_iteminfo_itemtype` (`itemtype`,`isvalid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_itemkey`
--

DROP TABLE IF EXISTS `t_itemkey`;
CREATE TABLE `t_itemkey` (
  `aid` bigint(20) NOT NULL auto_increment,
  `sid` int(11) NOT NULL,
  `smkey` int(11) NOT NULL,
  `serial` int(11) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `Index_itk_sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_league`
--

DROP TABLE IF EXISTS `t_league`;
CREATE TABLE `t_league` (
  `leagueid` int(11) NOT NULL,
  `leaguename` varchar(40) NOT NULL,
  `leaguedesc` varchar(80) NOT NULL,
  `creatorname` varchar(50) NOT NULL,
  `chiefguid` int(11) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `createtime` int(11) NOT NULL,
  `applynum` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`leagueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_league_apply`
--

DROP TABLE IF EXISTS `t_league_apply`;
CREATE TABLE `t_league_apply` (
  `leagueid` int(11) NOT NULL,
  `applypos` int(11) NOT NULL,
  `applyguildid` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  UNIQUE KEY `Index_league_apply_id` (`leagueid`,`applypos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_league_usr`
--

DROP TABLE IF EXISTS `t_league_usr`;
CREATE TABLE `t_league_usr` (
  `leagueid` int(11) NOT NULL,
  `guildpos` int(11) NOT NULL,
  `guildid` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  UNIQUE KEY `Index_league_usr_id` (`leagueid`,`guildpos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_mail`
--

DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail` (
  `aid` bigint(20) NOT NULL auto_increment,
  `sender` varchar(50) NOT NULL,
  `recer` varchar(50) NOT NULL,
  `mailinfo` varchar(100) NOT NULL,
  `mailcont` text NOT NULL,
  `pindex` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_mail_mail` (`pindex`)
) ENGINE=InnoDB AUTO_INCREMENT=46322 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_mission`
--

DROP TABLE IF EXISTS `t_mission`;
CREATE TABLE `t_mission` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `missionid` int(11) NOT NULL,
  `scriptid` int(11) NOT NULL,
  `flag` smallint(6) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `dbversion` int(11) default '0',
  `isvalid` int(11) default '1',
  PRIMARY KEY  (`aid`),
  KEY `Index_mi_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=106885 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pet`
--

DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `hpetguid` int(11) NOT NULL,
  `lpetguid` int(11) NOT NULL,
  `dataxid` int(11) NOT NULL,
  `petname` varchar(50) NOT NULL,
  `petnick` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `needlevel` int(11) NOT NULL,
  `atttype` int(11) NOT NULL,
  `aitype` int(11) NOT NULL,
  `camp` varchar(30) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `life` int(11) NOT NULL,
  `pettype` smallint(6) NOT NULL,
  `genera` smallint(6) NOT NULL,
  `enjoy` smallint(6) NOT NULL,
  `strper` int(11) NOT NULL,
  `conper` int(11) NOT NULL,
  `dexper` int(11) NOT NULL,
  `sprper` int(11) NOT NULL,
  `iprper` int(11) NOT NULL,
  `gengu` int(11) NOT NULL,
  `growrate` int(11) NOT NULL,
  `repoint` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `str` int(11) NOT NULL,
  `con` int(11) NOT NULL,
  `dex` int(11) NOT NULL,
  `spr` int(11) NOT NULL,
  `ipr` int(11) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `dbversion` int(11) default '0',
  `flags` int(11) default NULL,
  `isvalid` int(11) default '1',
  `pwflag` int(11) default '0',
  `pclvl` int(11) default '0',
  `hspetguid` int(11) default '0',
  `lspetguid` int(11) default '0',
  `savvy` int(11) default '0',
  `title` varchar(200) NOT NULL default '',
  `curtitle` int(11) NOT NULL default '-1',
  `us_unlock_time` int(11) NOT NULL default '0',
  `us_reserve` int(11) NOT NULL default '0',
  `dataversion` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_Pet_Charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_petcreate`
--

DROP TABLE IF EXISTS `t_petcreate`;
CREATE TABLE `t_petcreate` (
  `aid` bigint(20) NOT NULL auto_increment,
  `pindex` int(11) NOT NULL,
  `pairdata` text NOT NULL,
  `isvalid` int(11) NOT NULL,
  `dataversion` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_pcre_pindex` (`pindex`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop`
--

DROP TABLE IF EXISTS `t_pshop`;
CREATE TABLE `t_pshop` (
  `aid` bigint(20) NOT NULL auto_increment,
  `sid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `shopguid` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  `maxbmoney` int(11) NOT NULL,
  `basemoney` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `shopdesc` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `isopen` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `saleprice` int(11) NOT NULL,
  `partner` text NOT NULL,
  `recoder` longtext NOT NULL,
  `stallinfo` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  `partnum` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `buyinfo` longtext NOT NULL,
  `dataversion` int(11) NOT NULL default '0',
  `freeze` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_pshop_shopguid` (`shopguid`),
  KEY `Index_pshop_sidpid` (`sid`,`poolid`),
  KEY `Index_pshop_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop_new`
--

DROP TABLE IF EXISTS `t_pshop_new`;
CREATE TABLE `t_pshop_new` (
  `aid` bigint(20) NOT NULL auto_increment,
  `sid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `shopguid` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  `maxbmoney` int(11) NOT NULL,
  `basemoney` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `shopdesc` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `isopen` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `saleprice` int(11) NOT NULL,
  `partner` text NOT NULL,
  `recoder` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  `partnum` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `dataversion` int(11) NOT NULL default '0',
  `freeze` smallint(6) NOT NULL default '0',
  `buydesc` varchar(80) NOT NULL,
  `buyreserve` varchar(50) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `Index_pshop_new_shopguid` (`shopguid`),
  KEY `Index_pshop_new_sidpid` (`sid`,`poolid`),
  KEY `Index_pshop_new_ownerguid` (`ownerguid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop_stall`
--

DROP TABLE IF EXISTS `t_pshop_stall`;
CREATE TABLE `t_pshop_stall` (
  `aid` bigint(20) NOT NULL auto_increment,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `Box_Status` smallint(6) NOT NULL,
  `Box_Type` smallint(6) NOT NULL,
  `Box_VldNum` smallint(6) NOT NULL,
  `Box_FstPage` int(11) NOT NULL,
  `Buy_StlRsv` varchar(50) NOT NULL,
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_pshop_stall_ShpStlIndex` (`shopguid`,`stallid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop_stall_buy`
--

DROP TABLE IF EXISTS `t_pshop_stall_buy`;
CREATE TABLE `t_pshop_stall_buy` (
  `aid` bigint(20) NOT NULL auto_increment,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Buy_ItemNum` int(11) NOT NULL,
  `Buy_ItemIdx` int(11) NOT NULL,
  `Buy_Price` int(11) NOT NULL,
  `Buy_InStlNum` smallint(6) NOT NULL,
  `Itm_charguid` int(11) NOT NULL,
  `Itm_guid` int(11) NOT NULL,
  `Itm_world` int(11) NOT NULL,
  `Itm_server` int(11) NOT NULL,
  `Itm_itemtype` int(11) NOT NULL,
  `Itm_pos` smallint(6) NOT NULL,
  `Itm_p1` int(11) NOT NULL,
  `Itm_p2` int(11) NOT NULL,
  `Itm_p3` int(11) NOT NULL,
  `Itm_p4` int(11) NOT NULL,
  `Itm_p5` int(11) NOT NULL,
  `Itm_p6` int(11) NOT NULL,
  `Itm_p7` int(11) NOT NULL,
  `Itm_p8` int(11) NOT NULL,
  `Itm_p9` int(11) NOT NULL,
  `Itm_p10` int(11) NOT NULL,
  `Itm_p11` int(11) NOT NULL,
  `Itm_p12` int(11) NOT NULL,
  `Itm_p13` int(11) NOT NULL,
  `Itm_p14` int(11) NOT NULL,
  `Itm_p15` int(11) default '0',
  `Itm_p16` int(11) default '0',
  `Itm_p17` int(11) default '0',
  `Itm_creator` varchar(60) default '0',
  `Itm_isvalid` smallint(6) NOT NULL default '1',
  `Itm_dbversion` int(11) default '0',
  `Itm_fixattr` varchar(200) NOT NULL,
  `Itm_var` varchar(40) default '0',
  `Itm_visualid` int(11) NOT NULL default '0',
  `Itm_maxgemid` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_pshop_stall_buy_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop_stall_itm`
--

DROP TABLE IF EXISTS `t_pshop_stall_itm`;
CREATE TABLE `t_pshop_stall_itm` (
  `aid` bigint(20) NOT NULL auto_increment,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Box_OnSale` smallint(6) NOT NULL,
  `Box_Price` int(11) NOT NULL,
  `Itm_charguid` int(11) NOT NULL,
  `Itm_guid` int(11) NOT NULL,
  `Itm_world` int(11) NOT NULL,
  `Itm_server` int(11) NOT NULL,
  `Itm_itemtype` int(11) NOT NULL,
  `Itm_pos` smallint(6) NOT NULL,
  `Itm_p1` int(11) NOT NULL,
  `Itm_p2` int(11) NOT NULL,
  `Itm_p3` int(11) NOT NULL,
  `Itm_p4` int(11) NOT NULL,
  `Itm_p5` int(11) NOT NULL,
  `Itm_p6` int(11) NOT NULL,
  `Itm_p7` int(11) NOT NULL,
  `Itm_p8` int(11) NOT NULL,
  `Itm_p9` int(11) NOT NULL,
  `Itm_p10` int(11) NOT NULL,
  `Itm_p11` int(11) NOT NULL,
  `Itm_p12` int(11) NOT NULL,
  `Itm_p13` int(11) NOT NULL,
  `Itm_p14` int(11) NOT NULL,
  `Itm_p15` int(11) default '0',
  `Itm_p16` int(11) default '0',
  `Itm_p17` int(11) default '0',
  `Itm_creator` varchar(60) default '0',
  `Itm_isvalid` smallint(6) NOT NULL default '1',
  `Itm_dbversion` int(11) default '0',
  `Itm_fixattr` varchar(200) NOT NULL,
  `Itm_var` varchar(40) default '0',
  `Itm_visualid` int(11) NOT NULL default '0',
  `Itm_maxgemid` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_pshop_stall_itm_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_pshop_stall_pet`
--

DROP TABLE IF EXISTS `t_pshop_stall_pet`;
CREATE TABLE `t_pshop_stall_pet` (
  `aid` bigint(20) NOT NULL auto_increment,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Box_OnSale` smallint(6) NOT NULL,
  `Box_Price` int(11) NOT NULL,
  `Pet_charguid` int(11) NOT NULL,
  `Pet_hpetguid` int(11) NOT NULL,
  `Pet_lpetguid` int(11) NOT NULL,
  `Pet_dataxid` int(11) NOT NULL,
  `Pet_petname` varchar(50) NOT NULL,
  `Pet_petnick` varchar(50) NOT NULL,
  `Pet_level` int(11) NOT NULL,
  `Pet_needlevel` int(11) NOT NULL,
  `Pet_atttype` int(11) NOT NULL,
  `Pet_aitype` int(11) NOT NULL,
  `Pet_camp` varchar(30) NOT NULL,
  `Pet_hp` int(11) NOT NULL,
  `Pet_mp` int(11) NOT NULL,
  `Pet_life` int(11) NOT NULL,
  `Pet_pettype` smallint(6) NOT NULL,
  `Pet_genera` smallint(6) NOT NULL,
  `Pet_enjoy` smallint(6) NOT NULL,
  `Pet_strper` int(11) NOT NULL,
  `Pet_conper` int(11) NOT NULL,
  `Pet_dexper` int(11) NOT NULL,
  `Pet_sprper` int(11) NOT NULL,
  `Pet_iprper` int(11) NOT NULL,
  `Pet_gengu` int(11) NOT NULL,
  `Pet_growrate` int(11) NOT NULL,
  `Pet_repoint` int(11) NOT NULL,
  `Pet_exp` int(11) NOT NULL,
  `Pet_str` int(11) NOT NULL,
  `Pet_con` int(11) NOT NULL,
  `Pet_dex` int(11) NOT NULL,
  `Pet_spr` int(11) NOT NULL,
  `Pet_ipr` int(11) NOT NULL,
  `Pet_skill` varchar(200) NOT NULL,
  `Pet_dbversion` int(11) default '0',
  `Pet_flags` int(11) default NULL,
  `Pet_isvalid` int(11) default '1',
  `Pet_pwflag` int(11) default '0',
  `Pet_pclvl` int(11) default '0',
  `Pet_hspetguid` int(11) default '0',
  `Pet_lspetguid` int(11) default '0',
  `Pet_savvy` int(11) default '0',
  `Pet_title` varchar(200) NOT NULL default '',
  `Pet_curtitle` int(11) NOT NULL default '-1',
  `Pet_us_unlock_time` int(11) NOT NULL default '0',
  `Pet_us_reserve` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `Index_pshop_stall_pet_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_relation`
--

DROP TABLE IF EXISTS `t_relation`;
CREATE TABLE `t_relation` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `fguid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fpoint` int(11) NOT NULL,
  `reflag` smallint(6) NOT NULL,
  `groupid` smallint(6) NOT NULL,
  `extdata` varchar(100) NOT NULL,
  `dbversion` int(11) default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_re_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=29092 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_skill`
--

DROP TABLE IF EXISTS `t_skill`;
CREATE TABLE `t_skill` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `skid` smallint(6) NOT NULL,
  `sktime` int(11) default NULL,
  `dbversion` int(11) default '0',
  `isvalid` int(11) default NULL,
  PRIMARY KEY  (`aid`),
  KEY `Index_sk_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=427696 DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_var`
--

DROP TABLE IF EXISTS `t_var`;
CREATE TABLE `t_var` (
  `maxcharguid` int(11) NOT NULL,
  PRIMARY KEY  (`maxcharguid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_xfallexp`
--

DROP TABLE IF EXISTS `t_xfallexp`;
CREATE TABLE `t_xfallexp` (
  `xflv` int(11) NOT NULL,
  `id1all` int(11) NOT NULL,
  `id2all` int(11) NOT NULL,
  `id3all` int(11) NOT NULL,
  `id4all` int(11) NOT NULL,
  `id5all` int(11) NOT NULL,
  `id6all` int(11) NOT NULL,
  `id7all` int(11) NOT NULL,
  PRIMARY KEY  (`xflv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `t_xinfa`
--

DROP TABLE IF EXISTS `t_xinfa`;
CREATE TABLE `t_xinfa` (
  `aid` bigint(20) NOT NULL auto_increment,
  `charguid` int(11) NOT NULL,
  `xinfaid` smallint(6) NOT NULL,
  `xinfalvl` smallint(6) NOT NULL,
  `dbversion` int(11) default '0',
  PRIMARY KEY  (`aid`),
  KEY `Index_xinfa_charguid` (`charguid`)
) ENGINE=InnoDB AUTO_INCREMENT=77746 DEFAULT CHARSET=latin1;

--
-- Dumping routines for database 'tlbbdb'
--
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `cacultotal` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `cacultotal`(
lowindex        int,
highindex       int)
begin
declare lowvalue  int;
declare highvalue int;
set lowvalue = 0;
set highvalue = 0;
select data1 into lowvalue from t_global where poolid=lowindex;
select data1 into highvalue from t_global where poolid=highindex;
select sum(highvalue*2000000000+lowvalue) as total;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `create_newchar` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `create_newchar`(
paccname              varchar(50) binary,
pcharname             varchar(50) binary,
psex                  smallint,
pcreatetime           int,
phaircolor            int,
phairmodel            int,
pfacecolor            int,
pfacemodel            int,
pheadid               int,
pdefeq                int)
begin
declare rguid      	  int default -1;
declare result		  int default -1;
start transaction; 
 select charguid into rguid from t_char where charname=pcharname limit 1;
 if found_rows() = 0 then
  set rguid = -1;
  update t_var set maxcharguid=maxcharguid+1;
  select maxcharguid into rguid from t_var limit 1;
  
  if rguid <> -1 then
   insert into t_char(accname,charguid,charname,title,pw,sex,level,enegry,outlook,scene,xpos,zpos,menpai,
    hp,mp,strikepoint,str,con,dex,spr,ipr,points,logouttime,logintime,createtime,dbversion,haircolor,
    hairmodel,facecolor,facemodel,vmoney,settings,isvalid,exp,pres,
    shopinfo,carrypet,guldid,teamid,headid,erecover,vigor,maxvigor,vrecover,energymax,pwdeltime,
    pinfo,bkscene,bkxpos,bkzpos,titleinfo,dietime,bankmoney,bankend,cooldown,defeq)
   values(paccname,rguid,pcharname,'','',psex,1,0,0,0,100,100,9,
    5000,5000,0,5,5,5,5,5,0,0,0,pcreatetime,0,phaircolor,
    phairmodel,pfacecolor,pfacemodel,0,'',1,0,'',
		'','',-1,-1,pheadid,0,0,0,0,0,0,
		'',0,0,0,'',0,0,20,'',pdefeq);
   select row_count() into result;
  else
   set result = -3; 
  end if;
 else
   set result = -2;	
 end if;
commit;
select result,rguid;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `delete_char_new` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `delete_char_new`(
pcharname             varchar(100),
paccount              varchar(100),
pcharguid             int,
pdeltime              int,
pcrc32                int)
begin
declare rcharguid   int;
declare rlevel      int;
declare rdeltime    int;
declare rnext       int;
declare rdbversion  int;
declare rcrc        int;
set     rcharguid = -1;
set     rnext = 0;
set     rdbversion = 0;
start transaction;
select charguid,level,deltime,crc32 into rcharguid,rlevel,rdeltime,rcrc from t_char
    where accname=paccount and charguid = pcharguid and isvalid=1;
if rcharguid<>-1 then
	if rlevel<1 then
          update t_char set isvalid = 0,charname = CONCAT(charname,'@DELETE_',pcharguid)
            where accname= paccount and charguid = pcharguid;
          select dbversion into rdbversion from t_char
            where accname= paccount and charguid = pcharguid;
          set rnext = 1;
    else 
       set rcrc = rcrc + pcrc32;
	   if rdeltime=0 then
            update t_char set deltime= pdeltime,crc32=rcrc where charguid= pcharguid;        
	   end if;
	end if;
end if;
commit;
    select rnext,rdbversion;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `fetch_guid` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `fetch_guid`()
begin
declare charguid  int default -1;
start transaction;
select t_var.maxcharguid into charguid from t_var limit 1; 
if charguid<>-1 then
    update t_var set t_var.maxcharguid = charguid+1 where t_var.maxcharguid=charguid;
end if;
commit;
select charguid;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `fetch_savetime` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `fetch_savetime`(
pcharguid	int
)
begin
	declare 	visvalidtime 		 	int;
	declare 	vsavetime		 	int;
	declare 	vnowtime		 	 int;
    declare     vupdatetime          int;
	set 		vsavetime = -1;
	set 		vnowtime  = -1;
	set 		visvalidtime = 0;
 	start transaction;
	 select savetime into vsavetime from t_char where charguid = pcharguid;
	 if vsavetime = -1 then
		set  visvalidtime = 1;
	 else
          set vnowtime = time_to_sec(now());
	 	  if	abs(vsavetime-vnowtime)<300 then
	 	 	set  visvalidtime = 2;
		  else
	 	   
	 	  	update t_char set savetime = vnowtime where charguid = pcharguid;
	 	  	select savetime into vupdatetime from t_char where charguid = pcharguid;
	 	  	if vupdatetime = vnowtime then
	 	  		set visvalidtime = 3;
	 	  	else
	 	  	 	set visvalidtime = 4;
	 	  	end if;
	 	  end if;
	 end if;
  commit;
	select visvalidtime;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `get_50level_list` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_50level_list`()
begin
 select accname,charguid,charname,menpai,level,exp 
 from t_char 
 where charname not like '%DELETE%'
 order by level desc, exp desc
 limit 50;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `get_50money_list` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_50money_list`()
begin
 select a.accname,a.charguid,a.charname,a.menpai, 
  (a.vmoney+a.bankmoney+if(isnull(b.profit),0,b.profit)) as totalmoney
 from t_char as a left join t_pshop as b
  on a.charguid=b.ownerguid 
 where a.charname not like '%DELETE%'
 order by totalmoney desc 
 limit 50;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `get_50xinfa_list` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_50xinfa_list`()
begin
  create temporary table tmp_xinfa
 (charguid int not null,
  totalexp bigint not null
 )engine=myisam;
 
 insert into tmp_xinfa
 select a.charguid,sum(
  case mod(a.xinfaid,6)
   when 1 then b.id1all
   when 2 then b.id2all
   when 3 then b.id3all
   when 4 then b.id4all
   when 5 then b.id5all
   when 0 then b.id6all
   else b.id7all
  end
  ) as totalexp
 from t_xinfa as a left join t_xfallexp as b
  on a.xinfalvl=b.xflv
 where a.charguid in(
 select charguid from t_char where charname not like '%DELETE%'
 )
 group by a.charguid
 order by totalexp desc
 limit 50;
 
 select a.accname,b.charguid,a.charname,a.menpai,a.exp,b.totalexp
 from t_char as a,tmp_xinfa as b 
 where b.charguid=a.charguid
 order by b.totalexp desc, a.exp desc;
 
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_charextra` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_charextra`(
pcharguid           int,
pdbversion          int,
pbuyyuanbao         int,
pkmcount            int,
pcmcount            tinyint,
psbmoney            int unsigned,
psbunlock           int unsigned,
psbstatus           smallint,
pipregion           int,
ppetnumextra        tinyint,
pleagueid           int,
pmoneyjz            int
)
begin
	declare sameid  int;
    set sameid = -1;
    
    select charguid into sameid from t_charextra where charguid=pcharguid;
    if  sameid <> -1 then
        update t_charextra set
          dbversion=pdbversion,
          buyyuanbao=pbuyyuanbao,
          kmcount=pkmcount,
          cmcount=pcmcount,
          sbmoney=psbmoney,
          sbunlock=psbunlock,
          sbstatus=psbstatus,
          ipregion=pipregion,
          petnumextra=ppetnumextra,
          leagueid=pleagueid,
          moneyjz=pmoneyjz 
        where charguid=pcharguid and dbversion<=pdbversion;
    else
        insert into t_charextra (
          charguid,
          dbversion,
          buyyuanbao,
          kmcount,
          cmcount,
          sbmoney,
          sbunlock,
          sbstatus,
          ipregion,
          petnumextra,
          leagueid,
          moneyjz)
        values (
          pcharguid,
          pdbversion,
          pbuyyuanbao,
          pkmcount,
          pcmcount,
          psbmoney,
          psbunlock,
          psbstatus,
          pipregion,
          ppetnumextra,
          pleagueid,
          pmoneyjz);
    end if;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cityinfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cityinfo`(pcitydata longtext,ppoolid int,pisvalid int)
begin
declare rcount int;
start transaction;
select poolid into rcount from t_city where poolid = ppoolid;
if rcount = ppoolid then
		update t_city set citydata=pcitydata,isvalid=pisvalid
            	where poolid=ppoolid;
else
		insert into t_city(poolid,citydata,
        	isvalid)  values(ppoolid,pcitydata,pisvalid);	
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cityinfo_bld` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cityinfo_bld`(
ppoolid int,
pbdtype int,
pbdid int,
pbdlevel smallint,
pri text,
pricontri text,
primaxnum text,
priprice text,
pritvalue text,
privalid text,
prinum smallint,
pisvalid int
)
begin

declare existpos int default -1;
start transaction;
select bdtype into existpos from t_city_building where poolid=ppoolid and bdtype=pbdtype;
if existpos = pbdtype then
	update t_city_building set
		bdid =pbdid,
		bdlevel =pbdlevel,
		ri =pri,
		ricontri =pricontri,
		rimaxnum =primaxnum,
		riprice =priprice,
		ritvalue =pritvalue,
		rivalid =privalid,
		rinum =prinum,
		isvalid =pisvalid
	where poolid=ppoolid and bdtype=pbdtype;
else
	insert into t_city_building(
		poolid,
		bdtype,
		bdid,
		bdlevel,
		ri,
		ricontri,
		rimaxnum,
		riprice,
		ritvalue,
		rivalid,
		rinum,
		isvalid
	)values(
		ppoolid,
		pbdtype,
		pbdid,
		pbdlevel,
		pri,
		pricontri,
		primaxnum,
		priprice,
		pritvalue,
		privalid,
		prinum,
		pisvalid
	);
end if;	

commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cityinfo_ext` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cityinfo_ext`(
ppoolid int,
pfcityid1 int,
pfboth1 smallint,
pfcityid2 int,
pfboth2 smallint,
pfcityid3 int,
pfboth3 smallint,
pfcityid4 int,
pfboth4 smallint,
pfcityid5 int,
pfboth5 smallint,
pfcityid6 int,
pfboth6 smallint,
pfcityid7 int,
pfboth7 smallint,
pfcityid8 int,
pfboth8 smallint,
pfnum int,
pbtime1 int,
pbguild1 int,
pbguild2 int,
pbtime2 int,
pbguild3 int,
pbtime3 int,
pbnum int,
pisvalid int
)
begin

declare existpos int default -1;
start transaction;
select poolid into existpos from t_city_info where poolid=ppoolid;
if existpos = ppoolid then
	update t_city_info set
		fcityid1 =pfcityid1,
		fboth1   =pfboth1,
		fcityid2 =pfcityid2,
		fboth2   =pfboth2,
		fcityid3 =pfcityid3,
		fboth3   =pfboth3,
		fcityid4 =pfcityid4,
		fboth4   =pfboth4,
		fcityid5 =pfcityid5,
		fboth5   =pfboth5,
		fcityid6 =pfcityid6,
		fboth6   =pfboth6,
		fcityid7 =pfcityid7,
		fboth7   =pfboth7,
		fcityid8 =pfcityid8,
		fboth8   =pfboth8,
		fnum     =pfnum,
		btime1   =pbtime1,
		bguild1  =pbguild1,
		bguild2  =pbguild2,
		btime2   =pbtime2,
		bguild3  =pbguild3,
		btime3   =pbtime3,
		bnum     =pbnum,
		isvalid  =pisvalid
	where poolid=ppoolid;
else
	insert into t_city_info(
		poolid,
		fcityid1,
		fboth1,
		fcityid2,
		fboth2,
		fcityid3,
		fboth3,
		fcityid4,
		fboth4,
		fcityid5,
		fboth5,
		fcityid6,
		fboth6,
		fcityid7,
		fboth7,
		fcityid8,
		fboth8,
		fnum,
		btime1,
		bguild1,
		bguild2,
		btime2,
		bguild3,
		btime3,
		bnum,
		isvalid
	)values(
		ppoolid,
		pfcityid1,
		pfboth1,
		pfcityid2,
		pfboth2,
		pfcityid3,
		pfboth3,
		pfcityid4,
		pfboth4,
		pfcityid5,
		pfboth5,
		pfcityid6,
		pfboth6,
		pfcityid7,
		pfboth7,
		pfcityid8,
		pfboth8,
		pfnum,
		pbtime1,
		pbguild1,
		pbguild2,
		pbtime2,
		pbguild3,
		pbtime3,
		pbnum,
		pisvalid
	);
end if;

commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cityinfo_new` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cityinfo_new`(
ppoolid	int,
pguildid	int,
pscene	int,
pcitylevel	smallint,
pcityname	varchar(30),
pcubprog	int,
pmxbprog    int,
pcusprog	int,
pmxsprog    int,
pcurupbld	int,
pmantain	smallint,
pindrate	int,
pargrate	int,
pcomrate	int,
pdefrate	int,
pscirate	int,
pextrate	int,
pleftpoint  int,
pcuspeifang	int,
pcusbld	int,
psmoney	int,
psmoneyfix	int,
pbmoney	int,
ppmoney	int,
pgmoneymax	int,
pfoundtime	int,
pisvalid	int
)
begin

declare rcount int default -1;

start transaction;
select poolid into rcount from t_city_new where poolid=ppoolid;
if rcount = ppoolid then
	update t_city_new set
		guildid =pguildid,
		scene =pscene,
		citylevel =pcitylevel,
		cityname =pcityname,
		cubprog =pcubprog,
        mxbprog =pmxbprog,
		cusprog =pcusprog,
        mxsprog =pmxsprog,
		curupbld =pcurupbld,
		mantain =pmantain,
		indrate =pindrate,
		argrate =pargrate,
		comrate =pcomrate,
		defrate =pdefrate,
		scirate =pscirate,
		extrate =pextrate,
        leftpoint =pleftpoint,
		cuspeifang =pcuspeifang,
		cusbld =pcusbld,
		smoney =psmoney,
		smoneyfix =psmoneyfix,
		bmoney =pbmoney,
		pmoney =ppmoney,
		gmoneymax =pgmoneymax,
		foundtime =pfoundtime,
		isvalid =pisvalid 
	where poolid=ppoolid;
else
	insert into t_city_new(
		poolid,
		guildid,
		scene,
		citylevel,
		cityname,
		cubprog,
        mxbprog,
		cusprog,
        mxsprog,
		curupbld,
		mantain,
		indrate,
		argrate,
		comrate,
		defrate,
		scirate,
		extrate,
        leftpoint,
		cuspeifang,
		cusbld,
		smoney,
		smoneyfix,
		bmoney,
		pmoney,
		gmoneymax,
		foundtime,
		isvalid
	)values(
		ppoolid,
		pguildid,
		pscene,
		pcitylevel,
		pcityname,
		pcubprog,
		pmxbprog,
		pcusprog,
		pmxsprog,
		pcurupbld,
		pmantain,
		pindrate,
		pargrate,
		pcomrate,
		pdefrate,
		pscirate,
		pextrate,
        pleftpoint,
		pcuspeifang,
		pcusbld,
		psmoney,
		psmoneyfix,
		pbmoney,
		ppmoney,
		pgmoneymax,
		pfoundtime,
		pisvalid
	);
end if;

commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cshop` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cshop`(
pworldid            int,
pserverid           int,
ppoolid             int,
pcshopid            int
)
begin
	declare sameid  int;
    set sameid = -1;
    
start transaction;
    select poolid into sameid from t_cshop 
    where worldid=pworldid and serverid=pserverid and poolid=ppoolid;
    if  sameid <> -1 then
        update t_cshop set cshopid=pcshopid,isvalid=1
        where worldid=pworldid and serverid=pserverid and poolid=ppoolid;
    else
        insert into t_cshop (worldid,serverid,poolid,isvalid,cshopid)
        values (pworldid,pserverid,ppoolid, 1, pcshopid);
    end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_cshopitem` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_cshopitem`(
pcshopid            int,
pcshoppos           int,
pserial             int,
pcharguid           int,
pcharname           varchar(50) binary,
pgtype              smallint,
pgvalue             int,
psvalue             int,
pctime              int,
pcostctime          int
)
begin
	declare sameid  int;
    declare samepos int;
    set sameid = -1;
    set samepos = -1;

start transaction;
    select cshopid,cshoppos into sameid,samepos 
    from t_cshopitem 
    where cshopid=pcshopid and cshoppos=pcshoppos;
    
    if  sameid <> -1 then
        update t_cshopitem
        set serial=pserial,charguid=pcharguid,charname=pcharname,
            gtype=pgtype,gvalue=pgvalue,svalue=psvalue,ctime=pctime,
            costctime=pcostctime,isvalid=1
        where cshopid=pcshopid and cshoppos=pcshoppos;
    else
        insert into t_cshopitem (cshopid,cshoppos,serial,charguid,charname,gtype,gvalue,svalue,ctime,costctime,isvalid) 
        values (pcshopid,pcshoppos,pserial,pcharguid,pcharname,pgtype,pgvalue,psvalue,pctime,pcostctime,1);
    end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_findfriendad` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_findfriendad`(
   ppoolid	                      int,           
   pcharguid                      int unsigned,          
   ptype                          smallint,     
   pcharname                      varchar(50),  
   pcharlevel                     int unsigned,          
   pcharsex                       smallint,     
   pcharmenpai                    smallint,     
   pcharguildname                 varchar(50),  
   pcharismarried                 smallint,     
   psendtime                      int unsigned,          
   pannouncetext                  varchar(128), 
   pmessageboard                  varchar(4096),
   pisvalid                       int          
)
begin
	declare rcount                  int;
start transaction;

	select poolid into rcount from t_findfriendad where poolid = ppoolid;
	if rcount = ppoolid then
			update t_findfriendad set
				poolid	      =	ppoolid,	      
				charguid      =	pcharguid,     
				type          =	ptype,         
				charname      =	pcharname,     
				charlevel     =	pcharlevel,     
				charsex       =	pcharsex,       
				charmenpai    =	pcharmenpai,   
				charguildname =	pcharguildname,
				charismarried =	pcharismarried,
				sendtime      =	psendtime,     
				announcetext  =	pannouncetext, 
				messageboard  =	pmessageboard, 
				isvalid       =	pisvalid where poolid = ppoolid;
	else
			insert into t_findfriendad(
				poolid,	      
				charguid,     
				type,         
				charname,     
				charlevel,    
				charsex,      
				charmenpai,   
				charguildname,
				charismarried,
				sendtime,     
				announcetext, 
				messageboard, 
				isvalid ) values (
				ppoolid,	      
				pcharguid,     
				ptype,         
				pcharname,     
				pcharlevel,    
				pcharsex,      
				pcharmenpai,   
				pcharguildname,
				pcharismarried,
				psendtime,     
				pannouncetext, 
				pmessageboard, 
				pisvalid );
	end if;
	commit;
      
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_general_set` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_general_set`(
psKey                 varchar(50),
pnVal                 int)
begin
declare _sKey varchar(50) default NULL;
start transaction;
select sKey into _sKey from t_general_set where sKey = psKey;
if _sKey = psKey then
		update t_general_set set sKey=psKey,
                             nVal=pnVal 
                             where  sKey = psKey;
else
		insert into t_general_set(sKey,       
                              nVal) values
                             (psKey,       
                              pnVal);
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_global` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_global`(
ppoolid             int,
pdata1              int
)
begin
	declare sameid  int;
    set sameid = -1;
    
    select poolid into sameid from t_global where poolid=ppoolid;
    if  sameid <> -1 then
        update t_global set data1=pdata1 where poolid=ppoolid;
    else
        insert into t_global (poolid,data1) values (ppoolid, pdata1);
    end if;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_guildinfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_guildinfo`(
pguildid              int          ,
pguildname            varchar(50)  ,
pguildstat            int          ,
pchiefguid            int          ,
ppcount               int          ,
pucount               int          ,
pmucount              int          ,
pgpoint               int          ,
pguildmoney           int          ,
pcityid               int          ,
ptime                 int          ,
plogevity             int          ,
pcontribu             int          ,
phonor                int          ,
pindlvl               int          ,
pagrlvl               int          ,
pcomlvl               int          ,
pdeflvl               int          ,
ptechlvl              int          ,
pambilvl              int          ,
padmin                text 				 ,
pguilddesc            varchar(150) ,
pchiefname            varchar(50)  ,
pcname                varchar(50)  ,
pglvl                 int         ,
pguilduser            text        ,
pleagueid             int,
plqltime              int,
pisvalid              int,
pguildmsg             varchar(300))
begin

declare rcount int;

start transaction;
select guildid into rcount from t_guild where guildid = pguildid;
if rcount = pguildid then
			update t_guild set guildid          =pguildid,   
          guildname        =pguildname ,
          guildstat        =pguildstat ,
          chiefguid        =pchiefguid ,
          pcount           =ppcount,    
          ucount           =pucount,    
          mucount          =pmucount,   
          gpoint           =pgpoint,    
          guildmoney       =pguildmoney,
          cityid           =pcityid,    
          time             =ptime,      
          logevity         =plogevity,  
          contribu         =pcontribu,  
          honor            =phonor,     
          indlvl           =pindlvl,    
          agrlvl           =pagrlvl,    
          comlvl           =pcomlvl,    
          deflvl           =pdeflvl,    
          techlvl          =ptechlvl,   
          ambilvl          =pambilvl,   
          admin            =padmin,     
          guilddesc        =pguilddesc, 
          chiefname        =pchiefname, 
          cname            =pcname,     
          glvl             =pglvl,      
          guilduser        =pguilduser,
          leagueid         =pleagueid,
          lqltime          =plqltime,
          isvalid          =pisvalid,
          guildmsg         =pguildmsg 
          where guildid	   =pguildid;
else
	insert into t_guild(guildid,
                            guildname,   
                            guildstat,   
                            chiefguid,   
                            pcount,      
                            ucount,      
                            mucount,     
                            gpoint,      
                            guildmoney,  
                            cityid,      
                            time,        
                            logevity,    
                            contribu,    
                            honor,       
                            indlvl,      
                            agrlvl,      
                            comlvl,      
                            deflvl,      
                            techlvl,     
                            ambilvl,     
                            admin,       
                            guilddesc,   
                            chiefname,   
                            cname,       
                            glvl,        
                            guilduser,
                            leagueid,
                            lqltime,
                            isvalid,
                            guildmsg)    values
                            (pguildid,
                             pguildname, 
                             pguildstat, 
                             pchiefguid, 
                             ppcount,   
                             pucount,   
                             pmucount,  
                             pgpoint,   
                             pguildmoney,
                             pcityid,   
                             ptime,     
                             plogevity, 
                             pcontribu, 
                             phonor,    
                             pindlvl,   
                             pagrlvl,   
                             pcomlvl,   
                             pdeflvl,   
                             ptechlvl,  
                             pambilvl,  
                             padmin,    
                             pguilddesc,
                             pchiefname,
                             pcname,    
                             pglvl,     
                             pguilduser,
                             pleagueid,
                             plqltime,
                             pisvalid,
                             pguildmsg) ;
end if;

commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_guildinfo_new` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_guildinfo_new`(
pguildid      int,
pguilddesc    varchar(150),
pguildname    varchar(50),
pchiefname    varchar(50),
pcname        varchar(50),
pguildstat    smallint,
pglvl         int,
pchiefguid    int,
ppcount       int,
pucount       int,
pmucount      int,
pgpoint       int,
pguildmoney   int,
pcityid       int,
pctime        int,
plogevity     int,
pcontribu     int,
phonor        int,
pindlvl       int,
pagrlvl       int,
pcomlvl       int,
pdeflvl       int,
ptechlvl      int,
pambilvl      int,
padmin        text,
pfixucount    int,
psalarytime   int,
pgnameinfo    text,
pguildboom    text,
pleagueid     int,
plqltime      int,
pbattle_succ  int,
pbattle_fail  int,
pbattle_score int,
pbattle_kill  int,
pbattle_res   int,
pweek_suc0    int,
pweek_suc1    int,
pweek_suc2    int,
pweek_suc3    int,
pweek_fal0    int,
pweek_fal1    int,
pweek_fal2    int,
pweek_fal3    int,
pguildmsg     varchar(300),
pdataversion  int,
pisvalid      int
)
begin

declare rcount int default -1;

start transaction;
select guildid into rcount from t_guild_new where guildid = pguildid;
if rcount = pguildid then
	update t_guild_new set
		guilddesc    =pguilddesc,  
		guildname    =pguildname,  
		chiefname    =pchiefname,  
		cname        =pcname,
    guildstat    =pguildstat,      
		glvl         =pglvl,       
		chiefguid    =pchiefguid,  
		pcount       =ppcount,     
		ucount       =pucount,     
		mucount      =pmucount,
    gpoint       =pgpoint,    
		guildmoney   =pguildmoney, 
		cityid       =pcityid,     
		ctime        =pctime,      
		logevity     =plogevity,   
		contribu     =pcontribu,   
		honor        =phonor,      
		indlvl       =pindlvl,     
		agrlvl       =pagrlvl,     
		comlvl       =pcomlvl,     
		deflvl       =pdeflvl,     
		techlvl      =ptechlvl,    
		ambilvl      =pambilvl,
    admin        =padmin,    
		fixucount    =pfixucount,  
		salarytime   =psalarytime,
    gnameinfo    =pgnameinfo,
    guildboom    =pguildboom,
    leagueid     =pleagueid,
    lqltime      =plqltime,
    battle_succ  =pbattle_succ,
		battle_fail  =pbattle_fail,
		battle_score =pbattle_score,
    battle_kill  =pbattle_kill,
    battle_res   =pbattle_res,
		week_suc0    =pweek_suc0,
		week_suc1    =pweek_suc1,
    week_suc2    =pweek_suc2,
    week_suc3    =pweek_suc3,
		week_fal0    =pweek_fal0,
		week_fal1    =pweek_fal1,
    week_fal2    =pweek_fal2,
    week_fal3    =pweek_fal3,
		guildmsg     =pguildmsg,
		dataversion  =pdataversion,
		isvalid      =pisvalid
	where guildid	 =pguildid;
else
	insert into t_guild_new(
		guildid,
		guilddesc,
		guildname,
		chiefname,
		cname,
    guildstat,
		glvl,
		chiefguid,
		pcount,
		ucount,
		mucount,
    gpoint,
		guildmoney,
		cityid,
		ctime,
		logevity,
		contribu,
		honor,
		indlvl,
		agrlvl,
		comlvl,
		deflvl,
		techlvl,
		ambilvl,
    admin,
		fixucount,
		salarytime,
    gnameinfo,
    guildboom,
    leagueid, 
    lqltime,
    battle_succ,
    battle_fail,
    battle_score,
    battle_kill,
    battle_res,
		week_suc0,
		week_suc1,
    week_suc2,
    week_suc3,
		week_fal0,
		week_fal1,
    week_fal2,
    week_fal3,
		guildmsg,
		dataversion,
		isvalid
	)values(
		pguildid,
		pguilddesc,
		pguildname,
		pchiefname,
		pcname,
    pguildstat,
		pglvl,
		pchiefguid,
		ppcount,
		pucount,
		pmucount,
    pgpoint,
		pguildmoney,
		pcityid,
		pctime,
		plogevity,
		pcontribu,
		phonor,
		pindlvl,
		pagrlvl,
		pcomlvl,
		pdeflvl,
		ptechlvl,
		pambilvl,
    padmin,
		pfixucount,
		psalarytime,
    pgnameinfo,
    pguildboom,
    pleagueid,
    plqltime,
    pbattle_succ,
    pbattle_fail,
    pbattle_score,
    pbattle_kill,
    pbattle_res,
		pweek_suc0,
		pweek_suc1,
    pweek_suc2,
    pweek_suc3,
		pweek_fal0,
		pweek_fal1,
    pweek_fal2,
    pweek_fal3,
		pguildmsg,
		pdataversion,
		pisvalid
	);
end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_guild_user` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_guild_user`(
pguildid      int,
ppos          int,
pcharguid     int,
pcharname     varchar(50),
pguildpos     smallint,
plastontime   int,
plevel        int,
pmenpai       smallint,
pcontri       int,
pmaxcoutri    int,
pjointime     int,
ppwcontri     int,
pcwcontri     int,
pguildpostime int,
pisvalid      int,
paccess       int,
pgptime       int,
plastdowntime int
)
begin

declare existpos int default -1;
select pos into existpos from t_guild_user where guildid=pguildid and pos=ppos;
if existpos=ppos then
	update t_guild_user set
		charguid     =pcharguid,    
		charname     =pcharname,    
		guildpos     =pguildpos,    
		lastontime   =plastontime,  
		level        =plevel,       
		menpai       =pmenpai,      
		contri       =pcontri,      
		maxcoutri    =pmaxcoutri,   
		jointime     =pjointime,    
		pwcontri     =ppwcontri,    
		cwcontri     =pcwcontri,    
		guildpostime =pguildpostime,
		isvalid      =pisvalid,
        access       =paccess,
        gptime       =pgptime,
        lastdowntime =plastdowntime
	where guildid=pguildid and pos=ppos;
else
	insert into t_guild_user(
		guildid,
		pos,
		charguid,
		charname,
		guildpos,
		lastontime,
		level,
		menpai,
		contri,
		maxcoutri,
		jointime,
		pwcontri,
		cwcontri,
		guildpostime,
		isvalid,
        access,
        gptime,
        lastdowntime
	)values(
		pguildid,
		ppos,
		pcharguid,
		pcharname,
		pguildpos,
		plastontime,
		plevel,
		pmenpai,
		pcontri,
		pmaxcoutri,
		pjointime,
		ppwcontri,
		pcwcontri,
		pguildpostime,
		pisvalid,
        paccess,
        pgptime,
        plastdowntime
	);
end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_iteminfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_iteminfo`(
pcharguid             int,
pguid                 int,
pworld                int,
pserver               int,
pitemtype             int,
ppos                  smallint,
pvisualid             int,
pmaxgemid             int,
pfixattr              varchar(100),
pp1                   int,
pp2                   int,
pp3                   int,
pp4                   int,
pp5                   int,
pp6                   int,
pp7                   int,
pp8                   int,
pp9                   int,
pp10                  int,
pp11                  int,
pp12                  int,
pp13                  int,
pp14                  int,
pp15                  int,
pp16                  int,
pp17                  int,
pisvalid              smallint,
pdbversion            int,
pcreator              varchar(60),
pvar                  varchar(40))
begin

declare rguid      int;
declare rpos	   int;

start transaction;
select charguid,pos into rguid,rpos from t_iteminfo
	where charguid = pcharguid and pos=ppos;
	if rguid = pcharguid then
	 update t_iteminfo set charguid = pcharguid,
		guid		 	= pguid,
		world		 	= pworld,
		server	 		= pserver,
		itemtype 		= pitemtype,
		pos			= ppos,
        visualid        = pvisualid,
        maxgemid        = pmaxgemid,
		fixattr	 		= pfixattr,
		p1			= pp1,
		p2			= pp2,
		p3			= pp3,
		p4			= pp4,
		p5			= pp5,
		p6			= pp6,
		p7			= pp7,
		p8			= pp8,
		p9			= pp9,
		p10			= pp10,
		p11			= pp11,
		p12			= pp12,
		p13			= pp13,
		p14			= pp14,
		p15			= pp15,
		p16			= pp16,
		p17			= pp17,
		isvalid  		= pisvalid,
		dbversion		= pdbversion,
		creator  		= pcreator,
		var			= pvar where
		charguid=pcharguid and pos=ppos and dbversion<=pdbversion;
      
      if row_count() > 0 then
        update t_iteminfo set isvalid=0 
        where guid=pguid and world=pworld and server=pserver and charguid<>pcharguid and pos<>ppos;
      end if;
	else
		insert into t_iteminfo(charguid,world,server,guid,itemtype,
		pos,visualid,maxgemid,fixattr,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,
		isvalid,dbversion,creator,var)
		values(pcharguid,pworld,pserver,pguid,pitemtype,ppos,pvisualid,pmaxgemid,
		pfixattr,pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,
		pp11,pp12,pp13,pp14,pp15,pp16,pp17,pisvalid,pdbversion,pcreator,pvar);
	end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_league` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_league`(
pleagueid		int,
pleaguename	    varchar(40),
pleaguedesc	    varchar(80),
pcreatorname	varchar(50),
pchiefguid		int,
pchiefname		varchar(50),
pcreatetime	    int,
papplynum	int,
pisvalid        int
)
begin

declare existpos int default -1;
select leagueid into existpos from t_league where leagueid=pleagueid;
if existpos=pleagueid then
	update t_league set
        leaguename  =pleaguename ,
        leaguedesc  =pleaguedesc ,
        creatorname =pcreatorname,
        chiefguid   =pchiefguid  ,
        chiefname   =pchiefname  ,
        createtime  =pcreatetime ,
        applynum =papplynum,
        isvalid     =pisvalid
	where leagueid=pleagueid;
else
	insert into t_league(
		leagueid,
		leaguename,
		leaguedesc,
		creatorname,
		chiefguid,
		chiefname,
		createtime,
		applynum,
		isvalid
	)values(
		pleagueid,
		pleaguename,
		pleaguedesc,
		pcreatorname,
		pchiefguid,
		pchiefname,
		pcreatetime,
		papplynum,
		pisvalid
	);
end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_league_apply` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_league_apply`(
pleagueid		int,
papplypos       int,
papplyguildid	int,
pisvalid        int
)
begin

declare existpos int default -1;
select papplypos into existpos from t_league_apply where leagueid=pleagueid and applypos=papplypos;
if existpos=papplypos then
	update t_league_apply set
        applyguildid = papplyguildid,
        isvalid     =pisvalid
	where leagueid=pleagueid and applypos=papplypos;
else
	insert into t_league_apply(
		leagueid,
        applypos,
        applyguildid,
		isvalid
	)values(
		pleagueid,
        papplypos,
        papplyguildid,
		pisvalid
	);
end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_league_usr` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_league_usr`(
pleagueid		int,
pguildpos       int,
pguildid        int,
pjointime       int,
pisvalid        int
)
begin

declare existpos int default -1;
select pguildpos into existpos from t_league_usr where leagueid=pleagueid and guildpos=pguildpos;
if existpos=pguildpos then
	update t_league_usr set
        guildid     =pguildid,
        jointime    =pjointime,
        isvalid     =pisvalid
	where leagueid=pleagueid and guildpos=pguildpos;
else
	insert into t_league_usr(
		leagueid,
        guildpos,
        guildid,
        jointime,
		isvalid
	)values(
		pleagueid,
        pguildpos,
        pguildid,
        pjointime,
		pisvalid
	);
end if;
commit;

end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_mailinfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_mailinfo`(p1 varchar(50),p2 varchar(50),p3 varchar(100),p4 varchar(300),p5 int,p6 int)
begin
declare rcount int;
start transaction;
select pindex into rcount from t_mail where pindex = p5;
if rcount = p5 then
		update t_mail set sender=p1,recer=p2,mailinfo=p3,
        	mailcont=p4,isvalid=p6 where pindex=p5;
else
		insert into t_mail(pindex,sender,recer,mailinfo,mailcont,isvalid)
		  values(p5,p1,p2,p3,p4,p6);
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_petiteminfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_petiteminfo`(ppairdata text,ppoolid int,pisvalid int)
begin
declare rcount int;
start transaction;
select pindex into rcount from t_petcreate where pindex = ppoolid;
if rcount = ppoolid then
		update t_petcreate set pairdata=ppairdata,isvalid=pisvalid
            	where pindex=ppoolid;
else
		insert into t_petcreate(pindex,pairdata,isvalid)  
		values(ppoolid,ppairdata,pisvalid);	
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo`(
psid                  int,
ppoolid               int,
pshopguid             varchar(50),
ptype                 int,
pstat                 int,
pmaxbmoney            int,
pbasemoney            int,
pprofit               int,
pcreatetime           int,
pshopname             varchar(50),
pshopdesc             varchar(50),
pownername            varchar(50),
pownerguid            int,
pisopen               int,
psale                 int,
psaleprice            int,
ppartner              text,
pisvalid              int,
ppartnum              int,
psubtype              int,
pfreeze               smallint)
begin
declare rcount int;
declare rindex int;
start transaction;
select sid ,poolid into rcount,rindex from t_pshop where sid = psid and poolid=ppoolid;
if rcount = psid then
		update t_pshop set  shopguid=pshopguid,
                            type=ptype,
                            stat=pstat,
                            maxbmoney=pmaxbmoney,
                            basemoney=pbasemoney,
                            profit   =pprofit,
                            createtime=pcreatetime,
                            shopname=pshopname,
                            shopdesc=pshopdesc,
                            ownername=pownername,
                            ownerguid=pownerguid,
                            isopen=pisopen,
                            sale=psale,
                            saleprice=psaleprice,
                            partner=ppartner,
                            isvalid=pisvalid,
                            partnum=ppartnum,
                            subtype=psubtype,
                            freeze=pfreeze
                            where sid=psid and poolid=ppoolid;
else
		insert into t_pshop(sid,       
                            poolid,    
                            shopguid,  
                            type,      
                            stat,      
                            maxbmoney, 
                            basemoney, 
                            profit,
                            createtime,
                            shopname,  
                            shopdesc,  
                            ownername, 
                            ownerguid, 
                            isopen,    
                            sale,      
                            saleprice, 
                            partner,
                            recoder,
                            stallinfo,   
                            isvalid,   
                            partnum,
                            subtype,
                            freeze)    values
                            (psid,       
                             ppoolid,    
                             pshopguid,  
                             ptype,      
                             pstat,      
                             pmaxbmoney, 
                             pbasemoney, 
                             pprofit,
                             pcreatetime,
                             pshopname,  
                             pshopdesc,  
                             pownername, 
                             pownerguid, 
                             pisopen,    
                             psale,      
                             psaleprice,
                             ppartner,
                             '',
                             '',   
                             pisvalid,   
                             ppartnum,
                             psubtype,
                             pfreeze); 
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo_new` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo_new`(
psid                  int,
ppoolid               int,
pshopguid             varchar(50),
ptype                 int,
pstat                 int,
pmaxbmoney            int,
pbasemoney            int,
pprofit               int,
pcreatetime           int,
pshopname             varchar(50),
pshopdesc             varchar(50),
pownername            varchar(50),
pownerguid            int,
pisopen               int,
psale                 int,
psaleprice            int,
ppartner              text,
pisvalid              int,
ppartnum              int,
psubtype              int,
pfreeze               smallint,
pbuydesc              varchar(80),
pbuyreserve           varchar(50))
begin
declare rcount int;
declare rindex int;
start transaction;
select sid ,poolid into rcount,rindex from t_pshop_new where sid = psid and poolid=ppoolid;
if rcount = psid then
		update t_pshop_new set  shopguid=pshopguid,
                            type=ptype,
                            stat=pstat,
                            maxbmoney=pmaxbmoney,
                            basemoney=pbasemoney,
                            profit   =pprofit,
                            createtime=pcreatetime,
                            shopname=pshopname,
                            shopdesc=pshopdesc,
                            ownername=pownername,
                            ownerguid=pownerguid,
                            isopen=pisopen,
                            sale=psale,
                            saleprice=psaleprice,
                            partner=ppartner,
                            isvalid=pisvalid,
                            partnum=ppartnum,
                            subtype=psubtype,
                            freeze=pfreeze,
                            buydesc=pbuydesc,
                            buyreserve=pbuyreserve 
                            where sid=psid and poolid=ppoolid;
else
		insert into t_pshop_new(sid,       
                            poolid,    
                            shopguid,  
                            type,      
                            stat,      
                            maxbmoney, 
                            basemoney, 
                            profit,
                            createtime,
                            shopname,  
                            shopdesc,  
                            ownername, 
                            ownerguid, 
                            isopen,    
                            sale,      
                            saleprice, 
                            partner,
                            isvalid,   
                            partnum,
                            subtype,
                            freeze,
                            buydesc,
                            buyreserve)    values
                            (psid,       
                             ppoolid,    
                             pshopguid,  
                             ptype,      
                             pstat,      
                             pmaxbmoney, 
                             pbasemoney, 
                             pprofit,
                             pcreatetime,
                             pshopname,  
                             pshopdesc,  
                             pownername, 
                             pownerguid, 
                             pisopen,    
                             psale,      
                             psaleprice,
                             ppartner,
                             pisvalid,   
                             ppartnum,
                             psubtype,
                             pfreeze,
                             pbuydesc,
                             pbuyreserve); 
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo_stall` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo_stall`(
pshopguid             varchar(50),
pstallid              int,
pBox_Status           smallint,
pBox_Type             smallint,
pBox_VldNum           smallint,
pBox_FstPage          int,
pBuy_StlRsv           varchar(50))
begin
declare _guid varchar(50) default NULL;
start transaction;
select shopguid into _guid from t_pshop_stall where shopguid = pshopguid and stallid = pstallid;
if _guid = pshopguid then
		update t_pshop_stall set  shopguid=pshopguid,
                            stallid=pstallid,
                            Box_Status=pBox_Status,
                            Box_Type=pBox_Type,
                            Box_VldNum=pBox_VldNum,
                            Box_FstPage=pBox_FstPage,
                            Buy_StlRsv=pBuy_StlRsv 
                            where shopguid = pshopguid and stallid = pstallid;
else
		insert into t_pshop_stall(shopguid,       
                            stallid,    
                            Box_Status,  
                            Box_Type,      
                            Box_VldNum,      
                            Box_FstPage, 
                            Buy_StlRsv)    values
                            (pshopguid,       
                             pstallid,    
                             pBox_Status,  
                             pBox_Type,      
                             pBox_VldNum,      
                             pBox_FstPage, 
                             pBuy_StlRsv); 
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo_stall_buy` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo_stall_buy`(
pshopguid             varchar(50),
pstallid              int,
pstallunitid          int,
pBuy_ItemNum          int,
pBuy_ItemIdx          int,
pBuy_Price            int,
pBuy_InStlNum         smallint,
pItm_charguid         int,
pItm_guid             int,
pItm_world            int,
pItm_server           int,
pItm_itemtype         int,
pItm_pos              smallint,
pItm_p1               int,
pItm_p2               int,
pItm_p3               int,
pItm_p4               int,
pItm_p5               int,
pItm_p6               int,
pItm_p7               int,
pItm_p8               int,
pItm_p9               int,
pItm_p10              int,
pItm_p11              int,
pItm_p12              int,
pItm_p13              int,
pItm_p14              int,
pItm_p15              int,
pItm_p16              int,
pItm_p17              int,
pItm_creator          varchar(60),
pItm_var              varchar(40),
pItm_visualid         int,
pItm_maxgemid         int)
begin
declare _guid varchar(50) default NULL;
start transaction;
select shopguid into _guid from t_pshop_stall_buy where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
if _guid = pshopguid then
		update t_pshop_stall_buy set  shopguid=pshopguid,
                            stallid=pstallid,
                            stallunitid=pstallunitid,
                            Buy_ItemNum=pBuy_ItemNum,
                            Buy_ItemIdx=pBuy_ItemIdx,
                            Buy_Price=pBuy_Price,
                            Buy_InStlNum=pBuy_InStlNum,
                            Itm_charguid=pItm_charguid,
                            Itm_guid=pItm_guid,
                            Itm_world=pItm_world,
                            Itm_server=pItm_server,
                            Itm_itemtype=pItm_itemtype,
                            Itm_pos=pItm_pos,
                            Itm_p1=pItm_p1,
                            Itm_p2=pItm_p2,
                            Itm_p3=pItm_p3,
                            Itm_p4=pItm_p4,
                            Itm_p5=pItm_p5,
                            Itm_p6=pItm_p6,
                            Itm_p7=pItm_p7,
                            Itm_p8=pItm_p8,
                            Itm_p9=pItm_p9,
                            Itm_p10=pItm_p10,
                            Itm_p11=pItm_p11,
                            Itm_p12=pItm_p12,
                            Itm_p13=pItm_p13,
                            Itm_p14=pItm_p14,
                            Itm_p15=pItm_p15,
                            Itm_p16=pItm_p16,
                            Itm_p17=pItm_p17,
                            Itm_creator=pItm_creator,
                            Itm_var=pItm_var,
                            Itm_visualid=pItm_visualid,
                            Itm_maxgemid=pItm_maxgemid 
                            where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
else
		insert into t_pshop_stall_buy(shopguid,       
                            stallid,    
                            stallunitid,  
                            Buy_ItemNum,      
                            Buy_ItemIdx, 
                            Buy_Price, 
                            Buy_InStlNum,
                            Itm_charguid,
                            Itm_guid,
                            Itm_world,
                            Itm_server,
                            Itm_itemtype,
                            Itm_pos,
                            Itm_p1,
                            Itm_p2,
                            Itm_p3,
                            Itm_p4,
                            Itm_p5,
                            Itm_p6,
                            Itm_p7,
                            Itm_p8,
                            Itm_p9,
                            Itm_p10,
                            Itm_p11,
                            Itm_p12,
                            Itm_p13,
                            Itm_p14,
                            Itm_p15,
                            Itm_p16,
                            Itm_p17,
                            Itm_creator,
                            Itm_var,
                            Itm_visualid,
                            Itm_maxgemid)    values
                            (pshopguid,       
                             pstallid,    
                             pstallunitid,  
                             pBuy_ItemNum,      
                             pBuy_ItemIdx,      
                             pBuy_Price,      
                             pBuy_InStlNum,
                             pItm_charguid,
                             pItm_guid,
                             pItm_world,
                             pItm_server,
                             pItm_itemtype,
                             pItm_pos,
                             pItm_p1,
                             pItm_p2,
                             pItm_p3,
                             pItm_p4,
                             pItm_p5,
                             pItm_p6,
                             pItm_p7,
                             pItm_p8,
                             pItm_p9,
                             pItm_p10,
                             pItm_p11,
                             pItm_p12,
                             pItm_p13,
                             pItm_p14,
                             pItm_p15,
                             pItm_p16,
                             pItm_p17,
                             pItm_creator,
                             pItm_var,
                             pItm_visualid,
                             pItm_maxgemid);
end if;
commit;
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo_stall_itm` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo_stall_itm`(
pshopguid             varchar(50),
pstallid              int,
pstallunitid          int,
pBox_OnSale           smallint,
pBox_Price            int,
pItm_charguid         int,
pItm_guid             int,
pItm_world            int,
pItm_server           int,
pItm_itemtype         int,
pItm_pos              smallint,
pItm_p1               int,
pItm_p2               int,
pItm_p3               int,
pItm_p4               int,
pItm_p5               int,
pItm_p6               int,
pItm_p7               int,
pItm_p8               int,
pItm_p9               int,
pItm_p10              int,
pItm_p11              int,
pItm_p12              int,
pItm_p13              int,
pItm_p14              int,
pItm_p15              int,
pItm_p16              int,
pItm_p17              int,
pItm_creator          varchar(60),
pItm_var              varchar(40),
pItm_visualid         int,
pItm_maxgemid         int)
begin
declare _guid varchar(50) default NULL;
start transaction;
select shopguid into _guid from t_pshop_stall_itm where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
if _guid = pshopguid then
		update t_pshop_stall_itm set  shopguid=pshopguid,
                            stallid=pstallid,
                            stallunitid=pstallunitid,
                            Box_OnSale=pBox_OnSale,
                            Box_Price=pBox_Price,
                            Itm_charguid=pItm_charguid,
                            Itm_guid=pItm_guid,
                            Itm_world=pItm_world,
                            Itm_server=pItm_server,
                            Itm_itemtype=pItm_itemtype,
                            Itm_pos=pItm_pos,
                            Itm_p1=pItm_p1,
                            Itm_p2=pItm_p2,
                            Itm_p3=pItm_p3,
                            Itm_p4=pItm_p4,
                            Itm_p5=pItm_p5,
                            Itm_p6=pItm_p6,
                            Itm_p7=pItm_p7,
                            Itm_p8=pItm_p8,
                            Itm_p9=pItm_p9,
                            Itm_p10=pItm_p10,
                            Itm_p11=pItm_p11,
                            Itm_p12=pItm_p12,
                            Itm_p13=pItm_p13,
                            Itm_p14=pItm_p14,
                            Itm_p15=pItm_p15,
                            Itm_p16=pItm_p16,
                            Itm_p17=pItm_p17,
                            Itm_creator=pItm_creator,
                            Itm_var=pItm_var,
                            Itm_visualid=pItm_visualid,
                            Itm_maxgemid=pItm_maxgemid 
                            where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
else
		insert into t_pshop_stall_itm(shopguid,       
                             stallid,    
                             stallunitid,  
                             Box_OnSale,      
                             Box_Price,
                             Itm_charguid,
                             Itm_guid,
                             Itm_world,
                             Itm_server,
                             Itm_itemtype,
                             Itm_pos,
                             Itm_p1,
                             Itm_p2,
                             Itm_p3,
                             Itm_p4,
                             Itm_p5,
                             Itm_p6,
                             Itm_p7,
                             Itm_p8,
                             Itm_p9,
                             Itm_p10,
                             Itm_p11,
                             Itm_p12,
                             Itm_p13,
                             Itm_p14,
                             Itm_p15,
                             Itm_p16,
                             Itm_p17,
                             Itm_creator,
                             Itm_var,
                             Itm_visualid,
                             Itm_maxgemid)    values
                            (pshopguid,       
                             pstallid,    
                             pstallunitid,  
                             pBox_OnSale,      
                             pBox_Price,
                             pItm_charguid,
                             pItm_guid,
                             pItm_world,
                             pItm_server,
                             pItm_itemtype,
                             pItm_pos,
                             pItm_p1,
                             pItm_p2,
                             pItm_p3,
                             pItm_p4,
                             pItm_p5,
                             pItm_p6,
                             pItm_p7,
                             pItm_p8,
                             pItm_p9,
                             pItm_p10,
                             pItm_p11,
                             pItm_p12,
                             pItm_p13,
                             pItm_p14,
                             pItm_p15,
                             pItm_p16,
                             pItm_p17,
                             pItm_creator,
                             pItm_var,
                             pItm_visualid,
                             pItm_maxgemid); 
end if;                      
commit;                      
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `save_shopinfo_stall_pet` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`tlbb`@`%`*/ /*!50003 PROCEDURE `save_shopinfo_stall_pet`(
pshopguid             varchar(50),
pstallid              int,
pstallunitid          int,
pBox_OnSale           smallint,
pBox_Price            int,
pPet_charguid         int,
pPet_hpetguid         int,
pPet_lpetguid         int,
pPet_dataxid          int,
pPet_petname          varchar(50),
pPet_petnick          varchar(50),
pPet_level            int,
pPet_needlevel        int,
pPet_atttype          int,
pPet_aitype           int,
pPet_camp             varchar(30),
pPet_hp               int,
pPet_mp               int,
pPet_life             int,
pPet_pettype          smallint,
pPet_genera           smallint,
pPet_enjoy            smallint,
pPet_strper           int,
pPet_conper           int,
pPet_dexper           int,
pPet_sprper           int,
pPet_iprper           int,
pPet_gengu            int,
pPet_growrate         int,
pPet_repoint          int,
pPet_exp              int,
pPet_str              int,
pPet_con              int,
pPet_dex              int,
pPet_spr              int,
pPet_ipr              int,
pPet_skill            varchar(200),
pPet_pwflag           int,
pPet_pclvl            int,
pPet_hspetguid        int,
pPet_lspetguid        int,
pPet_savvy            int,
pPet_title            varchar(200),
pPet_curtitle         int,
pPet_us_unlock_time   int,
pPet_us_reserve       int)
begin
declare _guid varchar(50) default NULL;
start transaction;
select shopguid into _guid from t_pshop_stall_pet where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
if _guid = pshopguid then
		update t_pshop_stall_pet set  shopguid=pshopguid,
                            stallid=pstallid,
                            stallunitid=pstallunitid,
                            Box_OnSale=pBox_OnSale,
                            Box_Price=pBox_Price,
                            Pet_charguid=pPet_charguid,      
                            Pet_hpetguid=pPet_hpetguid,      
                            Pet_lpetguid=pPet_lpetguid,      
                            Pet_dataxid=pPet_dataxid,       
                            Pet_petname=pPet_petname,       
                            Pet_petnick=pPet_petnick,       
                            Pet_level=pPet_level,         
                            Pet_needlevel=pPet_needlevel,     
                            Pet_atttype=pPet_atttype,       
                            Pet_aitype=pPet_aitype,        
                            Pet_camp=pPet_camp,          
                            Pet_hp=pPet_hp,            
                            Pet_mp=pPet_mp,            
                            Pet_life=pPet_life,          
                            Pet_pettype=pPet_pettype,       
                            Pet_genera=pPet_genera,        
                            Pet_enjoy=pPet_enjoy,         
                            Pet_strper=pPet_strper,        
                            Pet_conper=pPet_conper,        
                            Pet_dexper=pPet_dexper,        
                            Pet_sprper=pPet_sprper,        
                            Pet_iprper=pPet_iprper,        
                            Pet_gengu=pPet_gengu,         
                            Pet_growrate=pPet_growrate,      
                            Pet_repoint=pPet_repoint,       
                            Pet_exp=pPet_exp,           
                            Pet_str=pPet_str,           
                            Pet_con=pPet_con,           
                            Pet_dex=pPet_dex,           
                            Pet_spr=pPet_spr,           
                            Pet_ipr=pPet_ipr,           
                            Pet_skill=pPet_skill,         
                            Pet_pwflag=pPet_pwflag,        
                            Pet_pclvl=pPet_pclvl,         
                            Pet_hspetguid=pPet_hspetguid,     
                            Pet_lspetguid=pPet_lspetguid,     
                            Pet_savvy=pPet_savvy,         
                            Pet_title=pPet_title,         
                            Pet_curtitle=pPet_curtitle,      
                            Pet_us_unlock_time=pPet_us_unlock_time,
                            Pet_us_reserve=pPet_us_reserve    
                            where shopguid = pshopguid and stallid = pstallid and stallunitid = pstallunitid;
else
		insert into t_pshop_stall_pet(shopguid,       
                            stallid,    
                            stallunitid,  
                            Box_OnSale,      
                            Box_Price,
                            Pet_charguid,
                            Pet_hpetguid,
                            Pet_lpetguid,
                            Pet_dataxid,
                            Pet_petname,
                            Pet_petnick,
                            Pet_level,
                            Pet_needlevel,
                            Pet_atttype,
                            Pet_aitype,
                            Pet_camp,
                            Pet_hp,
                            Pet_mp,
                            Pet_life,
                            Pet_pettype,
                            Pet_genera,
                            Pet_enjoy,
                            Pet_strper,
                            Pet_conper,
                            Pet_dexper,
                            Pet_sprper,
                            Pet_iprper,
                            Pet_gengu,
                            Pet_growrate,
                            Pet_repoint,
                            Pet_exp,
                            Pet_str,
                            Pet_con,
                            Pet_dex,
                            Pet_spr,
                            Pet_ipr,
                            Pet_skill,
                            Pet_pwflag,
                            Pet_pclvl,
                            Pet_hspetguid,
                            Pet_lspetguid,
                            Pet_savvy,
                            Pet_title,
                            Pet_curtitle,
                            Pet_us_unlock_time,
                            Pet_us_reserve)    values
                            (pshopguid,       
                             pstallid,    
                             pstallunitid,  
                             pBox_OnSale,      
                             pBox_Price,
                             pPet_charguid,
                             pPet_hpetguid,
                             pPet_lpetguid,
                             pPet_dataxid,
                             pPet_petname,
                             pPet_petnick,
                             pPet_level,
                             pPet_needlevel,
                             pPet_atttype,
                             pPet_aitype,
                             pPet_camp,
                             pPet_hp,
                             pPet_mp,
                             pPet_life,
                             pPet_pettype,
                             pPet_genera,
                             pPet_enjoy,
                             pPet_strper,
                             pPet_conper,
                             pPet_dexper,
                             pPet_sprper,
                             pPet_iprper,
                             pPet_gengu,
                             pPet_growrate,
                             pPet_repoint,
                             pPet_exp,
                             pPet_str,
                             pPet_con,
                             pPet_dex,
                             pPet_spr,
                             pPet_ipr,
                             pPet_skill,
                             pPet_pwflag,
                             pPet_pclvl,
                             pPet_hspetguid,
                             pPet_lspetguid,
                             pPet_savvy,
                             pPet_title,
                             pPet_curtitle,
                             pPet_us_unlock_time,
                             pPet_us_reserve); 
end if;                      
commit;                      
end */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-05 15:51:59
