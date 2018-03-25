CREATE TABLE `clientprofile` (
  `NUM` decimal(22,0) NOT NULL,
  `ID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `KINDS` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IMAGE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `WRITEDATE` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `member` (
  `NAME` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `USERID` varchar(30) COLLATE utf8_bin NOT NULL,
  `PWD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `PHONE` varchar(13) COLLATE utf8_bin DEFAULT NULL,
  `ADMIN` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `message` (
  `NUM` decimal(22,0) DEFAULT NULL,
  `FROMID` varchar(20) COLLATE utf8_bin NOT NULL,
  `TOID` varchar(20) COLLATE utf8_bin NOT NULL,
  `CONTENT` text COLLATE utf8_bin NOT NULL,
  `SENDTIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `READTIME` datetime DEFAULT NULL,
  `READORNOT` decimal(22,0) DEFAULT '0',
  `WASTE` decimal(22,0) DEFAULT '0',
  `KEEP` decimal(22,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `request` (
  `NUM` decimal(22,0) NOT NULL,
  `PASS` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `USERID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `TITLE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `SOURCELANG` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `TARGETLANG` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT` text COLLATE utf8_bin,
  `REFILE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DEADLINE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CASH` decimal(22,0) DEFAULT NULL,
  `READCOUNT` decimal(22,0) DEFAULT '0',
  `WRITEDATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `NOW` varchar(2) COLLATE utf8_bin DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `support` (
  `NUM` mediumint(5) NOT NULL,
  `TITLE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `KINDS` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PWD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT` text COLLATE utf8_bin,
  `ANSWERCOUNT` mediumint(5) DEFAULT '0',
  `WRITEDATE` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `transjob` (
  `JOBNUM` decimal(22,0) NOT NULL,
  `JOBCONTENT` text COLLATE utf8_bin,
  `AGENTNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `JOBREGEDATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `JOBTYPE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`JOBNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `transprofile` (
  `TRANS_NUM` decimal(22,0) NOT NULL,
  `TRANS_PICURL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_SRC_LANGUAGE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_AREA` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_PORTFOLIO` text COLLATE utf8_bin,
  `TRANS_NAME` varchar(20) COLLATE utf8_bin NOT NULL,
  `TRANS_ADDRESS` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_ID` varchar(30) COLLATE utf8_bin NOT NULL,
  `TRANS_PAYRATE` varchar(20) COLLATE utf8_bin NOT NULL,
  `TRANS_CONTACT` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_SOFTWARE` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_TARG_LANGUAGE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRANS_ID`,`TRANS_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin

CREATE TABLE `weather` (
  `LOCATION` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `TEMP` decimal(22,0) DEFAULT NULL,
  `ICON` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `D` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin