-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: empresax
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `CodCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Descr` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CodCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Bebidas'),(2,'Condimentos'),(3,'Confeitos'),(4,'Laticínios'),(5,'Grãos/Cereais'),(6,'Carnes/Aves'),(7,'Hortigranjeiros'),(8,'Frutos do Mar');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CodCli` char(5) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Contato` varchar(30) NOT NULL,
  `Cargo` varchar(30) NOT NULL,
  `Endereco` varchar(60) NOT NULL,
  `Cidade` varchar(15) NOT NULL,
  `Regiao` varchar(15) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `Pais` varchar(15) NOT NULL,
  `Telefone` varchar(24) NOT NULL,
  `Fax` varchar(24) NOT NULL,
  PRIMARY KEY (`CodCli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('ALFKI','Alfreds Futterkiste','Maria Anderss','Representante de Vendas','Obere Str. 57','Berlin','','12209','Alemanha','030-0074321','030-0076545'),('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Propriet?rio','Avda. de la Constituci?n 2222','M?xico D.F.','','05021','M?xico','(5) 555-4729','(5) 555-3745'),('ANTON','Antonio Moreno Taquer','Antonio Moreno','Propriet?rio','Mataderos  2312','M?xico D.F.','','05023','M?xico','(5) 555-3932',''),('AROUT','Around the Horn','Thomas Hardy','Representante de Vendas','120 Hanover Sq.','London','','WA1 1DP','Reino Unido','(171) 555-7788','(171) 555-6750'),('BERGS','Berglunds snabbk?p','Christina Berglund','Administrador de Pedidos','Berguvsv?gen  8','Lule','','S-958 22','Su?cia','0921-12 34 65','0921-12 34 67'),('BLAUS','Blauer See Delikatessen','Hanna Moos','Representante de Vendas','Forsterstr. 57','Mannheim','','68306','Alemanha','0621-08460','0621-08924'),('BLONP','Blondel p?re et fils','Fr?d?rique Citeaux','Gerente de Marketing','24, place Kl?ber','Strasbourg','','67000','Fran','88.60.15.31','88.60.15.32'),('BOLID','B?lido Comidas preparadas','Mart?n Sommer','Propriet?rio','C/ Araquil, 67','Madrid','','28023','Espanha','(91) 555 22 82','(91) 555 91 99'),('BONAP','Bon app ','Laurence Lebihan','Propriet?rio','12, rue des Bouchers','Marseille','','13008','Fran','91.24.45.40','91.24.45.41'),('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Gerente Financeiro','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canad','(604) 555-4729','(604) 555-3745'),('BSBEV','B s Beverages','Victoria Ashworth','Representante de Vendas','Fauntleroy Circus','London','','EC2 5NT','Reino Unido','(171) 555-1212',''),('CACTU','Cactus Comidas para llevar','Patricio Simpson','Agente de Vendas','Cerrito 333','Buenos Aires','','1010','Argentina','(1) 135-5555','(1) 135-4892'),('CENTC','Centro comercial Moctezuma','Francisco Chang','Gerente de Marketing','Sierras de Granada 9993','M?xico D.F.','','05022','M?xico','(5) 555-3392','(5) 555-7293'),('CHOPS','Chop-suey Chinese','Yang Wang','Propriet?rio','Hauptstr. 29','Bern','','3012','Su?','0452-076545',''),('COMMI','Com?rcio Mineiro','Pedro Afonso','Assessor de Vendas','Av. dos Lus?adas, 23','S?o Paulo','SP','05432-043','Brasil','(11) 555-7647',''),('CONSH','Consolidated Holdings','Elizabeth Brown','Representante de Vendas','Berkeley Gardens 12  Brewery ','London','','WX1 6LT','Reino Unido','(171) 555-2282','(171) 555-9199'),('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Administrador de Pedidos','Walserweg 21','Aachen','','52066','Alemanha','0241-039123','0241-059428'),('DUMON','Du monde entier','Janine Labrune','Propriet?rio','67, rue des Cinquante Otages','Nantes','','44000','Fran','40.67.88.88','40.67.89.89'),('EASTC','Eastern Connection','Ann Devon','Agente de Vendas','35 King George','London','','WX3 6FW','Reino Unido','(171) 555-0297','(171) 555-3373'),('ERNSH','Ernst Handel','Roland Mendel','Gerente de Vendas','Kirchgasse 6','Graz','','8010','?ustria','7675-3425','7675-3426'),('FAMIA','Familia Arquibaldo','Aria Cruz','Assistente de Marketing','Rua Or?s, 92','S?o Paulo','SP','05442-030','Brasil','(11) 555-9857',''),('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Gerente Financeiro','C/ Moralzarzal, 86','Madrid','','28034','Espanha','(91) 555 94 44','(91) 555 55 93'),('FOLIG','Folies gourmandes','Martine Ranc','Assistente do Agente de Vendas','184, chauss?e de Tournai','Lille','','59000','Fran','20.16.10.16','20.16.10.17'),('FOLKO','Folk och f? HB','Maria Larsson','Propriet?rio','?kergatan 24','Br?cke','','S-844 67','Su?cia','0695-34 67 21',''),('FRANK','Frankenversand','Peter Franken','Gerente de Marketing','Berliner Platz 43','M?nchen','','80805','Alemanha','089-0877310','089-0877451'),('FRANR','France restauration','Carine Schmitt','Gerente de Marketing','54, rue Royale','Nantes','','44000','Fran','40.32.21.21','40.32.21.20'),('FRANS','Franchi S.p.A.','Paolo Accorti','Representante de Vendas','Via Monte Bianco 34','Torino','','10100','It?lia','011-4988260','011-4988261'),('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Gerente de Vendas','Jardim das rosas n. 32','Lisboa','','1675','Portugal','(1) 354-2534','(1) 354-2535'),('GALED','Galer?a del gastr?nomo','Eduardo Saavedra','Gerente de Marketing','Rambla de Catalu?a, 23','Barcelona','','08022','Espanha','(93) 203 4560','(93) 203 4561'),('GODOS','Godos Cocina T?pica','Jos? Pedro Freyre','Gerente de Vendas','C/ Romero, 33','Sevilla','','41101','Espanha','(95) 555 82 82',''),('GOURL','Gourmet Lanchonetes','Andr? Fonseca','Assessor de Vendas','Av. Brasil, 442','Campinas','SP','04876-786','Brasil','(11) 555-9482',''),('GREAL','Great Lakes Food Market','Howard Snyder','Gerente de Marketing','2732 Baker Blvd.','Eugene','OR','97403','EUA','(503) 555-7555',''),('GROSR','GROSELLA-Restaurante','Manuel Pereira','Propriet?rio','5? Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397'),('HANAR','Hanari Carnes','Mario Pontes','Gerente Financeiro','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brasil','(21) 555-0091','(21) 555-8765'),('HILAA','HILARI?N-Abastos','Carlos Hern?ndez','Representante de Vendas','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela','(5) 555-1340','(5) 555-1948'),('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Representante de Vendas','City Center Plaza 516 Main St.','Elgin','OR','97827','EUA','(503) 555-6874','(503) 555-2376'),('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Assessor de Vendas','8 Johnstown Road','Cork','Co. Cork','','Irlanda','2967 542','2967 3333'),('ISLAT','Island Trading','Helen Bennett','Gerente de Marketing','Garden House Crowther Way','Cowes','Isle of Wigth','PO31 7PJ','Reino Unido','(198) 555-8888',''),('KOENE','K?niglich Essen','Philip Cramer','Assessor de Vendas','Maubelstr. 90','Brandenburg','','14776','Alemanha','0555-09876',''),('LACOR','La corne d abondance','Daniel Tonini','Representante de Vendas','67, avenue de l Europe','Versailles','','78000','Fran','30.59.84.10','30.59.85.11'),('LAMAI','La maison d Asie','Annette Roulet','Gerente de Vendas','1 rue Alsace-Lorraine','Toulouse','','31000','Fran','61.77.61.10','61.77.61.11'),('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Assistente de Marketing','1900 Oak St.','Vancouver','BC','V3F 2K1','Canad','(604) 555-3392','(604) 555-7293'),('LAZYK','Lazy K Kountry Store','John Steel','Gerente de Marketing','12 Orchestra Terrace','Walla Walla','WA','99362','EUA','(509) 555-7969','(509) 555-6221'),('LEHMS','Lehmanns Marktstand','Renate Messner','Representante de Vendas','Magazinweg 7','Frankfurt a.M. ','','60528','Alemanha','069-0245984','069-0245874'),('LETSS','Let s Stop N Shop','Jaime Yorres','Propriet?rio','87 Polk St. Suite 5','San Francisco','CA','94117','EUA','(415) 555-5938',''),('LILAS','LILA-Supermercado','Carlos Gonz?lez','Gerente Financeiro','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256'),('LINOD','LINO-Delicateses','Felipe Izquierdo','Propriet?rio','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93'),('LONEP','Lonesome Pine Restaurant','Fran Wilson','Gerente de Vendas','89 Chiaroscuro Rd.','Portland','OR','97219','EUA','(503) 555-9573','(503) 555-9646'),('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Gerente de Marketing','Via Ludovico il Moro 22','Bergamo','','24100','It?lia','035-640230','035-640231'),('MAISD','Maison Dewey','Catherine Dewey','Agente de Vendas','Rue Joseph-Bens 532','Bruxelles','','B-1180','B?lgica','(02) 201 24 67','(02) 201 24 68'),('MEREP','M?re Paillarde','Jean Fresni?re','Assistente de Marketing','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canad','(514) 555-8054','(514) 555-8055'),('MORGK','Morgenstern Gesundkost','Alexander Feuer','Assistente de Marketing','Heerstr. 22','Leipzig','','04179','Alemanha','0342-023176',''),('NORTS','North/South','Simon Crowther','Assessor de Vendas','South House 300 Queensbridge','London','','SW7 1RZ','Reino Unido','(171) 555-7733','(171) 555-2530'),('OCEAN','Oc?ano Atl?ntico Ltda.','Yvonne Moncada','Agente de Vendas','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','','1010','Argentina','(1) 135-5333','(1) 135-5535'),('OLDWO','Old World Delicatessen','Rene Phillips','Representante de Vendas','2743 Bering St.','Anchorage','AK','99508','EUA','(907) 555-7584','(907) 555-2880'),('OTTIK','Ottilies K?seladen','Henriette Pfalzheim','Propriet?rio','Mehrheimerstr. 369','K?ln','','50739','Alemanha','0221-0644327','0221-0765721'),('PARIS','Paris sp?cialit','Marie Bertrand','Propriet?rio','265, boulevard Charonne','Paris','','75012','Fran','(1) 42.34.22.66','(1) 42.34.22.77'),('PERIC','Pericles Comidas cl?sicas','Guillermo Fern?ndez','Representante de Vendas','Calle Dr. Jorge Cash 321','M?xico D.F.','','05033','M?xico','(5) 552-3745','(5) 545-3745'),('PICCO','Piccolo und mehr','Georg Pipps','Gerente de Vendas','Geislweg 14','Salzburg','','5020','?ustria','6562-9722','6562-9723'),('PRINI','Princesa Isabel Vinhos','Isabel de Castro','Representante de Vendas','Estrada da sa?de n. 58','Lisboa','','1756','Portugal','(1) 356-5634',''),('QUEDE','Que Del?cia','Bernardo Batista','Gerente Financeiro','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brasil','(21) 555-4252','(21) 555-4545'),('QUEEN','Queen Cozinha','L?cia Carvalho','Assistente de Marketing','Alameda dos Can?rios, 891','S?o Paulo','SP','05487-020','Brasil','(11) 555-1189',''),('QUICK','QUICK-Stop','Horst Kloss','Gerente Financeiro','Taucherstra?e 10','Cunewalde','','01307','Alemanha','0372-035188',''),('RANCH','Rancho grande','Sergio Guti?rrez','Representante de Vendas','Av. del Libertador 900','Buenos Aires','','1010','Argentina','(1) 123-5555','(1) 123-5556'),('RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistente do Repr. de Vendas','2817 Milton Dr.','Albuquerque','NM','87110','EUA','(505) 555-5939','(505) 555-3620'),('REGGC','Reggiani Caseifici','Maurizio Moroni','Assessor de Vendas','Strada Provinciale 124','Reggio Emilia','','42100','It?lia','0522-556721','0522-556722'),('RICAR','Ricardo Adocicados','Janete Limeira','Assistente do Agente de Vendas','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brasil','(21) 555-3412',''),('RICSU','Richter Supermarkt','Michael Holz','Gerente de Vendas','Grenzacherweg 237','Gen?ve','','1203','Su?','0897-034214',''),('ROMEY','Romero y tomillo','Alejandra Camino','Gerente Financeiro','Gran V?a, 1','Madrid','','28001','Espanha','(91) 745 6200','(91) 745 6210'),('SANTG','Sant? Gourmet','Jonas Bergulfsen','Propriet?rio','Erling Skakkes gate 78','Stavern','','4110','Noruega','07-98 92 35','07-98 92 47'),('SAVEA','Save-a-lot Markets','Jose Pavarotti','Representante de Vendas','187 Suffolk Ln.','Boise','ID','83720','EUA','(208) 555-8097',''),('SEVES','Seven Seas Imports','Hari Kumar','Gerente de Vendas','90 Wadhurst Rd.','London','','OX15 4NB','Reino Unido','(171) 555-1717','(171) 555-5646'),('SIMOB','Simons bistro','Jytte Petersen','Propriet?rio','Vinb?ltet 34','K?benhavn','','1734','Dinamarca','31 12 34 56','31 13 35 57'),('SPECD','Sp?cialit?s du monde','Dominique Perrier','Gerente de Marketing','25, rue Lauriston','Paris','','75016','Fran','(1) 47.55.60.10','(1) 47.55.60.20'),('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Gerente de Vendas','P.O. Box 555','Lander','WY','82520','EUA','(307) 555-4680','(307) 555-6525'),('SUPRD','Supr?mes d?lices','Pascale Cartrain','Gerente Financeiro','Boulevard Tirou, 255','Charleroi','','B-6000','B?lgica','(071) 23 67 22 20','(071) 23 67 22 21'),('THEBI','The Big Cheese','Liz Nixon','Gerente de Marketing','89 Jefferson Way Suite 2','Portland','OR','97201','EUA','(503) 555-3612',''),('THECR','The Cracker Box','Liu Wong','Assistente de Marketing','55 Grizzly Peak Rd.','Butte','MT','59801','EUA','(406) 555-5834','(406) 555-8083'),('TOMSP','Toms Spezialit?ten','Karin Josephs','Gerente de Marketing','Luisenstr. 48','M?nster','','44087','Alemanha','0251-031259','0251-035695'),('TORTU','Tortuga Restaurante','Miguel Angel Paolino','Propriet?rio','Avda. Azteca 123','M?xico D.F.','','05033','M?xico','(5) 555-2933',''),('TRADH','Tradi??o Hipermercados','Anabela Domingues','Representante de Vendas','Av. In?s de Castro, 414','S?o Paulo','SP','05634-030','Brasil','(11) 555-2167','(11) 555-2168'),('TRAIH','Trail s Head Gourmet Provisioners','Helvetius Nagy','Assessor de Vendas','722 DaVinci Blvd.','Kirkland','WA','98034','EUA','(206) 555-8257','(206) 555-2174'),('VAFFE','Vaffeljernet','Palle Ibsen','Gerente de Vendas','Smagsl?get 45','?rhus','','8200','Dinamarca','86 21 32 43','86 22 33 44'),('VICTE','Victuailles en stock','Mary Saveley','Agente de Vendas','2, rue du Commerce','Lyon','','69004','Fran','78.32.54.86','78.32.54.87'),('VINET','Vins et alcools Chevalier','Paul Henriot','Gerente Financeiro','59 rue de l Abbaye','Reims','','51100','Fran','26.47.15.10','26.47.15.11'),('WANDK','Die Wandernde Kuh','Rita M?ller','Representante de Vendas','Adenauerallee 900','Stuttgart','','70563','Alemanha','0711-020361','0711-035428'),('WARTH','Wartian Herkku','Pirkko Koskitalo','Gerente Financeiro','Torikatu 38','Oulu','','90110','Finl?ndia','981-443655','981-443655'),('WELLI','Wellington Importadora','Paula Parente','Gerente de Vendas','Rua do Mercado, 12','Resende','SP','08737-363','Brasil','(14) 555-8122',''),('WHITC','White Clover Markets','Karl Jablonski','Propriet?rio','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','EUA','(206) 555-4112','(206) 555-4115'),('WILMK','Wilman Kala','Matti Karttunen','Propriet?rio/Assist. Marketing','Keskuskatu 45','Helsinki','','21240','Finl?ndia','90-224 8858','90-224 8858'),('WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Propriet?rio','ul. Filtrowa 68','Warszawa','','01-012','Pol?nia','(26) 642-7012','(26) 642-7012');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhesped`
--

DROP TABLE IF EXISTS `detalhesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhesped` (
  `NumPed` int(11) NOT NULL DEFAULT 0,
  `CodProd` int(11) NOT NULL DEFAULT 0,
  `Preco` float DEFAULT NULL,
  `Qtde` smallint(6) DEFAULT NULL,
  `Desconto` float DEFAULT NULL,
  PRIMARY KEY (`NumPed`,`CodProd`),
  KEY `CodProd` (`CodProd`),
  CONSTRAINT `detalhesped_ibfk_1` FOREIGN KEY (`NumPed`) REFERENCES `pedidos` (`NumPed`) ON DELETE CASCADE,
  CONSTRAINT `detalhesped_ibfk_2` FOREIGN KEY (`CodProd`) REFERENCES `produtos` (`CodProd`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhesped`
--

LOCK TABLES `detalhesped` WRITE;
/*!40000 ALTER TABLE `detalhesped` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalhesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `CodFor` int(11) NOT NULL AUTO_INCREMENT,
  `Empresa` varchar(40) DEFAULT NULL,
  `Contato` varchar(30) DEFAULT NULL,
  `Cargo` varchar(30) DEFAULT NULL,
  `Endereco` varchar(60) DEFAULT NULL,
  `Cidade` varchar(15) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `Pais` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CodFor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Exotic Liquids','Charlotte Cooper','Gerente de Encomendas','49 Gilbert St.','London','EC1 4SD','Reino Unido'),(2,'Exotic Liquids','Charlotte Cooper','Gerente de Encomendas','49 Gilbert St.','London','EC1 4SD','Reino Unido'),(3,'New Orleans Cajun Delights','Shelley Burke','Administrador de Pedidos','P.O. Box 78934','New Orleans','70117','EUA'),(4,'Grandma Kelly s Homestead','Regina Murphy','Representante de Vendas','707 Oxford Rd.','Ann Arbor','48104','EUA'),(5,'Tokyo Traders','Yoshi Nagase','Gerente de Marketing','9-8 SekimaiMusashino-shi','Tokyo','100','Jap'),(6,'Cooperativa de Quesos  Las Cabras ','Antonio del Valle Saavedra ','Administrador de Exporta?','Calle del Rosal 4','Oviedo','33007','Espanha'),(7,'Mayumi s','Mayumi Ohno','Representante de Marketing','92 Setsuko Chuo-ku','Osaka','545','Jap'),(8,'Pavlova, Ltd.','Ian Devling','Gerente de Marketing','74 Rose St.Moonie Ponds','Melbourne','3058','Austr?lia'),(9,'Specialty Biscuits, Ltd.','Peter Wilson','Representante de Vendas','29 King s Way','Manchester','M14 GSD','Reino Unido'),(10,'PB Kn?ckebr?d AB','Lars Peterson','Agente de Vendas','Kaloadagatan 13','G?teborg','S-345 67','Su?cia'),(11,'Refrescos Americanas LTDA','Carlos Diaz','Gerente de Marketing','Av. das Americanas 12.890','S?o Paulo','5442','Brasil'),(12,'Heli S??waren GmbH & Co. KG','Petra Winkler','Gerente de Vendas','Tiergartenstra?e 5','Berlin','10785','Alemanha'),(13,'Plutzer Lebensmittelgro?m?rkte AG','Martin Bein','Ger. Marketing Internacional','Bogenallee 51','Frankfurt','60439','Alemanha'),(14,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coord. Mercados Estrangeiros','Frahmredder 112a','Cuxhaven','27478','Alemanha'),(15,'Formaggi Fortini s.r.l.','Elio Rossi','Representante de Vendas','Viale Dante, 75','Ravenna','48100','It?lia'),(16,'Norske Meierier','Beate Vileid','Gerente de Marketing','Hatlevegen 5','Sandvika','1320','Noruega'),(17,'Bigfoot Breweries','Cheryl Saylor','Rep. Financeiro Local','3400 - 8th AvenueSuite 210','Bend','97101','EUA'),(18,'Svensk Sj?f?da AB','Michael Bj?rn','Representante de Vendas','Brovallav?gen 231','Stockholm','S-123 45','Su?cia'),(19,'Aux joyeux eccl?siastiques','Guyl?ne Nodier','Gerente de Vendas','203, Rue des Francs-Bourgeois','Paris','75004','Fran'),(20,'New England Seafood Cannery','Robb Merchant','Agente Financeiro de Atacado','Order Processing Dept.2100 Paul Revere Blvd.','Boston','02134','EUA'),(21,'Leka Trading','Chandra Leka','Propriet?rio','471 Serangoon Loop, Suite #402','Singapore','0512','Cingapura'),(22,'Lyngbysild','Niels Petersen','Gerente de Vendas','LyngbysildFiskebakken 10','Lyngby','2800','Dinamarca'),(23,'Zaanse Snoepfabriek','Dirk Luchte','Gerente Financeiro','VerkoopRijnweg 22','Zaandam','9999 ZZ','Paises Baixos'),(24,'Karkki Oy','Anne Heikkonen','Gerente do Produto','Valtakatu 12','Lappeenranta','53120','Finl?ndia'),(25,'G day, Mate','Wendy Mackenzie','Representante de Vendas','170 Prince Edward ParadeHunter s Hill','Sydney','2042','Austr?lia'),(26,'Ma Maison','Jean-Guy Lauzon','Gerente de Marketing','2960 Rue St. Laurent','Montr?al','H1J 1C3','Canad'),(27,'Pasta Buttini s.r.l.','Giovanni Giudici','Administrador de Pedidos','Via dei Gelsomini, 153','Salerno','84100','It?lia'),(28,'Escargots Nouveaux','Marie Delamare','Gerente de Vendas','22, rue H. Voiron','Montceau','71300','Fran'),(29,'Gai p?turage','Eliane Noz','Representante de Vendas','Bat. B3, rue des Alpes','Annecy','74000','Fran'),(30,'For?ts d ?rables','Chantal Goulet','Gerente Financeiro','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canad');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `CodFun` int(11) NOT NULL AUTO_INCREMENT,
  `Sobrenome` varchar(20) DEFAULT NULL,
  `Nome` varchar(10) DEFAULT NULL,
  `Cargo` varchar(30) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `Endereco` varchar(60) DEFAULT NULL,
  `Cidade` varchar(15) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `Pais` varchar(15) DEFAULT NULL,
  `Fone` varchar(24) DEFAULT NULL,
  `Salario` float DEFAULT 0,
  PRIMARY KEY (`CodFun`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Davolio','Nancy','Representante de Vendas','1968-12-08','507 - 20th Ave. E.Apt. 2A','Seattle','98122','EUA','(206) 555-9857',5000),(2,'Fuller','Andrew','Vice-Presidente de Vendas','1952-02-19','908 W. Capital Way','Tacoma','98401','EUA','(206) 555-9482',10000),(3,'Leverling','Janet','Representante de Vendas','1963-08-30','722 Moss Bay Blvd.','Kirkland','98033','EUA','(206) 555-3412',12000),(4,'Peacock','Margaret','Representante de Vendas','1958-09-19','4110 Old Redmond Rd.','Redmond','98052','EUA','(206) 555-8122',4500),(5,'Buchanan','Steven','Gerente de Vendas','1955-03-04','14 Garrett Hill','London','SW1 8JR','Reino Unido','(71) 555-4848',11000),(6,'Suyama','Michael','Representante de Vendas','1963-07-02','Coventry House Miner Rd.','London','EC2 7JR','Reino Unido','(71) 555-7773',8000),(7,'King','Robert','Representante de Vendas','1960-05-29','Edgeham Hollow Winchester Way','London','RG1 9SP','Reino Unido','(71) 555-5598',11500),(8,'Callahan','Laura','Coordenador de Vendas Internas','1958-01-09','4726 - 11th Ave. N.E.','Seattle','98105','EUA','(206) 555-1189',9500),(9,'Dodsworth','Anne','Representante de Vendas','1969-07-02','7 Houndstooth Rd.','London','WG2 7LT','Reino Unido','(71) 555-4444',4000);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `NumPed` int(11) NOT NULL AUTO_INCREMENT,
  `CodCli` char(5) DEFAULT NULL,
  `CodFun` int(11) DEFAULT 0,
  `DataPed` date DEFAULT NULL,
  `DataEntrega` date DEFAULT NULL,
  `Frete` float DEFAULT 0,
  PRIMARY KEY (`NumPed`),
  KEY `CodCli` (`CodCli`),
  KEY `CodFun` (`CodFun`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CodCli`) REFERENCES `clientes` (`CodCli`) ON DELETE CASCADE,
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`CodFun`) REFERENCES `funcionarios` (`CodFun`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11078 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `pormes`
--

DROP TABLE IF EXISTS `pormes`;
/*!50001 DROP VIEW IF EXISTS `pormes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pormes` (
  `dataped` tinyint NOT NULL,
  `Mes` tinyint NOT NULL,
  `NomeMes` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `produto_categoria`
--

DROP TABLE IF EXISTS `produto_categoria`;
/*!50001 DROP VIEW IF EXISTS `produto_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `produto_categoria` (
  `DescricaoProduto` tinyint NOT NULL,
  `DescrCategoria` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `CodProd` int(11) NOT NULL AUTO_INCREMENT,
  `Descr` varchar(40) DEFAULT NULL,
  `CodFor` int(11) DEFAULT NULL,
  `CodCategoria` int(11) DEFAULT NULL,
  `Preco` float DEFAULT 0,
  `Unidades` smallint(6) DEFAULT 0,
  `Descontinuado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CodProd`),
  KEY `CodCategoria` (`CodCategoria`),
  KEY `CodFor` (`CodFor`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,' Chai Larene Pires Colch ',1,1,39,18,''),(2,'Chang',1,1,19,17,'\0'),(3,'Aniseed Syrup',1,2,10,13,'\0'),(4,'Chef Anton?s Cajun Seasoning',2,2,22,53,'\0'),(5,'Chef Anton?s Gumbo Mix',2,2,21.35,0,''),(6,'Grandma?s Boysenberry Spread',3,2,25,120,'\0'),(7,'Uncle Bob?s Organic Dried Pears',3,7,30,15,'\0'),(8,'Northwoods Cranberry Sauce',3,2,40,6,'\0'),(9,'Mishi Kobe Niku',4,6,97,29,''),(10,'Ikura Duda',4,8,31,31,'\0'),(11,'Queso Cabrales',5,4,21,22,'\0'),(12,'Queso Manchego La Pastora',5,4,38,86,'\0'),(13,'Konbu Pires',6,8,6,24,'\0'),(14,'Tofu',6,7,23.25,35,'\0'),(15,'Genen Shouyu',6,2,15.5,39,'\0'),(16,'Pavlova Sophe',7,3,17.45,29,'\0'),(17,'Alice Mutton',7,6,39,0,''),(18,'Carnarvon Tigers',7,8,62.5,42,'\0'),(19,'Teatime Chocolate Biscuits',8,3,9.2,25,'\0'),(20,'Sir Rodney?s Marmalade',8,3,81,40,'\0'),(21,'Sir Rodney?s Scones',8,3,10,3,'\0'),(22,'Gustaf?s Kn?ckebr?d',9,5,21,104,'\0'),(23,'Tunnbr?d',9,5,9,61,'\0'),(24,'Guaran? Fant?stica',10,1,4.5,20,''),(25,'NuNuCa Nu?-Nougat-Creme',11,3,14,76,'\0'),(26,'Gumb?r Gummib?rchen',11,3,31.23,15,'\0'),(27,'Schoggi Schokolade',11,3,43.9,49,'\0'),(28,'R?ssle Sauerkraut',12,7,45.6,26,''),(29,'Th?ringer Rostbratwurst',12,6,123.79,0,''),(30,'Nord-Ost Matjeshering',13,8,25.89,10,'\0'),(31,'Gorgonzola Telino',14,4,12.5,0,'\0'),(32,'Mascarpone Fabioli',14,4,32,9,'\0'),(33,'Geitost',15,4,2.5,112,'\0'),(34,'Sasquatch Ale',16,1,14,111,'\0'),(35,'Steeleye Stout',16,1,18,20,'\0'),(36,'Inlagd Sill',17,8,19,112,'\0'),(37,'Gravad lax',17,8,26,11,'\0'),(38,'C?te de Blaye',18,1,263.5,17,'\0'),(39,'Chartreuse verte',18,1,18,69,'\0'),(40,'Boston Crab Meat',19,8,18.4,123,'\0'),(41,'Jack?s New England Clam Chowder',19,8,9.65,85,'\0'),(42,'Singaporean Hokkien Fried Mee',20,5,14,26,''),(43,'Ipoh Coffee',20,1,46,17,'\0'),(44,'Gula Malacca',20,2,19.45,27,'\0'),(45,'R?gede sild',21,8,9.5,5,'\0'),(46,'Spegesild',21,8,12,95,'\0'),(47,'Zaanse koeken',22,3,9.5,36,'\0'),(48,'Chocolade',22,3,12.75,15,'\0'),(49,'Maxilaku',23,3,20,10,'\0'),(50,'Valkoinen suklaa',23,3,16.25,65,'\0'),(51,'Manjimup Dried Apples',24,7,53,20,'\0'),(52,'Filo Mix',24,5,7,38,'\0'),(53,'Perth Pasties',24,6,32.8,0,''),(54,'Tourti?re',25,6,7.45,21,'\0'),(55,'Pet chinois',25,6,24,115,'\0'),(56,'Gnocchi di nonna Alice',26,5,38,21,'\0'),(57,'Ravioli Angelo',26,5,19.5,36,'\0'),(58,'Escargots de Bourgogne',27,8,13.25,62,'\0'),(59,'Raclette Courdavault',28,4,55,79,'\0'),(60,'Camembert Pierrot',28,4,34,19,'\0'),(61,'Sirop disrable',29,2,28.5,113,'\0'),(62,'Tarte au sucre',29,3,49.3,17,'\0'),(63,'Vegie-spread',7,2,43.9,24,'\0'),(64,'Wimmers gute Semmelkndel',12,5,33.25,22,'\0'),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,21.05,76,'\0'),(66,'Louisiana Hot Spiced Okra',2,2,17,4,'\0'),(67,'Laughing Lumberjack Lager',16,1,14,52,'\0'),(68,'Scottish Longbreads',8,3,12.5,6,'\0'),(69,'Gudbrandsdalsost',15,4,36,26,'\0'),(70,'Outback Lager',7,1,15,15,'\0'),(71,'Fltemysost',15,4,21.5,26,'\0'),(72,'Mozzarella di Giovanni',14,4,34.8,14,'\0'),(73,'Red Kaviar',17,8,15,101,'\0'),(74,'Longlife Tofu',4,7,10,4,'\0'),(75,'Rhenbreu Klosterbier',12,1,7.75,125,'\0'),(76,'Lakkalikri',23,1,18,57,'\0'),(77,'Original Frankfurter',12,2,13,32,'\0'),(84,'Rouger One',1,1,1,1,''),(93,'Lavajato',4,4,4,4,'\0');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `visao_clientes`
--

DROP TABLE IF EXISTS `visao_clientes`;
/*!50001 DROP VIEW IF EXISTS `visao_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `visao_clientes` (
  `Codcli` tinyint NOT NULL,
  `Nome` tinyint NOT NULL,
  `Contato` tinyint NOT NULL,
  `DataEntrega` tinyint NOT NULL,
  `Frete` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `pormes`
--

/*!50001 DROP TABLE IF EXISTS `pormes`*/;
/*!50001 DROP VIEW IF EXISTS `pormes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pormes` AS select `pedidos`.`DataPed` AS `dataped`,month(`pedidos`.`DataPed`) AS `Mes`,case month(`pedidos`.`DataPed`) when 1 then 'janeiro' when 2 then 'fevereiro' when 3 then 'mar?o' when 4 then 'abril' when 5 then 'maio' when 6 then 'junho' when 7 then 'julho' when 8 then 'agosto' when 9 then 'setembro' when 10 then 'outubro' when 11 then 'novembro' when 12 then 'dezembro' end AS `NomeMes` from `pedidos` order by month(`pedidos`.`DataPed`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produto_categoria`
--

/*!50001 DROP TABLE IF EXISTS `produto_categoria`*/;
/*!50001 DROP VIEW IF EXISTS `produto_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produto_categoria` AS select `produtos`.`Descr` AS `DescricaoProduto`,`categorias`.`Descr` AS `DescrCategoria` from (`produtos` join `categorias`) where `produtos`.`CodCategoria` = `categorias`.`CodCategoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visao_clientes`
--

/*!50001 DROP TABLE IF EXISTS `visao_clientes`*/;
/*!50001 DROP VIEW IF EXISTS `visao_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visao_clientes` AS select `clientes`.`CodCli` AS `Codcli`,`clientes`.`Nome` AS `Nome`,`clientes`.`Contato` AS `Contato`,`pedidos`.`DataEntrega` AS `DataEntrega`,`pedidos`.`Frete` AS `Frete` from (`clientes` join `pedidos`) where `clientes`.`CodCli` = `pedidos`.`CodCli` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 23:05:38
