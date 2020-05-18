-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               4.1.22-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for stockmarket
DROP DATABASE IF EXISTS `stockmarket`;
CREATE DATABASE IF NOT EXISTS `stockmarket` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `stockmarket`;


-- Dumping structure for table stockmarket.bestfv
DROP TABLE IF EXISTS `bestfv`;
CREATE TABLE IF NOT EXISTS `bestfv` (
  `FEATUREVECTOR` double NOT NULL default '0',
  `COMPANYID` int(11) NOT NULL default '0',
  `COMPANYTYPE` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.bestfv: ~0 rows (approximately)
DELETE FROM `bestfv`;
/*!40000 ALTER TABLE `bestfv` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestfv` ENABLE KEYS */;


-- Dumping structure for table stockmarket.companyid
DROP TABLE IF EXISTS `companyid`;
CREATE TABLE IF NOT EXISTS `companyid` (
  `COMPANYID_PK` int(11) default NULL,
  `COMPANYNAME` text,
  `COMPANYTYPE_FK` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.companyid: ~10 rows (approximately)
DELETE FROM `companyid`;
/*!40000 ALTER TABLE `companyid` DISABLE KEYS */;
INSERT INTO `companyid` (`COMPANYID_PK`, `COMPANYNAME`, `COMPANYTYPE_FK`) VALUES
	(1, 'GOOGLE', '1'),
	(2, 'YATRA', '1'),
	(3, 'AMAZON', '1'),
	(4, 'IBM', '1'),
	(5, 'TCS', '1'),
	(6, 'FIRSTSOURCE', '1'),
	(7, 'YELPINC', '1'),
	(8, 'JPMORGAN', '1'),
	(9, 'WALTDISNEY', '1'),
	(10, 'WALMARTINC', '1');
/*!40000 ALTER TABLE `companyid` ENABLE KEYS */;


-- Dumping structure for table stockmarket.companytype
DROP TABLE IF EXISTS `companytype`;
CREATE TABLE IF NOT EXISTS `companytype` (
  `COMPANYTYPEID_PK` int(11) default NULL,
  `COMPANYTYPENAME` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.companytype: ~1 rows (approximately)
DELETE FROM `companytype`;
/*!40000 ALTER TABLE `companytype` DISABLE KEYS */;
INSERT INTO `companytype` (`COMPANYTYPEID_PK`, `COMPANYTYPENAME`) VALUES
	(1, 'GENERAL');
/*!40000 ALTER TABLE `companytype` ENABLE KEYS */;


-- Dumping structure for table stockmarket.featuretypes
DROP TABLE IF EXISTS `featuretypes`;
CREATE TABLE IF NOT EXISTS `featuretypes` (
  `FEATURETYPE` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.featuretypes: ~3 rows (approximately)
DELETE FROM `featuretypes`;
/*!40000 ALTER TABLE `featuretypes` DISABLE KEYS */;
INSERT INTO `featuretypes` (`FEATURETYPE`) VALUES
	('VOLUME'),
	('CLOSEPRICE'),
	('AMOUNT');
/*!40000 ALTER TABLE `featuretypes` ENABLE KEYS */;


-- Dumping structure for table stockmarket.finance
DROP TABLE IF EXISTS `finance`;
CREATE TABLE IF NOT EXISTS `finance` (
  `COMPANYNAME` text NOT NULL,
  `FINANCENAME` text NOT NULL,
  `COMPANYID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`COMPANYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.finance: ~10 rows (approximately)
DELETE FROM `finance`;
/*!40000 ALTER TABLE `finance` DISABLE KEYS */;
INSERT INTO `finance` (`COMPANYNAME`, `FINANCENAME`, `COMPANYID`) VALUES
	('GOOGLE', 'GOOG', 1),
	('YATRA', 'YTRA', 2),
	('AMAZON', 'AMZN', 3),
	('IBM', 'IBM', 4),
	('TCS', 'TCS', 5),
	('FIRSTSOURCE', 'SRCE', 6),
	('YELPINC', 'YEXT', 7),
	('JPMORGAN', 'JPM', 8),
	('WALTDISNEY', 'DIS', 9),
	('WALMARTINC', 'WMT', 10);
/*!40000 ALTER TABLE `finance` ENABLE KEYS */;


-- Dumping structure for table stockmarket.hashtags
DROP TABLE IF EXISTS `hashtags`;
CREATE TABLE IF NOT EXISTS `hashtags` (
  `HASHTAGID` int(11) NOT NULL auto_increment,
  `HASHTAG` varchar(150) NOT NULL default '',
  `COMPANYID` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`HASHTAGID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.hashtags: ~5 rows (approximately)
DELETE FROM `hashtags`;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;


-- Dumping structure for table stockmarket.negativekeywords
DROP TABLE IF EXISTS `negativekeywords`;
CREATE TABLE IF NOT EXISTS `negativekeywords` (
  `NEGATIVEKEYID` int(10) unsigned NOT NULL auto_increment,
  `NEGATIVEKEYWORD` varchar(50) default NULL,
  PRIMARY KEY  (`NEGATIVEKEYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.negativekeywords: ~8 rows (approximately)
DELETE FROM `negativekeywords`;
/*!40000 ALTER TABLE `negativekeywords` DISABLE KEYS */;
INSERT INTO `negativekeywords` (`NEGATIVEKEYID`, `NEGATIVEKEYWORD`) VALUES
	(1, 'worst'),
	(2, 'bad'),
	(3, 'very bad'),
	(4, 'very very bad'),
	(5, 'low'),
	(13, 'bad stocks'),
	(14, 'very worst'),
	(15, 'low volume');
/*!40000 ALTER TABLE `negativekeywords` ENABLE KEYS */;


-- Dumping structure for table stockmarket.polarityorder
DROP TABLE IF EXISTS `polarityorder`;
CREATE TABLE IF NOT EXISTS `polarityorder` (
  `COMPANYID` int(11) NOT NULL default '0',
  `TOTALFEATURE` int(11) NOT NULL default '0',
  `TOTALNEGATIVE` int(11) NOT NULL default '0',
  `TOTALNEUTRAL` int(11) NOT NULL default '0',
  `TOTALPOSITIVE` int(11) NOT NULL default '0',
  `COMPANYTYPE` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.polarityorder: ~0 rows (approximately)
DELETE FROM `polarityorder`;
/*!40000 ALTER TABLE `polarityorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `polarityorder` ENABLE KEYS */;


-- Dumping structure for table stockmarket.positivekeywords
DROP TABLE IF EXISTS `positivekeywords`;
CREATE TABLE IF NOT EXISTS `positivekeywords` (
  `PKEYWORDS` varchar(50) default NULL,
  `PKEYID` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`PKEYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.positivekeywords: ~14 rows (approximately)
DELETE FROM `positivekeywords`;
/*!40000 ALTER TABLE `positivekeywords` DISABLE KEYS */;
INSERT INTO `positivekeywords` (`PKEYWORDS`, `PKEYID`) VALUES
	('excellent', 1),
	('awesome', 4),
	('amazing', 5),
	('faster', 7),
	('good', 10),
	('very very good', 11),
	('incredible', 13),
	('fastest', 14),
	('very awesome', 15),
	('nice', 17),
	('awesome price', 20),
	('volume is awesome', 21),
	('very good volume', 22);
/*!40000 ALTER TABLE `positivekeywords` ENABLE KEYS */;


-- Dumping structure for table stockmarket.prediction
DROP TABLE IF EXISTS `prediction`;
CREATE TABLE IF NOT EXISTS `prediction` (
  `PREDICTIONID` int(10) unsigned NOT NULL auto_increment,
  `SDI` double NOT NULL default '0',
  `VOLUME` double NOT NULL default '0',
  `MARKETINDEX` double NOT NULL default '0',
  `DAILYTURNOVER` double NOT NULL default '0',
  `COMPANYID` int(11) NOT NULL default '0',
  `PRICE` double NOT NULL default '0',
  `PREDICTION` double NOT NULL default '0',
  `COMPANY` longtext,
  PRIMARY KEY  (`PREDICTIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.prediction: ~4 rows (approximately)
DELETE FROM `prediction`;
/*!40000 ALTER TABLE `prediction` DISABLE KEYS */;
/*!40000 ALTER TABLE `prediction` ENABLE KEYS */;


-- Dumping structure for table stockmarket.review
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `REVIEWID` int(10) unsigned NOT NULL auto_increment,
  `REVIEWDETAILS` longtext NOT NULL,
  `COMPANYID` int(10) unsigned NOT NULL default '0',
  `HASHTAG` varchar(50) NOT NULL default '',
  `TWEETSCREENNAME` varchar(50) NOT NULL default '',
  `USERID` varchar(50) NOT NULL default '',
  `LANGUAGE` varchar(50) NOT NULL default '',
  `CATID` int(11) NOT NULL default '1',
  PRIMARY KEY  (`REVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.review: ~43 rows (approximately)
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;


-- Dumping structure for table stockmarket.sentimentanalyzer
DROP TABLE IF EXISTS `sentimentanalyzer`;
CREATE TABLE IF NOT EXISTS `sentimentanalyzer` (
  `SENTID` int(10) unsigned NOT NULL auto_increment,
  `REVIEWID` int(10) unsigned NOT NULL default '0',
  `POSITIVERATING` int(3) unsigned NOT NULL default '0',
  `NEGATIVERATING` int(50) NOT NULL default '0',
  `NEUTRALRATING` int(10) NOT NULL default '0',
  `COMPANYID` int(10) unsigned default NULL,
  `COMPANYTYPE` int(10) unsigned default NULL,
  `FEATURETYPE` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`SENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.sentimentanalyzer: ~129 rows (approximately)
DELETE FROM `sentimentanalyzer`;
/*!40000 ALTER TABLE `sentimentanalyzer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sentimentanalyzer` ENABLE KEYS */;


-- Dumping structure for table stockmarket.sentimentindex
DROP TABLE IF EXISTS `sentimentindex`;
CREATE TABLE IF NOT EXISTS `sentimentindex` (
  `SENTIMENTINDEXID` int(10) unsigned NOT NULL auto_increment,
  `SENTIMENTINDEX` double NOT NULL default '0',
  `SENTIMENTDISINDEX` double NOT NULL default '0',
  `POSITIVERATING` int(11) default NULL,
  `NEGATIVERATING` int(11) default NULL,
  `COMPANYID` int(11) NOT NULL default '0',
  `COMPANY` longtext NOT NULL,
  PRIMARY KEY  (`SENTIMENTINDEXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.sentimentindex: ~4 rows (approximately)
DELETE FROM `sentimentindex`;
/*!40000 ALTER TABLE `sentimentindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sentimentindex` ENABLE KEYS */;


-- Dumping structure for table stockmarket.sentimenttotal
DROP TABLE IF EXISTS `sentimenttotal`;
CREATE TABLE IF NOT EXISTS `sentimenttotal` (
  `COMPANYID` int(11) default NULL,
  `POSITIVEPOLARITY` int(11) default NULL,
  `NEGATIVEPOLARITY` int(11) default NULL,
  `FEATURESCORE` int(11) default NULL,
  `FEATURETYPE` varchar(50) default NULL,
  `NEUTRALPOLARITY` int(11) default NULL,
  `COMPANYTYPE` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.sentimenttotal: ~12 rows (approximately)
DELETE FROM `sentimenttotal`;
/*!40000 ALTER TABLE `sentimenttotal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sentimenttotal` ENABLE KEYS */;


-- Dumping structure for table stockmarket.stockdata
DROP TABLE IF EXISTS `stockdata`;
CREATE TABLE IF NOT EXISTS `stockdata` (
  `STOCKDATAID` int(10) unsigned NOT NULL auto_increment,
  `VOLUME` double NOT NULL default '0',
  `MARKETINDEX` double NOT NULL default '0',
  `DAILYTURNOVER` double NOT NULL default '0',
  `COMPANYID` int(11) NOT NULL default '0',
  `PRICE` double NOT NULL default '0',
  PRIMARY KEY  (`STOCKDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stockmarket.stockdata: ~4 rows (approximately)
DELETE FROM `stockdata`;
/*!40000 ALTER TABLE `stockdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockdata` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
