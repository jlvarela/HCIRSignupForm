delimiter $$

CREATE TABLE `slots` (
  `slotID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '1',
  `week` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slotID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1$$


delimiter $$

CREATE TABLE `recruits` (
  `recruitsID` int(11) NOT NULL AUTO_INCREMENT,
  `study` tinyint(1) DEFAULT NULL,
  `firstName1` varchar(100) DEFAULT NULL,
  `lastName1` varchar(100) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `english1` tinyint(1) DEFAULT NULL,
  `sex1` char(1) DEFAULT NULL,
  `glasses1` smallint(6) DEFAULT NULL,
  `firstName2` varchar(100) DEFAULT NULL,
  `lastName2` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `english2` smallint(6) DEFAULT NULL,
  `sex2` char(1) DEFAULT NULL,
  `glasses2` varchar(45) DEFAULT NULL,
  `pastCollab` text,
  `comments` text,
  `approved` tinyint(1) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `slotID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `compensation` text,
  PRIMARY KEY (`recruitsID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1$$

delimiter $$

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `projectID` int(11) DEFAULT NULL,
  `condition` varchar(2) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `study` tinyint(1) DEFAULT NULL,
  `conditionCode` tinyint(1) DEFAULT NULL,
  `observations` text,
  `sentEmail` tinyint(1) DEFAULT NULL,
  `sentEmailFinalResults` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=latin1$$

