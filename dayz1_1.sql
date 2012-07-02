-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dayz
--

CREATE DATABASE IF NOT EXISTS dayz;
USE dayz;

--
-- Definition of table `instances`
--

DROP TABLE IF EXISTS `instances`;
CREATE TABLE `instances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance` int(10) unsigned NOT NULL,
  `timezone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instances`
--

/*!40000 ALTER TABLE `instances` DISABLE KEYS */;
INSERT INTO `instances` (`id`,`instance`,`timezone`) VALUES 
 (1,1,0),
 (2,2,0),
 (3,3,0),
 (4,4,0),
 (5,5,0),
 (6,6,0),
 (7,7,0),
 (8,8,0),
 (9,9,0),
 (10,10,0);
/*!40000 ALTER TABLE `instances` ENABLE KEYS */;


--
-- Definition of table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(8) unsigned NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT 'GI Joe',
  `pos` varchar(255) NOT NULL DEFAULT '[]',
  `inventory` varchar(1024) NOT NULL DEFAULT '[]',
  `backpack` varchar(1024) NOT NULL DEFAULT '["DZ_Patrol_Pack_EP1"|[[]|[]]|[[]|[]]]',
  `medical` varchar(255) NOT NULL DEFAULT '[false|false|false|false|false|false|false|12000|[]|[0|0]|0]',
  `death` tinyint(1) NOT NULL DEFAULT '0',
  `model` varchar(255) NOT NULL DEFAULT 'Survivor2_DZ',
  `state` varchar(255) NOT NULL DEFAULT '[""|"aidlpercmstpsnonwnondnon_player_idlesteady04"|36]',
  `humanity` int(11) NOT NULL DEFAULT '2500',
  `hkills` int(2) unsigned NOT NULL DEFAULT '0',
  `bkills` int(2) unsigned NOT NULL DEFAULT '0',
  `kills` int(2) unsigned NOT NULL DEFAULT '0',
  `hs` int(2) unsigned NOT NULL DEFAULT '0',
  `late` int(2) unsigned NOT NULL DEFAULT '0',
  `ldrank` int(2) unsigned NOT NULL DEFAULT '0',
  `stime` int(2) unsigned NOT NULL DEFAULT '0',
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `survival` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Definition of table `objects`
--

DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL DEFAULT '0',
  `pos` varchar(255) NOT NULL DEFAULT '[]',
  `inventory` varchar(1024) NOT NULL DEFAULT '[]',
  `health` varchar(1024) NOT NULL DEFAULT '[]',
  `fuel` double NOT NULL DEFAULT '0',
  `damage` double NOT NULL DEFAULT '0',
  `otype` varchar(255) NOT NULL DEFAULT 'none',
  `oid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `objects`
--

/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;


--
-- Definition of table `spawns`
--

DROP TABLE IF EXISTS `spawns`;
CREATE TABLE `spawns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pos` varchar(255) NOT NULL,
  `otype` varchar(255) NOT NULL DEFAULT 'Smallboat_1',
  `uuid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spawns`
--

/*!40000 ALTER TABLE `spawns` DISABLE KEYS */;
INSERT INTO `spawns` (`id`,`pos`,`otype`,`uuid`) VALUES 
 (1,'[0,[12140.168, 12622.802,0]]','UAZ_Unarmed_TK_EP1',1),
 (2,'[0,[6279.4966, 7810.3691,0]]','UAZ_Unarmed_TK_CIV_EP1',2),
 (3,'[0,[6865.2432, 2481.6943,0]]','UAZ_Unarmed_UN_EP1',3),
 (4,'[157,[3693.0386, 5969.1489,0]]','UAZ_RU',4),
 (5,'[100,[13292.147, 11938.206, 0]]','UAZ_Unarmed_TK_CIV_EP1',5),
 (6,'[223,[4817.6572, 2556.5034,0]]','UAZ_INS',6),
 (7,'[-23,[8120.3057, 9305.4912]]','UAZ_Unarmed_TK_EP1',7),
 (8,'[0,[3312.2793, 11270.755,0]]','ATV_US_EP1',8),
 (9,'[50,[3684.0366, 5999.0117,0]]','ATV_US_EP1',9),
 (10,'[202,[11464.035, 11381.071,0]]','ATV_CZ_EP1',10),
 (11,'[-107,[11459.299, 11386.546,0]]','ATV_US_EP1',11),
 (12,'[-25,[8856.8359, 2893.7903,0]]','ATV_CZ_EP1',12),
 (68,'[-7,[12869.565, 4450.4077,0]]','SkodaBlue',13),
 (69,'[223,[6288.416, 7834.3521,0]]','Skoda',14),
 (70,'[-54,[8125.7075, 3166.3708,0]]','SkodaGreen',15),
 (71,'[-76,[8854.9082, 2891.5762,0]]','ATV_US_EP1',16),
 (72,'[-69,[11945.78, 9099.3633,0]]','TT650_Ins',17),
 (73,'[-209,[6592.686, 2906.8245,0]]','TT650_TK_EP1',18),
 (74,'[372,[8762.8516, 11727.877,0]]','TT650_TK_CIV_EP1',19),
 (75,'[52,[8713.4893, 7103.0518,0]]','TT650_TK_CIV_EP1',20),
 (76,'[50,[8040.6777, 7086.5356,0]]','Old_bike_TK_CIV_EP1',21),
 (77,'[-44,[7943.5068, 6988.1763,0]]','Old_bike_TK_CIV_EP1',22),
 (78,'[201,[8070.6958, 3358.7793,0]]','Old_bike_TK_INS_EP1',23),
 (79,'[179,[3474.3989, 2562.4915,0]]','Old_bike_TK_INS_EP1',24),
 (80,'[-124,[1773.9318, 2351.6221,0]]','Old_bike_TK_INS_EP1',25),
 (81,'[0,[3699.9189, 2474.2119,0]]','Old_bike_TK_CIV_EP1',26),
 (82,'[73,[8350.0947, 2480.542,0]]','Old_bike_TK_CIV_EP1',27),
 (83,'[35,[8345.7227, 2482.6855,0]]','Old_bike_TK_INS_EP1',28),
 (84,'[23,[3203.0916, 3988.6379,0]]','Old_bike_TK_CIV_EP1',29),
 (85,'[-169,[2782.7134, 5285.5342,0]]','Old_bike_TK_INS_EP1',30),
 (86,'[-205,[8680.75, 2445.5315,0]]','Old_bike_TK_INS_EP1',31),
 (87,'[0,[12158.999, 3468.7563,0]]','Old_bike_TK_CIV_EP1',32),
 (88,'[-110,[11984.01, 3835.9231,0]]','Old_bike_TK_INS_EP1',33),
 (89,'[-105,[10153.068, 2219.3547,0]]','Old_bike_TK_CIV_EP1',34),
 (90,'[0,[11251.41, 4274.8184, 19.607342]]','UH1H_DZ',35),
 (91,'[-121,[4523.5947, 10782.407,0]]','UH1H_DZ',36),
 (92,'[89,[6914.1348, 11429.448, 30.22456]]','UH1H_DZ',37),
 (93,'[-162,[10510.669, 2294.2346, 10.909807]]','UH1H_DZ',38),
 (94,'[0,[6404.6675, 2767.1914, 10.798054]]','UH1H_DZ',39),
 (95,'[-16,[2045.3989, 7267.4165,0]]','hilux1_civil_3_open',40),
 (96,'[133,[8310.9902, 3348.3579,0]]','hilux1_civil_3_open',41),
 (97,'[124,[11309.963, 6646.3989,0]]','hilux1_civil_3_open',42),
 (98,'[6,[11240.744, 5370.6128,0]]','hilux1_civil_3_open',43),
 (99,'[-130,[3762.5764, 8736.1709,0]]','Ikarus_TK_CIV_EP1',44),
 (100,'[-81,[10628.433, 8037.8188,0]]','Ikarus',45),
 (101,'[-115,[4580.3203, 4515.9282,0]]','Ikarus',46),
 (102,'[-27,[6040.0923, 7806.5439,0]]','Ikarus_TK_CIV_EP1',47),
 (103,'[76,[10314.745, 2147.5374,0]]','Ikarus',48),
 (104,'[59,[6705.8887, 2991.9358,0]]','Ikarus_TK_CIV_EP1',49),
 (105,'[-165,[9681.8213, 8947.2354,0]]','Tractor',50),
 (106,'[-98,[3825.1318, 8941.4873,0]]','Tractor',51),
 (107,'[19,[11246.52, 7534.7954,0]]','Tractor',52),
 (108,'[0,[11066.828, 7915.2275,0]]','S1203_TK_CIV_EP1',53),
 (109,'[-8,[12058.555, 3577.8667,0]]','S1203_TK_CIV_EP1',54),
 (110,'[218,[11940.854, 8872.8389,0]]','S1203_TK_CIV_EP1',55),
 (111,'[-14,[13386.471, 6604.0098,0]]','S1203_TK_CIV_EP1',56),
 (112,'[178,[13276.482, 6098.4463,0]]','V3S_Gue',57),
 (113,'[-22,[1890.9952, 12417.333,0]]','UralCivil',58),
 (114,'[226,[1975.1283, 9150.0195,0]]','car_hatchback',59),
 (115,'[-45,[7429.4849, 5157.8682,0]]','car_hatchback',60),
 (116,'[0,[8317.2676, 2348.6055,0]]','Fishing_Boat',61),
 (117,'[0,[13222.181, 10015.431,0]]','Fishing_Boat',62),
 (118,'[55,[13454.882, 13731.796,0]]','PBX',63),
 (119,'[-115,[14417.589, 12886.104,0]]','Smallboat_1',64),
 (120,'[268,[13098.13, 8250.8828,0]]','Smallboat_1',65),
 (121,'[-155,[9731.1514, 8937.7998,0]]','Volha_2_TK_CIV_EP1',66),
 (122,'[-23,[9715.0352, 6522.8286,0]]','Volha_1_TK_CIV_EP1',67),
 (123,'[-119,[2614.0862, 5079.6357,0]]','Volha_1_TK_CIV_EP1',68),
 (124,'[18,[10827.634, 2701.5688,0]]','Volha_2_TK_CIV_EP1',69),
 (125,'[-138,[5165.7231, 2375.7642,0]]','Volha_1_TK_CIV_EP1',70),
 (126,'[-153,[1740.8503, 3622.6938,0]]','Volha_2_TK_CIV_EP1',71),
 (127,'[266,[9157.8408, 11019.819,0]]','SUV_TK_CIV_EP1',72),
 (128,'[222,[12360.468, 10817.882,0]]','car_sedan',73);
/*!40000 ALTER TABLE `spawns` ENABLE KEYS */;


--
-- Definition of procedure `cleanS`
--

DROP PROCEDURE IF EXISTS `cleanS`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `cleanS`(IN myusedby INT)
BEGIN

      UPDATE spawns SET usedby=0 WHERE usedby=myusedby;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `delDead`
--

DROP PROCEDURE IF EXISTS `delDead`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `delDead`(IN pointless INT)
BEGIN

      DELETE FROM objects WHERE damage=1;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `delO`
--

DROP PROCEDURE IF EXISTS `delO`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `delO`(IN myuid VARCHAR(50))
BEGIN
      DELETE FROM objects WHERE uid=myuid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getCO`
--

DROP PROCEDURE IF EXISTS `getCO`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getCO`(IN mytype VARCHAR(255))
BEGIN

      SELECT COUNT(*) FROM objects WHERE otype like mytype;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getDead`
--

DROP PROCEDURE IF EXISTS `getDead`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getDead`(IN pointless INT)
BEGIN

      SELECT id FROM objects WHERE damage=1;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getFS`
--

DROP PROCEDURE IF EXISTS `getFS`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getFS`(IN mytype VARCHAR(255),IN myl INT)
BEGIN

      SELECT pos,otype FROM spawns WHERE otype like mytype AND usedby=0 LIMIT myl;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getO`
--

DROP PROCEDURE IF EXISTS `getO`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getO`(IN myinstance INT,IN page INT)
BEGIN
      SELECT id,otype,oid,pos,inventory,health,fuel,damage FROM objects WHERE instance=myinstance LIMIT page,15;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getOC`
--

DROP PROCEDURE IF EXISTS `getOC`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getOC`(IN myinstance INT)
BEGIN
      SELECT COUNT(*) FROM objects WHERE instance=myinstance;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getTime`
--

DROP PROCEDURE IF EXISTS `getTime`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `getTime`(IN myinstance INT)
BEGIN
      SELECT DATE_FORMAT(NOW(),'%d-%m-%Y'), TIME_FORMAT(CURRENT_TIMESTAMP + INTERVAL (SELECT timezone FROM instances WHERE instance=myinstance) HOUR,'%T');
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `insOselI`
--

DROP PROCEDURE IF EXISTS `insOselI`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `insOselI`(IN myuid VARCHAR(50),IN myowner INT,IN myhp DOUBLE,IN myhealth VARCHAR(1024),IN mypos VARCHAR(255),IN mytype VARCHAR(255),IN myfuel DOUBLE,IN myinstance INT)
BEGIN
      INSERT INTO objects (uid,otype,health,damage,oid,pos,fuel,instance) VALUES (myuid,mytype,myhealth,myhp,myowner,mypos,myfuel,myinstance);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `insUNselI`
--

DROP PROCEDURE IF EXISTS `insUNselI`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `insUNselI`(IN myuid INT,IN myname VARCHAR(255))
BEGIN
      INSERT INTO main (uid, name,survival) VALUES (myuid, myname,NOW());
      SELECT LAST_INSERT_ID();
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `selIIB`
--

DROP PROCEDURE IF EXISTS `selIIB`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `selIIB`(IN myuid INT)
BEGIN

      SELECT id, inventory, backpack FROM main WHERE uid=myuid AND death=0;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `selIIBSM`
--

DROP PROCEDURE IF EXISTS `selIIBSM`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `selIIBSM`(IN myuid INT)
BEGIN
      SELECT id, inventory, backpack, FLOOR(TIME_TO_SEC(TIMEDIFF(NOW(),survival))/60), model, late, ldrank FROM main WHERE uid=myuid AND death=0;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `selIPIBMSSS`
--

DROP PROCEDURE IF EXISTS `selIPIBMSSS`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `selIPIBMSSS`(IN myuid INT)
BEGIN
      SELECT id, pos, inventory, backpack, medical, FLOOR(TIME_TO_SEC(TIMEDIFF(NOW(),survival))/60), kills, state, late, ldrank, hs, hkills, bkills FROM main WHERE uid=myuid AND death=0;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `selMPSSH`
--

DROP PROCEDURE IF EXISTS `selMPSSH`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `selMPSSH`(IN myid INT)
BEGIN
      SELECT medical, pos, kills, state, humanity, hs, hkills, bkills FROM main WHERE id=myid AND death=0;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `setCD`
--

DROP PROCEDURE IF EXISTS `setCD`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `setCD`(IN myid INT)
BEGIN
      UPDATE main SET death=1 WHERE id=myid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `setFS`
--

DROP PROCEDURE IF EXISTS `setFS`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `setFS`(IN mytype VARCHAR(255),IN myl INT)
BEGIN

      UPDATE spawns SET usedby=LAST_INSERT_ID()+1 WHERE otype like mytype LIMIT myl;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `update`
--

DROP PROCEDURE IF EXISTS `update`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `update`(IN myk INT, IN myhs INT, IN mybk INT,
       IN myhk INT, IN mystate VARCHAR(255), IN mymod VARCHAR(255), IN myate INT, IN mydrank INT,
       IN mytime INT, IN myid INT, IN myhum INT, IN mypos VARCHAR(1024), IN myinv VARCHAR(1024),
       IN myback VARCHAR(1024), IN mymed VARCHAR(1024))
BEGIN
      UPDATE main SET kills=kills+myk,hs=hs+myhs,bkills=bkills+mybk,hkills=hkills+myhk,
                      state=mystate,model=if(mymod='any',model,mymod),late=if(myate=-1,0,late+myate),ldrank=if(mydrank=-1,0,ldrank+mydrank),stime=stime+mytime,
                      pos=if(mypos='[]',pos,mypos),humanity=if(myhum=0,humanity,myhum),medical=if(mymed='[]',medical,mymed),
                      backpack=if(myback='[]',backpack,myback),inventory=if(myinv='[]',inventory,myinv)
                  WHERE id=myid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updIH`
--

DROP PROCEDURE IF EXISTS `updIH`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `updIH`(IN myid INT,IN myhealth VARCHAR(1024),IN myhp DOUBLE)
BEGIN
      UPDATE objects SET health=if(myhealth='[]',health,myhealth),damage=myhp WHERE id=myid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updII`
--

DROP PROCEDURE IF EXISTS `updII`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `updII`(IN myid INT,IN myinv VARCHAR(1024))
BEGIN
      UPDATE objects SET inventory=if(myinv='[]',inventory,myinv) WHERE id=myid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updIPF`
--

DROP PROCEDURE IF EXISTS `updIPF`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `updIPF`(IN myid INT,IN mypos VARCHAR(255),IN myfuel DOUBLE)
BEGIN
      UPDATE objects SET pos=if(mypos='[]',pos,mypos),fuel=myfuel WHERE id=myid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updUI`
--

DROP PROCEDURE IF EXISTS `updUI`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `updUI`(IN myuid VARCHAR(50),IN myinv VARCHAR(1024))
BEGIN
      UPDATE objects SET inventory=if(myinv='[]',inventory,myinv) WHERE uid=myuid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updV`
--

DROP PROCEDURE IF EXISTS `updV`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `updV`(IN myuid VARCHAR(50),IN myhealth VARCHAR(1024),IN mypos VARCHAR(255),IN mytype VARCHAR(255))
BEGIN
      UPDATE objects SET otype=if(mytype='',otype,mytype),health=if(myhealth='[]',health,myhealth),pos=if(mypos='[]',pos,mypos) WHERE uid=myuid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
