-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: arac_satis
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `aracdegerlendirme`
--

DROP TABLE IF EXISTS `aracdegerlendirme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aracdegerlendirme` (
  `DegerlendirmeID` int(11) NOT NULL AUTO_INCREMENT,
  `AracID` int(11) DEFAULT NULL,
  `DegerlendirmeTarihi` date DEFAULT NULL,
  `Durum` text DEFAULT NULL,
  `Puan` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DegerlendirmeID`),
  KEY `AracID` (`AracID`),
  CONSTRAINT `aracdegerlendirme_ibfk_1` FOREIGN KEY (`AracID`) REFERENCES `araclar` (`AracID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aracdegerlendirme`
--

LOCK TABLES `aracdegerlendirme` WRITE;
/*!40000 ALTER TABLE `aracdegerlendirme` DISABLE KEYS */;
INSERT INTO `aracdegerlendirme` VALUES (1,1,'2024-01-01','Mükemmel durumda',5),(2,2,'2024-01-02','İyi durumda',4),(3,3,'2024-01-03','Orta durumda',3),(4,4,'2024-01-04','Bakım gerekli',2),(5,5,'2024-01-05','Hafif hasarlı',3),(6,6,'2024-01-06','Temiz ve bakımlı',4),(7,7,'2024-01-07','Sorunsuz',5),(8,8,'2024-01-08','Yeni gibi',5),(9,9,'2024-01-09','Küçük çizikler var',3),(10,10,'2024-01-10','Çok iyi durumda',4);
/*!40000 ALTER TABLE `aracdegerlendirme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `araclar`
--

DROP TABLE IF EXISTS `araclar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `araclar` (
  `AracID` int(11) NOT NULL AUTO_INCREMENT,
  `MarkaID` int(11) DEFAULT NULL,
  `ModelID` int(11) DEFAULT NULL,
  `Yil` int(11) DEFAULT NULL,
  `YakitTipi` varchar(20) DEFAULT NULL,
  `Sanziman` varchar(20) DEFAULT NULL,
  `Fiyat` decimal(15,2) DEFAULT NULL,
  `Kilometre` int(11) DEFAULT NULL,
  PRIMARY KEY (`AracID`),
  KEY `MarkaID` (`MarkaID`),
  KEY `ModelID` (`ModelID`),
  CONSTRAINT `araclar_ibfk_1` FOREIGN KEY (`MarkaID`) REFERENCES `markalar` (`MarkaID`),
  CONSTRAINT `araclar_ibfk_2` FOREIGN KEY (`ModelID`) REFERENCES `modeller` (`ModelID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `araclar`
--

LOCK TABLES `araclar` WRITE;
/*!40000 ALTER TABLE `araclar` DISABLE KEYS */;
INSERT INTO `araclar` VALUES (1,1,1,2020,'Benzin','Otomatik',300000.00,5000),(2,1,2,2019,'Dizel','Manuel',400000.00,20000),(3,2,3,2018,'Benzin','Otomatik',250000.00,15000),(4,2,4,2017,'Dizel','Manuel',200000.00,30000),(5,3,5,2021,'Benzin','Otomatik',450000.00,7000),(6,3,6,2019,'Dizel','Manuel',500000.00,25000),(7,4,7,2022,'Benzin','Otomatik',550000.00,3000),(8,4,8,2020,'Hybrid','Otomatik',600000.00,10000),(9,5,9,2019,'Dizel','Manuel',270000.00,22000),(10,5,10,2021,'Benzin','Otomatik',400000.00,8000);
/*!40000 ALTER TABLE `araclar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aracozellikleri`
--

DROP TABLE IF EXISTS `aracozellikleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aracozellikleri` (
  `OzellikID` int(11) NOT NULL AUTO_INCREMENT,
  `OzellikAdi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OzellikID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aracozellikleri`
--

LOCK TABLES `aracozellikleri` WRITE;
/*!40000 ALTER TABLE `aracozellikleri` DISABLE KEYS */;
INSERT INTO `aracozellikleri` VALUES (1,'Renk'),(2,'Motor Gücü'),(3,'Yakıt Tüketimi'),(4,'Bagaj Hacmi'),(5,'Koltuk Döşemesi'),(6,'Navigasyon'),(7,'Sunroof'),(8,'Bluetooth'),(9,'Hız Sabitleyici'),(10,'Geri Görüş Kamerası'),(11,'Renk'),(12,'Motor Gücü'),(13,'Yakıt Tüketimi'),(14,'Bagaj Hacmi'),(15,'Koltuk Döşemesi'),(16,'Navigasyon'),(17,'Sunroof'),(18,'Bluetooth'),(19,'Hız Sabitleyici'),(20,'Geri Görüş Kamerası');
/*!40000 ALTER TABLE `aracozellikleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aracturleri`
--

DROP TABLE IF EXISTS `aracturleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aracturleri` (
  `TurID` int(11) NOT NULL AUTO_INCREMENT,
  `TurAdi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TurID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aracturleri`
--

LOCK TABLES `aracturleri` WRITE;
/*!40000 ALTER TABLE `aracturleri` DISABLE KEYS */;
INSERT INTO `aracturleri` VALUES (1,'Sedan'),(2,'SUV'),(3,'Hatchback'),(4,'Pickup'),(5,'Minivan'),(6,'Cabriolet'),(7,'Coupe'),(8,'Station Wagon'),(9,'Hybrid'),(10,'Electric');
/*!40000 ALTER TABLE `aracturleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kampanyalar`
--

DROP TABLE IF EXISTS `kampanyalar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kampanyalar` (
  `KampanyaID` int(11) NOT NULL AUTO_INCREMENT,
  `KampanyaAdi` varchar(100) DEFAULT NULL,
  `BaslangicTarihi` date DEFAULT NULL,
  `BitisTarihi` date DEFAULT NULL,
  `IndirimOrani` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`KampanyaID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kampanyalar`
--

LOCK TABLES `kampanyalar` WRITE;
/*!40000 ALTER TABLE `kampanyalar` DISABLE KEYS */;
INSERT INTO `kampanyalar` VALUES (1,'Yılbaşı Kampanyası','2024-01-01','2024-01-10',10.00),(2,'Sevgililer Günü Özel','2024-02-10','2024-02-15',15.00),(3,'Bahar İndirimi','2024-03-20','2024-03-31',20.00),(4,'23 Nisan Çocuk Bayramı','2024-04-20','2024-04-23',12.50),(5,'Yaz Fırsatları','2024-06-01','2024-06-30',25.00),(6,'Kurban Bayramı Kampanyası','2024-07-15','2024-07-25',18.00),(7,'Okula Dönüş İndirimi','2024-09-01','2024-09-15',10.00),(8,'29 Ekim Cumhuriyet Bayramı','2024-10-20','2024-10-29',22.00),(9,'Kara Cuma İndirimi','2024-11-20','2024-11-30',30.00),(10,'Yıl Sonu Fırsatları','2024-12-20','2024-12-31',28.00);
/*!40000 ALTER TABLE `kampanyalar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markalar`
--

DROP TABLE IF EXISTS `markalar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markalar` (
  `MarkaID` int(11) NOT NULL AUTO_INCREMENT,
  `MarkaAdi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MarkaID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markalar`
--

LOCK TABLES `markalar` WRITE;
/*!40000 ALTER TABLE `markalar` DISABLE KEYS */;
INSERT INTO `markalar` VALUES (1,'Toyota'),(2,'Volkswagen'),(3,'BMW'),(4,'Mercedes'),(5,'Ford'),(6,'Renault'),(7,'Audi'),(8,'Hyundai'),(9,'Peugeot'),(10,'Fiat');
/*!40000 ALTER TABLE `markalar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeller`
--

DROP TABLE IF EXISTS `modeller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modeller` (
  `ModelID` int(11) NOT NULL AUTO_INCREMENT,
  `MarkaID` int(11) DEFAULT NULL,
  `ModelAdi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ModelID`),
  KEY `MarkaID` (`MarkaID`),
  CONSTRAINT `modeller_ibfk_1` FOREIGN KEY (`MarkaID`) REFERENCES `markalar` (`MarkaID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeller`
--

LOCK TABLES `modeller` WRITE;
/*!40000 ALTER TABLE `modeller` DISABLE KEYS */;
INSERT INTO `modeller` VALUES (1,1,'Corolla'),(2,1,'Camry'),(3,2,'Golf'),(4,2,'Passat'),(5,3,'320i'),(6,3,'X5'),(7,4,'C-Class'),(8,4,'GLA'),(9,5,'Focus'),(10,5,'Mustang');
/*!40000 ALTER TABLE `modeller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musterigeribildirimleri`
--

DROP TABLE IF EXISTS `musterigeribildirimleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musterigeribildirimleri` (
  `GeriBildirimID` int(11) NOT NULL AUTO_INCREMENT,
  `MusteriID` int(11) DEFAULT NULL,
  `Tarih` date DEFAULT NULL,
  `Yorum` text DEFAULT NULL,
  `Puan` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`GeriBildirimID`),
  KEY `MusteriID` (`MusteriID`),
  CONSTRAINT `musterigeribildirimleri_ibfk_1` FOREIGN KEY (`MusteriID`) REFERENCES `musteriler` (`MusteriID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musterigeribildirimleri`
--

LOCK TABLES `musterigeribildirimleri` WRITE;
/*!40000 ALTER TABLE `musterigeribildirimleri` DISABLE KEYS */;
INSERT INTO `musterigeribildirimleri` VALUES (1,1,'2024-03-01','Hizmet çok iyiydi, memnun kaldım.',5),(2,2,'2024-03-02','Araç temiz ve sorunsuzdu.',4),(3,3,'2024-03-03','Küçük sorunlar vardı ama çözüm sağlandı.',3),(4,4,'2024-03-04','Satış süreci oldukça hızlıydı.',5),(5,5,'2024-03-05','Servis hizmetinden memnun kalmadım.',2),(6,6,'2024-03-06','Herkese tavsiye ederim.',5),(7,7,'2024-03-07','Araç beklediğimden daha iyiydi.',4),(8,8,'2024-03-08','İlgili personel, teşekkürler.',5),(9,9,'2024-03-09','Ufak bir iletişim problemi yaşadım.',3),(10,10,'2024-03-10','Hizmetten çok memnun kaldım.',5),(11,1,'2024-03-01','Hizmet çok iyiydi, memnun kaldım.',5),(12,2,'2024-03-02','Araç temiz ve sorunsuzdu.',4),(13,3,'2024-03-03','Küçük sorunlar vardı ama çözüm sağlandı.',3),(14,4,'2024-03-04','Satış süreci oldukça hızlıydı.',5),(15,5,'2024-03-05','Servis hizmetinden memnun kalmadım.',2),(16,6,'2024-03-06','Herkese tavsiye ederim.',5),(17,7,'2024-03-07','Araç beklediğimden daha iyiydi.',4),(18,8,'2024-03-08','İlgili personel, teşekkürler.',5),(19,9,'2024-03-09','Ufak bir iletişim problemi yaşadım.',3),(20,10,'2024-03-10','Hizmetten çok memnun kaldım.',5);
/*!40000 ALTER TABLE `musterigeribildirimleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musteriler`
--

DROP TABLE IF EXISTS `musteriler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musteriler` (
  `MusteriID` int(11) NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `Telefon` varchar(15) DEFAULT NULL,
  `Eposta` varchar(100) DEFAULT NULL,
  `Adres` text DEFAULT NULL,
  PRIMARY KEY (`MusteriID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musteriler`
--

LOCK TABLES `musteriler` WRITE;
/*!40000 ALTER TABLE `musteriler` DISABLE KEYS */;
INSERT INTO `musteriler` VALUES (1,'Ali','Yılmaz','05551112233','ali.yilmaz@gmail.com','Ankara'),(2,'Ayşe','Kara','05552223344','ayse.kara@yahoo.com','İstanbul'),(3,'Mehmet','Demir','05553334455','mehmet.demir@outlook.com','İzmir'),(4,'Fatma','Çelik','05554445566','fatma.celik@gmail.com','Bursa'),(5,'Ahmet','Şahin','05555556677','ahmet.sahin@hotmail.com','Antalya'),(6,'Elif','Koç','05556667788','elif.koc@gmail.com','Adana'),(7,'Hüseyin','Güneş','05557778899','huseyin.gunes@outlook.com','Trabzon'),(8,'Zeynep','Yıldız','05558889900','zeynep.yildiz@yahoo.com','Diyarbakır'),(9,'Burak','Çetin','05559990011','burak.cetin@gmail.com','Samsun'),(10,'Büşra','Öztürk','05560001122','busra.ozturk@hotmail.com','Konya');
/*!40000 ALTER TABLE `musteriler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odemedetaylari`
--

DROP TABLE IF EXISTS `odemedetaylari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odemedetaylari` (
  `OdemeID` int(11) NOT NULL AUTO_INCREMENT,
  `SatisID` int(11) DEFAULT NULL,
  `OdemeTipi` varchar(50) DEFAULT NULL,
  `OdemeTarihi` date DEFAULT NULL,
  `Tutar` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`OdemeID`),
  KEY `SatisID` (`SatisID`),
  CONSTRAINT `odemedetaylari_ibfk_1` FOREIGN KEY (`SatisID`) REFERENCES `satislar` (`SatisID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odemedetaylari`
--

LOCK TABLES `odemedetaylari` WRITE;
/*!40000 ALTER TABLE `odemedetaylari` DISABLE KEYS */;
INSERT INTO `odemedetaylari` VALUES (1,1,'Nakit','2024-01-01',295000.00),(2,2,'Kredi Kartı','2024-01-02',390000.00),(3,3,'Banka Havalesi','2024-01-03',245000.00),(4,4,'Nakit','2024-01-04',195000.00),(5,5,'Kredi Kartı','2024-01-05',440000.00),(6,6,'Banka Havalesi','2024-01-06',490000.00),(7,7,'Nakit','2024-01-07',540000.00),(8,8,'Kredi Kartı','2024-01-08',590000.00),(9,9,'Banka Havalesi','2024-01-09',260000.00),(10,10,'Nakit','2024-01-10',390000.00);
/*!40000 ALTER TABLE `odemedetaylari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personel`
--

DROP TABLE IF EXISTS `personel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personel` (
  `PersonelID` int(11) NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `Gorev` varchar(50) DEFAULT NULL,
  `Telefon` varchar(15) DEFAULT NULL,
  `Eposta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PersonelID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Ahmet','Yılmaz','Satış Danışmanı','05551112222','ahmet.yilmaz@firma.com'),(2,'Mehmet','Kara','Servis Teknisyeni','05552223333','mehmet.kara@firma.com'),(3,'Ali','Demir','Muhasebe Uzmanı','05553334444','ali.demir@firma.com'),(4,'Ayşe','Çelik','Servis Danışmanı','05554445555','ayse.celik@firma.com'),(5,'Fatma','Şahin','Satış Danışmanı','05555556666','fatma.sahin@firma.com'),(6,'Hüseyin','Koç','Pazarlama Uzmanı','05556667777','huseyin.koc@firma.com'),(7,'Zeynep','Güneş','Stok Yönetimi','05557778888','zeynep.gunes@firma.com'),(8,'Burak','Yıldız','Sigorta Uzmanı','05558889999','burak.yildiz@firma.com'),(9,'Elif','Öztürk','Kampanya Yöneticisi','05559990000','elif.ozturk@firma.com'),(10,'Büşra','Çetin','Satış Danışmanı','05560001111','busra.cetin@firma.com');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personelsatisperformansi`
--

DROP TABLE IF EXISTS `personelsatisperformansi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personelsatisperformansi` (
  `PerformansID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonelID` int(11) DEFAULT NULL,
  `SatisAdedi` int(11) DEFAULT NULL,
  `ToplamCiro` decimal(15,2) DEFAULT NULL,
  `Donem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PerformansID`),
  KEY `PersonelID` (`PersonelID`),
  CONSTRAINT `personelsatisperformansi_ibfk_1` FOREIGN KEY (`PersonelID`) REFERENCES `personel` (`PersonelID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personelsatisperformansi`
--

LOCK TABLES `personelsatisperformansi` WRITE;
/*!40000 ALTER TABLE `personelsatisperformansi` DISABLE KEYS */;
INSERT INTO `personelsatisperformansi` VALUES (1,1,10,3000000.00,'2024 Q1'),(2,2,5,1500000.00,'2024 Q1'),(3,3,7,2100000.00,'2024 Q1'),(4,4,8,2400000.00,'2024 Q1'),(5,5,6,1800000.00,'2024 Q1'),(6,6,9,2700000.00,'2024 Q1'),(7,7,4,1200000.00,'2024 Q1'),(8,8,3,900000.00,'2024 Q1'),(9,9,2,600000.00,'2024 Q1'),(10,10,5,1500000.00,'2024 Q1');
/*!40000 ALTER TABLE `personelsatisperformansi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satislar`
--

DROP TABLE IF EXISTS `satislar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satislar` (
  `SatisID` int(11) NOT NULL AUTO_INCREMENT,
  `AracID` int(11) DEFAULT NULL,
  `MusteriID` int(11) DEFAULT NULL,
  `SatisTarihi` date DEFAULT NULL,
  `SatisFiyati` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`SatisID`),
  KEY `AracID` (`AracID`),
  KEY `MusteriID` (`MusteriID`),
  CONSTRAINT `satislar_ibfk_1` FOREIGN KEY (`AracID`) REFERENCES `araclar` (`AracID`),
  CONSTRAINT `satislar_ibfk_2` FOREIGN KEY (`MusteriID`) REFERENCES `musteriler` (`MusteriID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satislar`
--

LOCK TABLES `satislar` WRITE;
/*!40000 ALTER TABLE `satislar` DISABLE KEYS */;
INSERT INTO `satislar` VALUES (1,1,1,'2024-01-01',295000.00),(2,2,2,'2024-01-02',390000.00),(3,3,3,'2024-01-03',245000.00),(4,4,4,'2024-01-04',195000.00),(5,5,5,'2024-01-05',440000.00),(6,6,6,'2024-01-06',490000.00),(7,7,7,'2024-01-07',540000.00),(8,8,8,'2024-01-08',590000.00),(9,9,9,'2024-01-09',260000.00),(10,10,10,'2024-01-10',390000.00);
/*!40000 ALTER TABLE `satislar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servisgecmisi`
--

DROP TABLE IF EXISTS `servisgecmisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servisgecmisi` (
  `ServisID` int(11) NOT NULL AUTO_INCREMENT,
  `AracID` int(11) DEFAULT NULL,
  `ServisTarihi` date DEFAULT NULL,
  `YapilanIslem` text DEFAULT NULL,
  `Ucret` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ServisID`),
  KEY `AracID` (`AracID`),
  CONSTRAINT `servisgecmisi_ibfk_1` FOREIGN KEY (`AracID`) REFERENCES `araclar` (`AracID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servisgecmisi`
--

LOCK TABLES `servisgecmisi` WRITE;
/*!40000 ALTER TABLE `servisgecmisi` DISABLE KEYS */;
INSERT INTO `servisgecmisi` VALUES (1,1,'2024-02-01','Yağ değişimi',500.00),(2,2,'2024-02-05','Fren balatası değişimi',1200.00),(3,3,'2024-02-10','Lastik değişimi',2000.00),(4,4,'2024-02-15','Motor bakımı',4500.00),(5,5,'2024-02-20','Periyodik bakım',1500.00),(6,6,'2024-02-25','Hava filtresi değişimi',300.00),(7,7,'2024-03-01','Cam suyu doldurma',50.00),(8,8,'2024-03-05','Far ayarı',200.00),(9,9,'2024-03-10','Rot balans',800.00),(10,10,'2024-03-15','Klima bakımı',1000.00);
/*!40000 ALTER TABLE `servisgecmisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servistipleri`
--

DROP TABLE IF EXISTS `servistipleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servistipleri` (
  `ServisTipiID` int(11) NOT NULL AUTO_INCREMENT,
  `ServisAdi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ServisTipiID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servistipleri`
--

LOCK TABLES `servistipleri` WRITE;
/*!40000 ALTER TABLE `servistipleri` DISABLE KEYS */;
INSERT INTO `servistipleri` VALUES (1,'Yağ Değişimi'),(2,'Fren Bakımı'),(3,'Lastik Değişimi'),(4,'Motor Bakımı'),(5,'Periyodik Bakım'),(6,'Rot Balans'),(7,'Far Ayarı'),(8,'Klima Bakımı'),(9,'Cam Temizliği'),(10,'Elektrik Sistemi Kontrolü');
/*!40000 ALTER TABLE `servistipleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sigortabilgileri`
--

DROP TABLE IF EXISTS `sigortabilgileri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sigortabilgileri` (
  `SigortaID` int(11) NOT NULL AUTO_INCREMENT,
  `AracID` int(11) DEFAULT NULL,
  `SigortaTipi` varchar(50) DEFAULT NULL,
  `BaslangicTarihi` date DEFAULT NULL,
  `BitisTarihi` date DEFAULT NULL,
  `SigortaSirketi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SigortaID`),
  KEY `AracID` (`AracID`),
  CONSTRAINT `sigortabilgileri_ibfk_1` FOREIGN KEY (`AracID`) REFERENCES `araclar` (`AracID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sigortabilgileri`
--

LOCK TABLES `sigortabilgileri` WRITE;
/*!40000 ALTER TABLE `sigortabilgileri` DISABLE KEYS */;
INSERT INTO `sigortabilgileri` VALUES (1,1,'Kasko','2024-01-01','2025-01-01','Allianz'),(2,2,'Zorunlu Trafik Sigortası','2024-02-01','2025-02-01','AXA'),(3,3,'Kasko','2024-03-01','2025-03-01','Sompo'),(4,4,'Zorunlu Trafik Sigortası','2024-04-01','2025-04-01','Mapfre'),(5,5,'Kasko','2024-05-01','2025-05-01','Anadolu Sigorta'),(6,6,'Zorunlu Trafik Sigortası','2024-06-01','2025-06-01','Groupama'),(7,7,'Kasko','2024-07-01','2025-07-01','Allianz'),(8,8,'Zorunlu Trafik Sigortası','2024-08-01','2025-08-01','AXA'),(9,9,'Kasko','2024-09-01','2025-09-01','Sompo'),(10,10,'Zorunlu Trafik Sigortası','2024-10-01','2025-10-01','Mapfre'),(11,1,'Kasko','2024-01-01','2025-01-01','Allianz'),(12,2,'Zorunlu Trafik Sigortası','2024-02-01','2025-02-01','AXA'),(13,3,'Kasko','2024-03-01','2025-03-01','Sompo'),(14,4,'Zorunlu Trafik Sigortası','2024-04-01','2025-04-01','Mapfre'),(15,5,'Kasko','2024-05-01','2025-05-01','Anadolu Sigorta'),(16,6,'Zorunlu Trafik Sigortası','2024-06-01','2025-06-01','Groupama'),(17,7,'Kasko','2024-07-01','2025-07-01','Allianz'),(18,8,'Zorunlu Trafik Sigortası','2024-08-01','2025-08-01','AXA'),(19,9,'Kasko','2024-09-01','2025-09-01','Sompo'),(20,10,'Zorunlu Trafik Sigortası','2024-10-01','2025-10-01','Mapfre');
/*!40000 ALTER TABLE `sigortabilgileri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok`
--

DROP TABLE IF EXISTS `stok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stok` (
  `StokID` int(11) NOT NULL AUTO_INCREMENT,
  `SubeID` int(11) DEFAULT NULL,
  `AracID` int(11) DEFAULT NULL,
  `StokAdedi` int(11) DEFAULT NULL,
  PRIMARY KEY (`StokID`),
  KEY `SubeID` (`SubeID`),
  KEY `AracID` (`AracID`),
  CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`SubeID`) REFERENCES `subeler` (`SubeID`),
  CONSTRAINT `stok_ibfk_2` FOREIGN KEY (`AracID`) REFERENCES `araclar` (`AracID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok`
--

LOCK TABLES `stok` WRITE;
/*!40000 ALTER TABLE `stok` DISABLE KEYS */;
INSERT INTO `stok` VALUES (1,1,1,10),(2,1,2,8),(3,2,3,5),(4,2,4,12),(5,3,5,7),(6,3,6,3),(7,4,7,6),(8,4,8,9),(9,5,9,11),(10,5,10,4);
/*!40000 ALTER TABLE `stok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subeler`
--

DROP TABLE IF EXISTS `subeler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subeler` (
  `SubeID` int(11) NOT NULL AUTO_INCREMENT,
  `SubeAdi` varchar(100) DEFAULT NULL,
  `SubeAdresi` text DEFAULT NULL,
  PRIMARY KEY (`SubeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subeler`
--

LOCK TABLES `subeler` WRITE;
/*!40000 ALTER TABLE `subeler` DISABLE KEYS */;
INSERT INTO `subeler` VALUES (1,'Merkez Şube','Ankara'),(2,'İstanbul Avrupa Şube','İstanbul'),(3,'İstanbul Anadolu Şube','İstanbul'),(4,'İzmir Şube','İzmir'),(5,'Bursa Şube','Bursa'),(6,'Antalya Şube','Antalya'),(7,'Adana Şube','Adana'),(8,'Trabzon Şube','Trabzon'),(9,'Samsun Şube','Samsun'),(10,'Konya Şube','Konya');
/*!40000 ALTER TABLE `subeler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 11:45:41
