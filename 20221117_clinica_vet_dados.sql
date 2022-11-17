-- BACKUP DOS DADOS DO BANCO DE DADOS CLINICA_VET
-- Criado em 2022-11-17 15:54:47
-- Inclui as tabelas principais, sendo elas: cliente, consulta, estagiario, medico_veterinario, paciente, pagamento, remedio, tratamento e vacinacao
-- As tabelas relacionadas as views não foram incluidas

-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_vet
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Patricia Johnson','Workhaven Lane 23','11951009653','patricia.johnson@gmail.com','19574179113'),(2,'Linda Williams','Lillydale Drive 1411','11924455222','linda.williams@gmail.com','12938923155'),(3,'Barbara Jones','Hanoi Way 1913','11982181037','barbara.jones@gmail.com','44947611200'),(4,'Matthew Mahan','Joliet Street 1121','11906367268','matthew.mahan@hotmail.com','38047827859'),(5,'Timothy Bunn','Santiago de Compostela Parkway 1795','11915525745','timothy.bunn@hotmail.com','23055982286'),(6,'Jose Andrew','Joliet Way 900','11938788466','jose.andrew@hotmail.com','38664921453'),(7,'Alfredo Mcadams','Santo Andr Manor 966','11969920710','alfredo.mcadams@gmail.com','25241563344'),(8,'Alberto Henning','Iligan Lane 770','11933427977','alberto.henning@gmail.com','41520005252'),(9,'Eric Robert','Aden Boulevard 1485','11973956528','eric.robert@hotmail.com','10221543034'),(10,'Stephen Qualls','Toulouse Parkway 419','11954389850','stephen.qualls@hotmail.com','14093969494'),(11,'Sharon Robinson','Toulon Boulevard 360','11934145599','sharon.robinson@gmail.com','32445759630'),(12,'Carol Garcia','Brest Avenue 270','11954086212','carol.garcia@gmail.com','14272676130'),(13,'Sarah Lewis','Charlotte Amalie Street 262','11979440378','sarah.lewis@gmail.com','17392567923'),(14,'Nicholas Barfield','Tafuna Way 1780','11922322574','nicholas.barfield@hotmail.com','37782872029'),(15,'Victor Barkley','San Felipe de Puerto Plata Street 96','11922107005','victor.barkley@hotmail.com','41515094818'),(16,'Martin Bales','Duisburg Boulevard 934','11942398703','martin.bales@hotmail.com','29302615975'),(17,'Rebecca Scott','Botshabelo Place 18','11900444927','rebecca.scott@gmail.com','10720084945'),(18,'Pamela Baker','Aurora Avenue 1425','11954925684','pamela.baker@gmail.com','37270276483'),(19,'Martha Gonzalez','Gorontalo Way 33','11921711775','martha.gonzalez@gmail.com','37333968739'),(20,'Amanda Carter','Mandaluyong Place 176','11927807358','amanda.carter@gmail.com','36591751305'),(21,'Stephanie Mitchell','Tama Street 61','11955666667','stephanie.mitchell@gmail.com','20155137770'),(22,'Christine Roberts','Callao Drive 391','11905112779','christine.roberts@gmail.com','29433031912'),(23,'Marie Turner','Munger (Monghyr) Lane 334','11933060463','marie.turner@gmail.com','80254436340'),(24,'Alice Stewart','Cam Ranh Parkway 269','11943413283','alice.stewart@gmail.com','20168413181'),(25,'Sylvia Ortiz','Antofagasta Place 306','11915875315','sylvia.ortiz@hotmail.com','25126450336'),(26,'Josephine Gomez','Graz Street 671','11978095243','josephine.gomez@hotmail.com','22189263680'),(27,'Thelma Murray','Brindisi Place 42','11952674483','thelma.murray@hotmail.com','26993243870'),(28,'Elizabeth Brown','Pjatigorsk Lane 1718','11984941020','elizabeth.brown@gmail.com','23898881467'),(29,'Jennifer Davis','Garland Manor 46','11985767453','jennifer.davis@gmail.com','24644470878'),(30,'Maria Miller','Garland Manor 686','11908069636','maria.miller@gmail.com','14532261380'),(31,'Helen Harris','Isesaki Place 909','11904844121','helen.harris@gmail.com','15344365491'),(32,'Ivan Cromwell','Hidalgo Parkway 725','11928881259','ivan.cromwell@gmail.com','42831685593'),(33,'Sergio Stanfield','Probolinggo Loop 1135','11947623233','sergio.stanfield@gmail.com','32060830006'),(34,'Deborah Walker','Kabul Boulevard 939','11982646202','deborah.walker@gmail.com','59065997880'),(35,'Jessica Hall','Hodeida Way 1213','11912350516','jessica.hall@gmail.com','24129577622'),(36,'Ana Bradley','Ponce Place 81','11936303937','ana.bradley@hotmail.com','38423116639'),(37,'Tamara Nguyen','Otsu Street 1966','11962037330','tamara.nguyen@hotmail.com','12528657131'),(38,'Marlene Welch','Cam Ranh Street 1124','11924851291','marlene.welch@hotmail.com','40703376775'),(39,'Lydia Burke','Poos de Caldas Boulevard 89','11946743452','lydia.burke@hotmail.com','29282321860'),(40,'Joseph Joy','Dos Quebradas Place 1947','11932133320','joseph.joy@hotmail.com','41147678399'),(41,'Thomas Grigsby','Salzburg Lane 1692','11917950072','thomas.grigsby@hotmail.com','45482517879'),(42,'Christopher Greco','Citt del Vaticano Boulevard 929','11998871482','christopher.greco@hotmail.com','32459919481'),(43,'Daniel Cabral','Firozabad Loop 1599','11948463610','daniel.cabral@hotmail.com','31028229013'),(44,'Sheila Wells','Vila Velha Manor 669','11929960583','sheila.wells@hotmail.com','35212597721'),(45,'Antonio Meek','Mandaluyong Place 1913','11940765114','antonio.meek@hotmail.com','42859715900'),(46,'Tony Carranza','Junan Way 1002','11982895614','tony.carranza@hotmail.com','21702825716'),(47,'Luis Yanez','Elista Drive 682','11910617469','luis.yanez@hotmail.com','20315758977'),(48,'Leonard Schofield','Belm Manor 758','11954988466','leonard.schofield@hotmail.com','36465078998'),(49,'Nathan Runyon','Saint Louis Way 1752','11968174487','nathan.runyon@hotmail.com','40913791630'),(50,'Vincent Ralston','Southampton Drive 898','11973809543','vincent.ralston@hotmail.com','22056456190'),(51,'Alexander Fennell','Johannesburg Avenue 261','11990435935','alexander.fennell@hotmail.com','11241296720'),(52,'Bernard Colby','Sunnyvale Avenue 126','11900161591','bernard.colby@hotmail.com','37435434936'),(53,'Mario Cheatham','So Bernardo do Campo Lane 913','11973459539','mario.cheatham@hotmail.com','12638164472');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'2022-10-10','08:30',4,2,'dermatologia',1,1,1),(2,'2022-10-10','08:30',1,4,'clínica',2,2,2),(3,'2022-10-10','09:00',1,4,'vacinação',3,3,3),(4,'2022-10-10','10:00',4,2,'retorno dermatologia',4,4,4),(5,'2022-10-10','10:30',1,4,'vacinação',5,5,5),(6,'2022-10-10','10:50',1,4,'vacinação',5,6,6),(7,'2022-10-10','11:30',1,4,'clínica',6,7,7),(8,'2022-10-10','12:00',1,4,'retorno clínica',7,8,8),(9,'2022-10-10','13:00',1,4,'retorno clínica',8,9,9),(10,'2022-10-10','14:30',2,1,'clínica',9,10,10),(11,'2022-10-10','15:00',2,1,'vacinação',10,11,11),(12,'2022-10-10','15:30',2,1,'vacinação',11,12,12),(13,'2022-10-10','16:00',2,1,'vacinação',12,13,13),(14,'2022-10-10','16:30',2,1,'clínica',13,14,14),(15,'2022-10-10','17:00',2,1,'clínica',13,15,15),(16,'2022-10-10','18:00',2,1,'vacinação',14,16,16),(17,'2022-10-11','08:30',1,4,'clínica',15,17,17),(18,'2022-10-11','09:30',1,4,'vacinação',16,18,18),(19,'2022-10-11','10:00',1,4,'retorno clínica',17,19,19),(20,'2022-10-11','10:30',1,4,'retorno clínica',18,20,20),(21,'2022-10-11','11:30',1,4,'vacinação',19,21,21),(22,'2022-10-11','11:50',1,4,'vacinação',19,22,22),(23,'2022-10-11','12:20',1,4,'vacinação',19,23,23),(24,'2022-10-11','14:00',1,4,'clínica',20,24,24),(25,'2022-10-11','15:10',2,1,'clínica',21,25,25),(26,'2022-10-11','16:00',2,1,'clínica',21,26,26),(27,'2022-10-11','17:00',2,1,'vacinação',22,27,27),(28,'2022-10-11','17:30',2,1,'vacinação',23,28,28),(29,'2022-10-11','17:30',2,1,'retorno clínica',24,29,29),(30,'2022-10-11','18:30',2,1,'vacinação',25,30,30),(31,'2022-10-12','09:00',1,4,'clínica',26,31,31),(32,'2022-10-12','10:00',1,4,'retorno clínica',27,32,32),(33,'2022-10-12','10:30',1,4,'retorno clínica',28,33,33),(34,'2022-10-12','12:00',1,4,'vacinação',29,34,34),(35,'2022-10-12','13:00',1,4,'clínica',30,35,35),(36,'2022-10-12','13:30',1,4,'vacinação',30,36,36),(37,'2022-10-12','14:00',3,3,'retorno ortopedia',31,37,37),(38,'2022-10-12','15:00',2,1,'vacinação',32,38,38),(39,'2022-10-12','15:00',3,3,'ortopedia',17,19,39),(40,'2022-10-12','15:30',2,1,'retorno clínica',6,7,40),(41,'2022-10-12','16:00',3,3,'ortopedia',33,39,41),(42,'2022-10-12','16:30',2,1,'vacinação',34,40,42),(43,'2022-10-12','17:30',2,1,'vacinação',35,41,43),(44,'2022-10-12','18:00',2,1,'clínica',35,42,44),(45,'2022-10-13','08:00',1,4,'clínica',36,43,45),(46,'2022-10-13','09:00',1,4,'retorno clínica',37,44,46),(47,'2022-10-13','10:00',1,4,'retorno clínica',38,45,47),(48,'2022-10-13','11:30',1,4,'vacinação',39,46,48),(49,'2022-10-13','11:50',1,4,'vacinação',39,47,49),(50,'2022-10-13','12:10',1,4,'vacinação',39,48,50),(51,'2022-10-13','13:30',1,4,'vacinação',40,49,51),(52,'2022-10-13','14:30',2,1,'vacinação',41,50,52),(53,'2022-10-13','15:00',2,1,'clínica',41,51,53),(54,'2022-10-13','16:00',2,1,'clínica',42,52,54),(55,'2022-10-13','16:30',4,2,'dermatologia',27,32,55),(56,'2022-10-13','17:00',2,1,'retorno clínica',21,25,56),(57,'2022-10-13','18:00',4,2,'dermatologia',43,53,57),(58,'2022-10-13','18:30',2,1,'vacinação',44,54,58),(59,'2022-10-14','08:30',1,4,'vacinação',45,55,59),(60,'2022-10-14','08:50',1,4,'vacinação',45,56,60),(61,'2022-10-14','10:00',1,4,'clínica',46,57,61),(62,'2022-10-14','10:30',1,4,'retorno clínica',15,17,62),(63,'2022-10-14','11:30',1,4,'vacinação',47,58,63),(64,'2022-10-14','12:00',1,4,'vacinação',48,59,64),(65,'2022-10-14','13:00',2,1,'vacinação',49,60,65),(66,'2022-10-14','14:30',2,1,'vacinação',50,61,66),(67,'2022-10-14','15:00',2,1,'clínica',51,62,67),(68,'2022-10-14','16:30',2,1,'retorno clínica',13,14,68),(69,'2022-10-14','17:30',2,1,'retorno clínica',13,15,69),(70,'2022-10-14','18:00',2,1,'clínica',52,63,70),(71,'2022-10-14','18:30',2,1,'vacinação',53,64,71);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estagiario`
--

LOCK TABLES `estagiario` WRITE;
/*!40000 ALTER TABLE `estagiario` DISABLE KEYS */;
INSERT INTO `estagiario` VALUES (1,'Lorena Grecco','11990872660','loogreco@gmail.com','38342632627','Universidade Anhembi Morumbi','obrigatório'),(2,'Gabriela Ayumi','11975007954','ayumi@hotmail.com','44931804490','Faculdade Anhaguera','obrigatório'),(3,'Bianca Rossi','11914007459','biarossi99@gmail.com','42661466650','Faculdades Metropolitanas Unidas','extracurricular'),(4,'Gabriel Moraes','11979644830','gab_moraes@gmail.com','40759769238','Universidade Metodista de São Paulo','obrigatório');
/*!40000 ALTER TABLE `estagiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medico_veterinario`
--

LOCK TABLES `medico_veterinario` WRITE;
/*!40000 ALTER TABLE `medico_veterinario` DISABLE KEYS */;
INSERT INTO `medico_veterinario` VALUES (1,'Thalita de Brito','11999106258','thalita.britovet@gmail.com','32242663055','49933SP','clínica de pequenos animais'),(2,'Vitória Gillioli','11923800583','vitoria.gillioli@hotmail.com','46530529606','57007SP','clínica de pequenos animais'),(3,'Thiago Chagas','21941530148','thiago_orto@hotmail.com','14174590809','40524RJ','ortopedia'),(4,'Tânia Fernandes','11988480476','tania.fernandes@hotmail.com','15265058449','1848SP','dermatologia');
/*!40000 ALTER TABLE `medico_veterinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Belinha','canino','poodle','F','branco','2010-08-23','S',8.50,1),(2,'Thor','canino','pitbull','M','cinza','2020-09-22','N',18.60,2),(3,'Leona','canino','SRD','F','caramelo','2021-05-05','S',20.10,3),(4,'Bob','canino','shih tzu','M','bege','2008-10-10','S',4.30,4),(5,'Oscar','felino','SRD','M','tigrado com branco','2021-05-08','S',5.50,5),(6,'Tadeu','felino','SRD','M','tigrado com branco ','2021-05-09','S',5.40,5),(7,'Margo','felino','SRD','F','preto e branco','2014-03-01','S',5.60,6),(8,'Lulu','canino','lhasa apso','F','marrom ','2020-03-20','N',4.80,7),(9,'Batata','felino','SRD','M','preto e branco','2014-04-02','S',6.30,8),(10,'Amora','felino','SRD','F','preto','2018-06-10','S',5.20,9),(11,'Mel','canino','yorkshire','F','caramelo','2018-09-22','S',3.00,10),(12,'Amora','canino','SRD','F','preto','2019-08-23','S',10.00,11),(13,'Pérola','felino','persa','F','branco','2021-10-01','N',4.20,12),(14,'Jade','felino','persa','F','branco','2021-10-01','N',4.30,13),(15,'Princesa','felino','SRD','F','bege e branco','2018-08-15','S',4.00,13),(16,'Arya','felino','siamês ','F','bege e marrom ','2021-01-01','S',3.90,14),(17,'Fred','felino','SRD','M','laranja','2020-03-20','N',6.00,15),(18,'Thor','canino','labrador','M','caramelo','2020-03-20','S',23.10,16),(19,'Coralina','canino','border collie','F','marrom e branco','2013-02-18','S',15.50,17),(20,'Gatoso','felino','sphynx','M','não tem ','2017-01-01','N',4.00,18),(21,'Coca-cola','felino','SRD','F','preto','2022-08-15','N',1.10,19),(22,'Guaraná','felino','SRD','M','laranja','2022-08-15','N',1.10,19),(23,'Fanta','felino','SRD','M','tricolor','2022-08-15','N',1.30,19),(24,'Princesa','canino','SRD','F','caramelo','2017-10-04','S',12.50,20),(25,'Belinha','canino','poodle','F','branca','2013-12-01','S',6.80,21),(26,'Amora','canino','golden ','F','caramelo','2015-04-12','N',20.70,21),(27,'Vicky','canino','SRD','F','preto e branco','2012-03-10','S',37.80,22),(28,'Binho','felino','SRD','M','laranja','2020-03-20','S',6.30,23),(29,'Lady ','felino','maine coon ','F','tigrado','2020-01-01','N',6.30,24),(30,'Bill','canino','american bully','M','branco','2018-05-29','N',30.00,25),(31,'Tequila','felino','SRD','M','branco','2017-09-27','S',5.10,26),(32,'Vitoria','felino','SRD','F','tricolor','2017-10-04','S',4.70,27),(33,'Mel','canino','lhasa apso','F','marrom e preto','2019-11-20','S',4.20,28),(34,'Zeus','felino','SRD','M','bege e branco0','2018-12-10','N',5.30,29),(35,'Billy','felino','SRD','M','preto','2019-03-23','S',6.00,30),(36,'Gege','felino','SRD','M','preto','2017-05-20','S',5.10,30),(37,'Zara','canino','pitbull','F','preto e branco','2016-12-20','S',38.50,31),(38,'Thor','canino','american bully','M','marrom e branco','2018-03-01','N',33.50,32),(39,'July','felino','SRD','F','preto','2021-05-08','S',4.90,33),(40,'Bruce','canino','labrador','F','marrom','2019-05-19','S',27.80,34),(41,'Lance','canino','pointer alemão','M','marrom e branco','2019-01-01','S',42.00,35),(42,'Judith','felino','SRD','F','preto e branco','2019-11-24','S',4.40,35),(43,'Lua','felino','sphynx','F','não tem ','2018-06-10','S',5.00,36),(44,'Amora','felino','SRD','F','tigrado','2017-06-10','S',5.00,37),(45,'Percy','felino','SRD','M','laranja','2018-05-14','S',6.30,38),(46,'Chilo','canino','spitz','M','caramelo','2022-02-10','N',4.40,39),(47,'Mãezinha','canino','spitz','F','preto','2021-08-20','S',5.00,39),(48,'Florzinha','canino','spitz','F','preto','2022-02-10','N',4.70,39),(49,'Amora','canino','golder','F','caramelo','2019-11-24','S',27.40,40),(50,'Tequila','felino','SRD','F','tricolor','2018-03-01','S',4.90,41),(51,'Whisky ','felino','SRD','M','laranja ','2018-03-01','S',5.70,41),(52,'Lulu','canino','shih tzu','F','cinza e branco','2017-04-12','S',5.00,42),(53,'Toto','canino','SRD','M','cinza e preto','2014-08-30','S',17.00,43),(54,'Charlie','felino','SRD','M','cinza e branco','2022-07-10','N',3.00,44),(55,'Leona','canino','SRD','F','marrom','2019-05-24','S',15.40,45),(56,'Bill','canino','pitbull','M','marrom ','2018-12-25','S',19.10,45),(57,'Zeus','felino','SRD','M','branco','2019-10-10','S',5.30,46),(58,'Tadeu','felino','SRD','M','laranja','2022-09-09','N',2.50,47),(59,'Gaia','felino','maine coon ','F','tigrado','2022-06-29','S',4.90,48),(60,'Florzinha','canino','shih tzu','F','cinza','2020-09-09','S',5.00,49),(61,'Lua','felino','SRD','F','tigrado','2020-05-20','S',5.50,50),(62,'Princesa','canino','yorkshire','F','caramelo e preto','2019-11-24','S',3.80,51),(63,'Leona','canino','SRD','M','caramelo','2022-01-19','S',8.30,52),(64,'Mimi','felino','SRD','F','branco ','2018-07-30','S',5.70,53);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,260.00,1,1),(2,70.00,2,2),(3,115.00,3,3),(4,0.00,4,4),(5,120.00,5,5),(6,120.00,5,6),(7,170.00,6,7),(8,0.00,7,8),(9,0.00,8,9),(10,70.00,9,10),(11,105.00,10,11),(12,95.00,11,12),(13,55.00,12,13),(14,70.00,13,14),(15,70.00,13,15),(16,100.00,14,16),(17,70.00,15,17),(18,70.00,16,18),(19,0.00,17,19),(20,0.00,18,20),(21,75.00,19,21),(22,75.00,19,22),(23,75.00,19,23),(24,70.00,20,24),(25,120.00,21,25),(26,70.00,21,26),(27,95.00,22,27),(28,100.00,23,28),(29,0.00,24,29),(30,115.00,25,30),(31,170.00,26,31),(32,0.00,27,32),(33,0.00,28,33),(34,100.00,29,34),(35,70.00,30,35),(36,120.00,30,36),(37,0.00,31,37),(38,110.00,32,38),(39,250.00,17,19),(40,0.00,6,7),(41,250.00,33,39),(42,115.00,34,40),(43,115.00,35,41),(44,70.00,35,42),(45,70.00,36,43),(46,0.00,37,44),(47,0.00,38,45),(48,70.00,39,46),(49,70.00,39,47),(50,70.00,39,48),(51,105.00,40,49),(52,100.00,41,50),(53,70.00,41,51),(54,170.00,42,52),(55,210.00,27,32),(56,0.00,21,25),(57,260.00,43,53),(58,100.00,44,54),(59,95.00,45,55),(60,95.00,45,56),(61,120.00,46,57),(62,0.00,15,17),(63,75.00,47,58),(64,100.00,48,59),(65,110.00,49,60),(66,120.00,50,61),(67,70.00,51,62),(68,0.00,13,14),(69,0.00,13,15),(70,70.00,52,63),(71,100.00,53,64);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `remedio`
--

LOCK TABLES `remedio` WRITE;
/*!40000 ALTER TABLE `remedio` DISABLE KEYS */;
INSERT INTO `remedio` VALUES (1,1,'Meticorten 5mg','1 cp VO SID - 5 dias','antialérgico'),(2,2,'Gaviz 10mg','1 cp VO BID - 10 dias','protetor gástrico'),(3,3,'Cronidor 12mg','1 cp VO BID - 5 dias','analgésico'),(4,3,'Prediderm 5mg','1 cp VO SID - 5 dias','antiinflamatório '),(5,4,'Dipirona ','5 gotas VO TID - 5 dias','analgésico'),(6,4,'Agemoxi 50mg','1/4 cp VO BID - 7 dias','antibiótico '),(7,5,'Still','1 gota cada olho BID - 10 dias','colírio'),(8,6,'Cronidor 12mg','1 cp VO BID - 7 dias','analgésico'),(9,6,'Agemoxi 50mg','1/2 cp VO BID - 7 dias','antibiótico '),(10,7,'Dipirona ','7 gotas VO TID - 3 dias','analgésico'),(11,8,'Itraconazol 100 mg','1 cap VO SID - 30 dias','antifúngico '),(12,9,'Lactobac Cat ','2 mg VO SID - 15 dias','probiótico '),(13,10,'Condroplex 500mg','1 cp VO SID - 60 dias ','suplemento '),(14,12,'Ograx 500mg','1 cp VO SID - 30 dias','suplemento '),(15,13,'Vetaglós 50g','1 medida da espátula BID - 10 dias ','pomada cicatrizante '),(16,14,'Dipirona ','5 gotas VO TID - 3 dias ','analgésico'),(17,15,'Prediderm 5mg','1 + 1/2 cp VO BID - 5 dias ','antiinflamatório '),(18,16,'Agemoxi 50mg','1/4 cp VO BID - 7 dias','antibiótico '),(19,17,'Silimarina 200mg','1 ml VO SID - 60 dias ','protetor hepático '),(20,18,'Hemolitan Pet 30 ml','1 ml VO BID - 10 dias ','suplemento '),(21,19,'Otoguard 20 ml','2 gotas cada ouvido BID - 5 dias','otológico '),(22,20,'Drontal Puppy','3 doses de 2 ml VO SID - 3 dias seguidos ','vermífugo ');
/*!40000 ALTER TABLE `remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tratamento`
--

LOCK TABLES `tratamento` WRITE;
/*!40000 ALTER TABLE `tratamento` DISABLE KEYS */;
INSERT INTO `tratamento` VALUES (1,1,4,'medicamentoso','2022-10-10'),(2,2,1,'medicamentoso','2022-10-10'),(3,7,1,'medicamentoso','2022-10-10'),(4,8,1,'medicamentoso','2022-10-10'),(5,20,1,'medicamentoso','2022-10-11'),(6,25,2,'medicamentoso','2022-10-11'),(7,31,1,'medicamentoso','2022-10-12'),(8,32,1,'medicamentoso','2022-10-12'),(9,35,1,'medicamentoso','2022-10-12'),(10,39,3,'medicamentoso','2022-10-12'),(11,41,3,'cirúrgico','2022-10-12'),(12,44,2,'medicamentoso','2022-10-12'),(13,45,1,'medicamentoso','2022-10-13'),(14,54,2,'medicamentoso','2022-10-13'),(15,57,4,'medicamentoso','2022-10-13'),(16,61,1,'medicamentoso','2022-10-14'),(17,62,1,'medicamentoso','2022-10-14'),(18,67,2,'medicamentoso','2022-10-14'),(19,69,2,'medicamentoso','2022-10-14'),(20,70,2,'medicamentoso','2022-10-14');
/*!40000 ALTER TABLE `tratamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vacinacao`
--

LOCK TABLES `vacinacao` WRITE;
/*!40000 ALTER TABLE `vacinacao` DISABLE KEYS */;
INSERT INTO `vacinacao` VALUES (3,1,'2022-10-10','V10 e raiva','320/11 e 508/22','2023-10-10'),(5,1,'2022-10-10','V5 e raiva','123/22 e 508/22','2023-10-10'),(6,1,'2022-10-10','V5 e raiva','123/22 e 508/23','2023-10-11'),(11,2,'2022-10-10','giardíase e gripe','456/22 e 378/22','2022-11-10'),(12,2,'2022-10-10','V8 e raiva','245/22 e 508/22','2023-10-10'),(13,2,'2022-10-10','V4','350/22','2022-11-10'),(16,2,'2022-10-10','V4 e raiva','350/22 e 508/22','2023-10-10'),(18,1,'2022-10-11','V10 ','320/22','2022-11-11'),(21,1,'2022-10-11','V5 ','123/22','2022-11-11'),(22,1,'2022-10-11','V5','123/22','2022-11-11'),(23,1,'2022-10-11','V5 e raiva','123/22 e 508/22','2023-10-11'),(27,2,'2022-10-11','V8 e raiva','245/22 e 508/22','2023-10-11'),(28,2,'2022-10-11','V4 e raiva','350/22 e 508/22','2023-10-11'),(30,1,'2022-10-11','V10 e raiva','508/22 e 320/22','2023-10-11'),(34,1,'2022-10-12','V4 e raiva','350/22 e 508/22','2023-10-12'),(36,1,'2022-10-12','V5 e raiva','123/22 e 510/22','2023-10-12'),(38,2,'2022-10-12','giardíase e raiva','456/22 e 510/22','2023-10-12'),(42,2,'2022-10-12','V10 e raiva','320/22 e 510/22','2023-10-12'),(43,2,'2022-10-12','V10 e raiva','320/22 e 510/22','2023-10-12'),(48,1,'2022-10-13','V10 ','320/22','2022-11-13'),(49,1,'2022-10-13','V11','320/22','2022-11-13'),(50,1,'2022-10-13','V12','320/22','2022-11-13'),(51,1,'2022-10-13','raiva e gripe','510/22 e 378/22','2022-11-13'),(52,2,'2022-10-13','V4 e raiva','350/22 e 510/22','2023-10-13'),(58,2,'2022-10-13','V4 e raiva','350/22 e 510/22','2023-10-13'),(59,1,'2022-10-14','V8 e raiva','245/22 e 510/22','2023-10-14'),(60,1,'2022-10-14','V8 e raiva','245/22 e 510/22','2023-10-14'),(63,1,'2022-10-14','V5','123/22','2022-11-14'),(64,1,'2022-10-14','V4 e raiva','305/22 e 510/22','2023-10-14'),(65,1,'2022-10-14','giardíase e raiva','456/22 e 518/22','2023-10-14'),(66,2,'2022-10-14','V5 e raiva','123/22 e 518/22','2023-10-14'),(71,2,'2022-10-14','V4 e raiva','350/22 e 518/22','2023-10-14');
/*!40000 ALTER TABLE `vacinacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 15:54:47
