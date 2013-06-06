-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cracha
--

CREATE DATABASE IF NOT EXISTS cracha;
USE cracha;

--
-- Definition of table `cracha`.`coordenacao`
--

DROP TABLE IF EXISTS `cracha`.`coordenacao`;
CREATE TABLE  `cracha`.`coordenacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evento` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cracha` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_coordenacao_evento1_idx` (`evento`),
  CONSTRAINT `fk_coordenacao_evento1` FOREIGN KEY (`evento`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cracha`.`coordenacao`
--

/*!40000 ALTER TABLE `coordenacao` DISABLE KEYS */;
LOCK TABLES `coordenacao` WRITE;
INSERT INTO `cracha`.`coordenacao` VALUES  (1,1,'Ádanna Andrade','Ádanna Andrade','1','adanna.andrade@ufra.edu.br','Comitê Técnico Científico'),
 (2,1,'Adriana Neves','Adriana Neves','1','adriana.neves@ufra.edu.br','Comissão de Secretaria'),
 (3,1,'Anna Carolina','Anna Carolina','1','anna.carolina@ufra.edu.br','Comissão de Secretaria');
UNLOCK TABLES;
/*!40000 ALTER TABLE `coordenacao` ENABLE KEYS */;


--
-- Definition of table `cracha`.`curso`
--

DROP TABLE IF EXISTS `cracha`.`curso`;
CREATE TABLE  `cracha`.`curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evento` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `palestrante` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `carga_horaria` varchar(15) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `horario` varchar(25) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`id`),
  KEY `fk_curso_evento1_idx` (`evento`),
  KEY `fk_programacao_palestrante1_idx` (`palestrante`),
  CONSTRAINT `fk_curso_evento1` FOREIGN KEY (`evento`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_programacao_palestrante1` FOREIGN KEY (`palestrante`) REFERENCES `palestrante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cracha`.`curso`
--

/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
LOCK TABLES `curso` WRITE;
INSERT INTO `cracha`.`curso` VALUES  (1,1,'Adubos e Adubação de Culturas Agrícolas e Florestais','Adubos e Adubação',1,NULL,NULL,NULL,NULL,NULL),
 (2,1,'Cultivo Orgânico de Hortaliças','Cultivo Orgânico de Hortaliças',1,NULL,NULL,NULL,NULL,NULL),
 (3,1,'Agricultura de Baixo Carbono - Programa ABC','Agricultura de Baixo Carbono',1,NULL,NULL,NULL,NULL,NULL),
 (4,1,'Ferramentas para o Planejamento do Manejo Florestal','Planejamento do Manejo Florestal',1,NULL,NULL,NULL,NULL,NULL),
 (5,1,'Desenho e Projeto Auxiliado por Computador - AutoCAD','AutoCAD ',1,NULL,NULL,NULL,NULL,NULL),
 (6,1,'Fruticultura Regional','Fruticultura Regional',1,NULL,NULL,NULL,NULL,NULL),
 (7,1,'Manejo Ecológico de Pragas ','Manejo Ecológico de Pragas ',1,NULL,NULL,NULL,NULL,NULL),
 (8,1,'Mecanização Agrícola ','Mecanização Agrícola ',1,NULL,NULL,NULL,NULL,NULL),
 (9,1,'Microbiologia, Ferramenta Fundamental às Ciências Agrárias e Ambientais','Microbiologia',1,NULL,NULL,NULL,NULL,NULL),
 (10,1,'Produção de Grãos no Estado do Pará: Princípios Básicos voltados para o Agronegócio de Milho e Soja','Práticas para Produção de Grãos',1,NULL,NULL,NULL,NULL,NULL),
 (11,1,'Tecnologia de Sementes ','Tecnologia de Sementes ',1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `cracha`.`curso` VALUES  (12,1,'Energias Renováveis - Perspectivas e Aplicações no Brasil e na Amazônia ','Energias Renováveis',1,NULL,NULL,NULL,NULL,NULL),
 (13,1,'Larvicultura de Peixes Tropicais ','Larvicultura de Peixes Tropicais ',1,NULL,NULL,NULL,NULL,NULL),
 (14,1,'Perícia Ambiental ','Perícia Ambiental ',1,NULL,NULL,NULL,NULL,NULL),
 (15,1,'Produção de Pirarucu ','Produção de Pirarucu ',1,NULL,NULL,NULL,NULL,NULL),
 (16,1,'Inseminação Artificial em Bovinos e Bubalinos  - Com prática','Inseminação Artificial  - Com prática',1,NULL,NULL,NULL,NULL,NULL),
 (17,1,'Inseminação Artificial em Bovinos e Bubalinos  - Sem prática','Inseminação Artificial  - Sem prática',1,NULL,NULL,NULL,NULL,NULL),
 (18,1,'Animais Silvestres: Biologia, Manejo e Semiologia','Animais Silvestres',1,NULL,NULL,NULL,NULL,NULL),
 (19,1,'Produção de Ração e Nutrição Animal ','Produção de Ração e Nutrição Animal ',1,NULL,NULL,NULL,NULL,NULL),
 (20,1,'Viabilidade Tecnológica de Derivados de leite de Búfala','Viabilidade Tecnológica de Derivados de Leite',1,NULL,NULL,NULL,NULL,NULL),
 (21,1,'Urgência e Emergência em Animais de Companhia  - Com prática','Urgência e Emergência  - Com prática',1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `cracha`.`curso` VALUES  (22,1,'Urgência e Emergência em Animais de Companhia  - Sem prática','Urgência e Emergência  - Sem prática',1,NULL,NULL,NULL,NULL,NULL),
 (23,1,'Algoritmos e Programação de Computadores com a linguagem JAVA ','Algoritmos e Programação com a Linguagem JAVA ',1,NULL,NULL,NULL,NULL,NULL),
 (24,1,'EIA/RIMA ','EIA/RIMA ',1,NULL,NULL,NULL,NULL,NULL),
 (25,1,'Elaboração e Análise de Projetos Florestais','Elaboração de Projetos Florestais ',1,NULL,NULL,NULL,NULL,NULL),
 (26,1,'Sistemas Agroflorestais ','Sistemas Agroflorestais ',1,NULL,NULL,NULL,NULL,NULL),
 (27,1,'Palestras','Palestras',1,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;


--
-- Definition of table `cracha`.`evento`
--

DROP TABLE IF EXISTS `cracha`.`evento`;
CREATE TABLE  `cracha`.`evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) NOT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `local` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cracha`.`evento`
--

/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
LOCK TABLES `evento` WRITE;
INSERT INTO `cracha`.`evento` VALUES  (1,'V Encontro Amazônicos de Agrárias','V ENAAG','10 a 15 de junho de 2013','O Encontro Amazônico de Agrárias (ENAAG), foi desenvolvido por discentes com a intenção de complementar os conhecimentos adquiridos nas Instituições de Ensino Superior através de informações técnico-científicas que ultrapassem os limites das Universidades','Universidade Federal Rural da Amazônia - UFRA');
UNLOCK TABLES;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;


--
-- Definition of table `cracha`.`inscrito`
--

DROP TABLE IF EXISTS `cracha`.`inscrito`;
CREATE TABLE  `cracha`.`inscrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cracha` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `instituicao` varchar(50) DEFAULT NULL,
  `curso` int(11) NOT NULL,
  `credenciado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_inscrito_curso_idx` (`curso`),
  CONSTRAINT `fk_inscrito_curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cracha`.`inscrito`
--

/*!40000 ALTER TABLE `inscrito` DISABLE KEYS */;
LOCK TABLES `inscrito` WRITE;
INSERT INTO `cracha`.`inscrito` VALUES  (1,'ANDREICY DE MORAES PEREIRA','ANDREICY PEREIRA','80113704','andreicy_moraes@hotmail.com','',1,0),
 (2,'CARLOS HENRIQUE SARAIVA DIAS','CARLOS HENRIQUE SARAIVA DIAS','81373880','henrique_dias@outlook.com','',1,0),
 (3,'DANIEL DA SILVA TAVARES','DANIEL DA SILVA TAVARES','82827457','daniel18tp@hotmail.com','',1,0),
 (4,'DARILENE DE LIMA CONCEIÇÃO','DARILENE DE LIMA CONCEIÇÃO','81089739','darilenee@yahoo.com.br','',1,1),
 (5,'DIEGO LUIZ PUREZA BARREIROS','DIEGO LUIZ PUREZA BARREIROS','81623165','barreirosd@yahoo.com.br','',1,0),
 (6,'FLAVIA CORDEIRO LOPES CANCIO','FLAVIA CORDEIRO LOPES CANCIO','88548788','flaviaufra2010@yahoo.com','',1,0),
 (7,'HELIO JOSÉ MEDEIROS','HELIO JOSÉ MEDEIROS','92225111','joshlio@yahoo.com.br','',1,0),
 (8,'HELLEM PINHEIRO ALMEIDA','HELLEM PINHEIRO ALMEIDA','32536234','hellem.ufra@gmail.com','',1,0),
 (9,'ITALO CLAUDIO FALESI PALHA DE MORAES BITTENCOURT','ITALO BITTENCOURT','80329233','italo_falesi@hotmail.com','',1,1),
 (10,'JÉSSICA MARIA MIRANDA CABRAL','JÉSSICA MARIA MIRANDA CABRAL','82026106','jessyca.agronomia@hotmail.com','',1,0);
INSERT INTO `cracha`.`inscrito` VALUES  (11,'JOELLINGTON VINICIUS CASAIS DA SILVA','JOELLINGTON VINICIUS CASAIS DA SILVA','81017876/83182912','eng_joellingtoncasais@outlook.com','',1,0),
 (12,'JOSE RICARDO SANTOS BARBOSA','JOSE RICARDO SANTOS BARBOSA','83969404','jose.ricardoufra@yahoo.com.br','',1,0),
 (13,'JOSIANE FERREIRA CORRÊA','JOSIANE FERREIRA CORRÊA','81589086','josiane.correa22@gmail.com','',1,0),
 (14,'JULIANA SOUZA DA SILVA','JULIANA SOUZA DA SILVA','81132486','ac_ju@hotmail.com','',1,0),
 (15,'KARINA DA CONCEICÃO DOS SANTOS','KARINA DA CONCEICÃO DOS SANTOS','99030231','karinaCS2011@hotmail.com','',1,0),
 (16,'KAROLINE DOS SANTOS DA SILVA','KAROLINE DOS SANTOS DA SILVA','32789372','karolstarkey@hotmail.com','',1,0),
 (17,'LARISSA HÚRSULA NEVES','LARISSA HÚRSULA NEVES','82316153','larissahursula@hotmail.com','',1,0),
 (18,'LEIDIANE DOS SANTOS ROCHA','LEIDIANE DOS SANTOS ROCHA','96389525','leidyprist@hotmail.com','',1,0),
 (19,'LETICIA CUNHA DA HUNGRIA','LETICIA CUNHA DA HUNGRIA','32451409','leth_hungria@hotmail.com','',1,0),
 (20,'LUIZ FERNANDO FAVACHO MORAIS','LUIZ FERNANDO FAVACHO MORAIS','80872179','fernandomorais@live.com','',1,0);
INSERT INTO `cracha`.`inscrito` VALUES  (21,'MARCELA PEREIRA LOURINHO','MARCELA PEREIRA LOURINHO','80874116','marcelalourinho@hotmail.com','',1,0),
 (22,'MARLENE EVANGELISTA VIEIRA','MARLENE EVANGELISTA VIEIRA','81296323','marlenevieira_evan@hotmail.com','',1,0),
 (23,'MAYNARA SANTOS GOMES','MAYNARA SANTOS GOMES','32592474','gomesmaynara@hotmail.com','',1,0),
 (24,'MILA FAÇANHA GOMES','MILA FAÇANHA GOMES','82544698','mila_facanha@hotmail.com','',1,0),
 (25,'NATALIA BARATA COSTA','NATALIA BARATA COSTA','91700858/32268744','natalia_bcosta@hotmail.com','',1,0),
 (26,'RAIMUNDO LEONARDO LIMA DE OLIVEIRA','RAIMUNDO LEONARDO LIMA DE OLIVEIRA','83368260','raimundoleonardoufra@hotmail.com','',1,0),
 (27,'RAWSLEY FELIPE RODRIGUES BARBOSA','RAWSLEY FELIPE RODRIGUES BARBOSA','83043006','rawsley@hotmail.com','',1,0),
 (28,'RODRIGO RAFAEL DA CUNHA GUIMARÃES','RODRIGO RAFAEL DA CUNHA GUIMARÃES','','rodrigo.guimaraes.1@hotmail.com','',1,0),
 (29,'TALITA FARIAS DA SILVA','TALITA FARIAS DA SILVA','82350011','thalita.s.farias@hotmail.com','',1,0),
 (30,'WESLEY ACHILLES OLIVEIRA DE SENA','WESLEY ACHILLES OLIVEIRA DE SENA','82462419','wesleyachilles.agro@live.com','',1,0);
INSERT INTO `cracha`.`inscrito` VALUES  (31,'MARIA GEISIANE ÁVILA BEZERRA','MARIA GEISIANE ÁVILA BEZERRA','81718408','geisianeavila@hotmail.com','',1,0),
 (32,'ADRIANO ANASTÁCIO CARDOSO GOMES','ADRIANO ANASTÁCIO CARDOSO GOMES','81427872','adrianocardosogomes@hotmail.com','',2,0),
 (33,'ANDREA OLIVEIRA SILVA','ANDREA OLIVEIRA SILVA','80228733','andrea-oliveira.ufra@hotmail.com','',2,0),
 (34,'ARTHUR COELHO FERREIRA','ARTHUR COELHO FERREIRA','81237343/32695452','arthuragronomia@yahoo.com','',2,0),
 (35,'BIANCA DO CARMO SILVA','BIANCA DO CARMO SILVA','91781978','bianca-soraia@hotmail.com','',2,0),
 (36,'CAIQUE SANTIAGO SALHEB OLIVEIRA DE LIMA','CAIQUE SANTIAGO SALHEB OLIVEIRA DE LIMA','83157814','caique-santiago@hotmail.com','',2,0),
 (37,'CAMILA DUANE CORREA GAIA','CAMILA DUANE CORREA GAIA','32555100 - 80808717','camilagaia@gmail.com','',2,0),
 (38,'CARLA INGRID GONÇALVES ASSUNÇÃO','CARLA INGRID GONÇALVES ASSUNÇÃO','89124760/88577846','cingridy@hotmail.com','',2,0),
 (39,'CLENDA DE CÁSSIA PIEDADE MIRANDA','CLENDA DE CÁSSIA PIEDADE MIRANDA','91364016','clenda_manhozinha@hotmail.com','',2,0),
 (40,'DANDARA LIMA DE SOUZA','DANDARA LIMA DE SOUZA','87072173','rod_amorim@hotmail.com','',2,0);
INSERT INTO `cracha`.`inscrito` VALUES  (41,'DAYANE NASCIMENTO PENA','DAYANE NASCIMENTO PENA','32763323','daypena@hotmail.com','',2,0),
 (42,'DEIVISON RODRIGUES DA SILVA','DEIVISON RODRIGUES DA SILVA','84927258','rodriguesdeivison@ymail.com','',2,0),
 (43,'EDUARDO AUGUSTO CARLOS CONCEIÇÃO','EDUARDO AUGUSTO CARLOS CONCEIÇÃO','81865879','edduardoaugusto-2010@hotmail.com','',2,0),
 (44,'EMILENE BALGA CARRILHO','EMILENE BALGA CARRILHO','83860655','emilenebalga@gmail.com','',2,0),
 (45,'GÉLIA DINAH MONTEIRO VIANA','GÉLIA DINAH MONTEIRO VIANA','80874008','gelinha_monteiro@hotmail.com','',2,0),
 (46,'GYORGY RONALDO SAMPAIO FERREIRA','GYORGY RONALDO SAMPAIO FERREIRA','81744767','gyogyronaldo@hotmail.com','',2,0),
 (47,'HELDER EPIFANE RODRIGUES','HELDER EPIFANE RODRIGUES','83370270','helder_erodrigues@yahoo.com.br','',2,0),
 (48,'KATYANNE VIANA DA CONCEIÇÃO','KATYANNE VIANA DA CONCEIÇÃO','81430248','katyannevc@yahoo.com.br','',2,0),
 (49,'LAURA LETÍCIA FELIX DA SILVA','LAURA LETÍCIA FELIX DA SILVA','81699812','valeria-cezar@hotmail.com','',2,0),
 (50,'LILIAN CONCEIÇÃO TAVARES','LILIAN CONCEIÇÃO TAVARES','81053581','lilianc.tavares@hotmail.com','',2,0);
INSERT INTO `cracha`.`inscrito` VALUES  (51,'LORENA DE LIMA MONTEIRO','LORENA DE LIMA MONTEIRO','84524918','lorena.lima77@gmail.com','',2,0),
 (52,'LORENA OLIVEIRA CORREA','LORENA OLIVEIRA CORREA','81169877','locorrea@live.com','',2,0),
 (53,'LUAN FELIPE FEITOSA DA SILVA','LUAN FELIPE FEITOSA DA SILVA','82442744','luan-feitosa@hotmail.com','',2,0),
 (54,'LUANNA DE MARIA SILVA LIMA','LUANNA DE MARIA SILVA LIMA','32769367','luanna0805@hotmail.com','',2,0),
 (55,'LUDMILA ERMITA CRUZ','LUDMILA ERMITA CRUZ','81150438','ludmilaermicruz@hotmail.com','',2,0),
 (56,'MARCELE DE CÁSSIA HENRIQUES DOS SANTOS MORAES','MARCELE DE CÁSSIA HENRIQUES DOS SANTOS MORAES','81937913','marcele-moraes@hotmail.com','',2,0),
 (57,'PATRICIA DO SOCORRO CRUZ DA SILVA','PATRICIA DO SOCORRO CRUZ DA SILVA','96248381','paty-silva93@hotmail.com','',2,0),
 (58,'QUESIA SÃ PAVÃO','QUESIA SÃ PAVÃO','82943111','quesia_sapavao@ymail.com','',2,0),
 (59,'RAFAEL COSTA PAIVÁ','RAFAEL COSTA PAIVÁ','81080047','rafaelcp001@yahoo.com.br','',2,0),
 (60,'ROBERTO RIVELINO DO NASCIMENTO BARBOSA','ROBERTO RIVELINO DO NASCIMENTO BARBOSA','82293345','robertoufra28@yahoo.com.br','',2,0);
INSERT INTO `cracha`.`inscrito` VALUES  (61,'RODOLFO AFONSO DE LIMA E SILVA','RODOLFO AFONSO DE LIMA E SILVA','83536564','rodolfolima_7@hotmail.com','',2,0),
 (62,'SANDRO ROGÉRIO ALMEIDA CASANOVA','SANDRO ROGÉRIO ALMEIDA CASANOVA','83373593','rogerio.casanova89@yahoo.com.br','',2,0),
 (63,'THAYANE FERREIRA MIRANDA','THAYANE FERREIRA MIRANDA','99025570','tferreiramiranda@yahoo.com','',2,0),
 (64,'ADRIANO DOS SANTOS MOURA','ADRIANO DOS SANTOS MOURA','81966344','adrianomoura22@gmail.com','',3,0),
 (65,'ALLANA LAIS ALVES LIMA ','ALLANA LAIS ALVES LIMA ','83176944','allana.lima1@hotmail.com','',3,0),
 (66,'ANA CAROLINA RIPARDO AZEVEDO','ANA CAROLINA RIPARDO AZEVEDO','82355163','carolinaripardo@live.com','',3,0),
 (67,'ANA RENATA ABREU DE MORAES','ANA RENATA ABREU DE MORAES','81695770','anarenata1984@hotmail.com','',3,0),
 (68,'BEATRIZ CHAVES DA SILVA','BEATRIZ CHAVES DA SILVA','83687336','biachaves@hotmail.com','',3,0),
 (69,'BIANCA CATERINE PIEDADE PINHO','BIANCA CATERINE PIEDADE PINHO','81205951','bia.catherine@hotmail.com','',3,0),
 (70,'BRENDA DO SOCORRO PANTOJA DA CONCEIÇÃO','BRENDA DO SOCORRO PANTOJA DA CONCEIÇÃO','82640419','brenda.spc@hotmail.com','',3,0);
INSERT INTO `cracha`.`inscrito` VALUES  (71,'CAROLINE GOMES DE AVIZ','CAROLINE GOMES DE AVIZ','82722225','carolzinha_smg@yahoo.com','',3,0),
 (72,'CLAUDIA MAIA DE ANDRADE','CLAUDIA MAIA DE ANDRADE','83193661','edu_morais@hotmail.com','',3,0),
 (73,'DANIELLE SEABRA BRITO','DANIELLE SEABRA BRITO','33477926','dsbrito07@gmail.com','',3,0),
 (74,'DIANA DIAS DA LUZ','DIANA DIAS DA LUZ','81167434','dianadias16@yahoo.com.br','',3,0),
 (75,'EDSON JOSÉ NEVES CEREJA JUNIOR','EDSON JOSÉ NEVES CEREJA JUNIOR','82313020','eds.neves@hotmail.com','',3,0),
 (76,'EDUARDO MAIA DE SOUSA','EDUARDO MAIA DE SOUSA','83080683','edu_maias@hotmail.com','',3,0),
 (77,'ELIZANIRIA SOUZA ROZA','ELIZANIRIA SOUZA ROZA','81171368','eliza_roza@hotmail.com','',3,0),
 (78,'EVALDO LEITE LIMA JÚNIOR','EVALDO LEITE LIMA JÚNIOR','82857446','junior_limab09@hotmail.com','',3,0),
 (79,'FABIANO DE ALMEIDA COELHO','FABIANO DE ALMEIDA COELHO','83365062','fabianomusic2010@hotmail.com','',3,0),
 (80,'GENILSE CORREA DE SOUSA','GENILSE CORREA DE SOUSA','81272098','souzagenilse@yahoo.com.br','',3,0),
 (81,'IVANA DA CONCEIÇÃO DA SILVA MAUÉS','IVANA DA CONCEIÇÃO DA SILVA MAUÉS','80610747','ivanamaues@hotmail.com','',3,0);
INSERT INTO `cracha`.`inscrito` VALUES  (82,'JHONATA DO NASCIMENTO VICENZOTT','JHONATA DO NASCIMENTO VICENZOTT','81798401','jhonata7984@hotmail.com','',3,0),
 (83,'JULIANE MAIRA SOUZA DA SILVA','JULIANE MAIRA SOUZA DA SILVA','99841228','julianemaira@hotmail.com','',3,0),
 (84,'KAROLLYNE RENATA SOUZA SILVA','KAROLLYNE RENATA SOUZA SILVA','82309515','karollyne-silva@hotmail.com','',3,0),
 (85,'LUCAS DE ASSIS BARBOSA AMARAL','LUCAS DE ASSIS BARBOSA AMARAL','80955014','lucas_assis19@hotmail.com','',3,0),
 (86,'MARCILENE MACHADO DOS SANTOS','MARCILENE MACHADO DOS SANTOS','88441964','marcilene.m.sarah@gmai.com','',3,0),
 (87,'MILENA PANTOJA DE MORAES','MILENA PANTOJA DE MORAES','81016135','milenapantoja.m@gmail.com','',3,0),
 (88,'MYLLA CHRISTIE DE FARIAS','MYLLA CHRISTIE DE FARIAS','88396123','mylla_658@hotmail.com','',3,0),
 (89,'PATRICK CASTELLO SOUSA SALGADO','PATRICK CASTELLO SOUSA SALGADO','81318186','patrickcastelo@rockilmail.com','',3,0),
 (90,'PEDRO HENRIQUE BRITO DE CASTRO','PEDRO HENRIQUE BRITO DE CASTRO','82096879','poeter_hbc@hotmail.com','',3,0),
 (91,'SAYLA MAYALLY LIMA SANTOS','SAYLA MAYALLY LIMA SANTOS','82688172','sayla_lima@hotmail.com','',3,0);
INSERT INTO `cracha`.`inscrito` VALUES  (92,'THIARA LUANA MAMORÉ RODRIGUES','THIARA LUANA MAMORÉ RODRIGUES','81382621','thiaraluana@hotmail.com','',3,0),
 (93,'VINICCIUS TOMÉ FEITOSA','VINICCIUS TOMÉ FEITOSA','81758084','vinic_cius@hotmail.com','',3,0),
 (94,'ADRYA LUCILA RODRIGUES LOPES','ADRYA LUCILA RODRIGUES LOPES','89068933/32351978','adrya.lopes48@gmail.com','',4,0),
 (95,'AGIRLAYNE DE SOUZA REIS','AGIRLAYNE DE SOUZA REIS','82165809','lannereis@hotmail.com','',4,0),
 (96,'ALYCE VANESSA DE ANDRADE','ALYCE VANESSA DE ANDRADE','81067245','alyce_nessah@hotmail.com','',4,0),
 (97,'AMANDA GONÇALVES DE GONÇALVES','AMANDA GONÇALVES DE GONÇALVES','81607124','amandah.g@hotmail.com','',4,0),
 (98,'ANDRESA SOARES DA COSTA','ANDRESA SOARES DA COSTA','80392948','soares.andresa@yahoo.com.br','',4,0),
 (99,'ATHALYCIA SILVA TORRES','ATHALYCIA SILVA TORRES','88201727>89280843','athalyciatorres@hotmail.com','',4,0),
 (100,'BARBARA VITÓRIA OLIVEIRA SOARES','BARBARA VITÓRIA OLIVEIRA SOARES','81670729','barbara_soares@outlook.com','',4,0),
 (101,'BEATRIZ MELO DE FIGUEIREDO','BEATRIZ MELO DE FIGUEIREDO','81298541','beatriz.mdef@hotmail.com','',4,0);
INSERT INTO `cracha`.`inscrito` VALUES  (102,'BETEL CAVALCANTE LOPES','BETEL CAVALCANTE LOPES','81834821','betelcavalcante@gmail.com','',4,0),
 (103,'CRISTIANE PANTOJA RODRIGUES DOS SANTOS','CRISTIANE PANTOJA RODRIGUES DOS SANTOS','81757383','crismayron@hotmail.com','',4,0),
 (104,'DANIELLY MORAES CALLEGARI','DANIELLY MORAES CALLEGARI','82898500','dani.callegari@hotmail.com','',4,0),
 (105,'DANILO SOUZA DA SILVA','DANILO SOUZA DA SILVA','82150411','souzas.danilo@live.com','',4,0),
 (106,'ELAYNE OLIVEIRA BRAGA','ELAYNE OLIVEIRA BRAGA','82156549','elaynnebraga@hotmail.com','',4,0),
 (107,'ERIKA ALINNE CAMPOS VELOSO','ERIKA ALINNE CAMPOS VELOSO','81290275','alinne_115@yahoo.com.br','',4,0),
 (108,'FRANCISCO DE CAVALHEIRO CAMARA','FRANCISCO DE CAVALHEIRO CAMARA','82086637','francisco.camara@yahoo.com.br','',4,0),
 (109,'JEOVA DA COSTA PACHECO','JEOVA DA COSTA PACHECO','32191910','pacheco_selia@hotmail.com','',4,0),
 (110,'JESSICA ANASTACIA MEDEIROS DOS REIS','JESSICA ANASTACIA MEDEIROS DOS REIS','32744273','j.anastaciareis@yahoo.com.br','',4,0),
 (111,'JÉSSY ANNI VILHENA SENADO','JÉSSY ANNI VILHENA SENADO','80967707','jessyanni@hotmail.com','',4,0);
INSERT INTO `cracha`.`inscrito` VALUES  (112,'LEONARDO CAMPOS VELOSO','LEONARDO CAMPOS VELOSO','81290275','alinne_115@yahoo.com.br','',4,0),
 (113,'MAIARA GOMES AGUIAR SILVA','MAIARA GOMES AGUIAR SILVA','91165791','mayara_aguiars2@hotmail.com','',4,0),
 (114,'MARIO LIMA DOS SANTOS','MARIO LIMA DOS SANTOS','81708268','mario.eng.florestal@hotmail.com','',4,0),
 (115,'PATRICIA NEVES PEREIRA','PATRICIA NEVES PEREIRA','81713823','patricianevespereira@yahoo.com','',4,0),
 (116,'PAULO HENRIQUE ALVES FERREIRA','PAULO HENRIQUE ALVES FERREIRA','91164436','paulo_kalps@hotmail.com','',4,0),
 (117,'RENAN RIBEIRO DE SOUZA','RENAN RIBEIRO DE SOUZA','81338419','renan.ribeiro@mail.com','',4,0),
 (118,'RITA DE OLIVEIRA BRAGA','RITA DE OLIVEIRA BRAGA','91969190','rita-florestal@hotmail.com','',4,0),
 (119,'TAYLANA LARISSA AZEVEDO GUIMARÃES SILVA','TAYLANA LARISSA AZEVEDO GUIMARÃES SILVA','92011712','taylaaaaaaa@hotmail.com','',4,0),
 (120,'THAIS MATIAS DE OLIVEIRA','THAIS MATIAS DE OLIVEIRA','80331810','thaisflorestal@hotmail.com','',4,0),
 (121,'VICTOR AFONSO MARINHO PISMEL','VICTOR AFONSO MARINHO PISMEL','32434046','victorpismel@yahoo.com.br','',4,0);
INSERT INTO `cracha`.`inscrito` VALUES  (122,'WALDENIR OLIVEIRA DA SILVA JUNIOR','WALDENIR OLIVEIRA DA SILVA JUNIOR','81948501','waldenir_ff@yahoo.com.br','',4,0),
 (123,'WILLIAN KELWIN AGUIAR OLIVEIRA','WILLIAN KELWIN AGUIAR OLIVEIRA','89063302','williankelvin18@gmail.com','',4,0),
 (124,'AMANDA DE CASTRO SEGTOWICH','AMANDA DE CASTRO SEGTOWICH','83203494','asegtowich@hotmail.com','',5,0),
 (125,'ANA PAULA MAGNO DO AMARAL','ANA PAULA MAGNO DO AMARAL','32733996/88021789','magno_ana@yahoo.com.br','',5,0),
 (126,'BRENDA JOYCE FREIRE DA COSTA','BRENDA JOYCE FREIRE DA COSTA','81123923','brendah.freire@gmail.com','',5,0),
 (127,'DENIS PINHEIRO DA SILVA','DENIS PINHEIRO DA SILVA','32647885','denispinheiro26@hotmail.com','',5,0),
 (128,'DIEGO CORREIA SODRÉ','DIEGO CORREIA SODRÉ','80332584','diego_c_sodre@hotmail.com','',5,0),
 (129,'EDIL SOARES DE OLIVEIRA','EDIL SOARES DE OLIVEIRA','80304795','edilo3oliveira@yahoo.com','',5,0),
 (130,'EDUARDO FELIPE NUNES DA COSTA','EDUARDO FELIPE NUNES DA COSTA','82514288','nunesedu19@hotmail.com','',5,0),
 (131,'FERNANDO RICARDO BARRETO DE OLIVEIRA','FERNANDO RICARDO BARRETO DE OLIVEIRA','99894075','fernandorbo@gmail.com','',5,0);
INSERT INTO `cracha`.`inscrito` VALUES  (132,'GLEYCE MARINA MORAES DOS SANTOS','GLEYCE MARINA MORAES DOS SANTOS','32171189','gmarinap20@hotmail.com','',5,0),
 (133,'IGOR BARTOLOMEU ALVES','IGOR BARTOLOMEU ALVES','','ygobarto@yahoo.com.br','',5,0),
 (134,'JULIANE MARTINS DE SOUSA','JULIANE MARTINS DE SOUSA','82537568','juliane.ufra@gmail.com','',5,0),
 (135,'JUSCELINO GONÇALVES PALHETA','JUSCELINO GONÇALVES PALHETA','91005533','juscegonçalves@hotmail.com','',5,0),
 (136,'LARISSA DA SILVA MIRANDA','LARISSA DA SILVA MIRANDA','81784708','larissa_miranda20@yahoo.com','',5,0),
 (137,'MARIA JOSÉ ATAIDE MENDES','MARIA JOSÉ ATAIDE MENDES','88614151','mariaataidemendes@yahoo.com','',5,0),
 (138,'PAULA PILONI LIMA','PAULA PILONI LIMA','81355208','paulapiloni@hotmail.com','',5,0),
 (139,'PAULO BARROS DE SOUZA FILHO','PAULO BARROS DE SOUZA FILHO','82472873','paulobarros_250@hotmail.com','',5,0),
 (140,'ROZANE FRANCI DE MORAES TAVARES','ROZANE FRANCI DE MORAES TAVARES','81703415','rozane.franci@hotmail.com','',5,0),
 (141,'TAIS FERREIRA E FERREIRA','TAIS FERREIRA E FERREIRA','83424305','tai_sven@hotmail.com','',5,0);
INSERT INTO `cracha`.`inscrito` VALUES  (142,'THAIS ARLETE EVANGELISTA DA SILVA','THAIS ARLETE EVANGELISTA DA SILVA','82095404','hais.silva@mail.com','',5,0),
 (143,'VICTOR PROENÇA DO AMARAL','VICTOR PROENÇA DO AMARAL','87273660','victor-22-xp@hotmail.com','',5,0),
 (144,'ARTHUR NAZARENO MARINHO OLIVEIRA','ARTHUR NAZARENO MARINHO OLIVEIRA','32293408/81667737','athur.nazareno@hotmail.com','',6,0),
 (145,'BRUNA STEFANNY DAS NEVES DE SOUSA','BRUNA STEFANNY DAS NEVES DE SOUSA','32467043','brunastefanny@outlook.com','',6,0),
 (146,'CARLA CAROLYNNE RESUENO COEL','CARLA CAROLYNNE RESUENO COEL','81671800','karlynha-000@hotmail.com','',6,0),
 (147,'CARLA JACQUELINE DE ALMEIDA MACIEL','CARLA JACQUELINE DE ALMEIDA MACIEL','81069306','maciel.carlajacqueline@gmail.com','',6,0),
 (148,'DÉBORA BRENDA DA SILVA SOUSA','DÉBORA BRENDA DA SILVA SOUSA','89272803','d.brenda.dbbb@gmail.com','',6,0),
 (149,'DIEGO PETRONIO BATALHA GOMES','DIEGO PETRONIO BATALHA GOMES','81643065','diego.petronio@hotmail.com','',6,0),
 (150,'ELIZABETE COSTA DOS SANTOS','ELIZABETE COSTA DOS SANTOS','32784177','eliza@hotmail.com','',6,0);
INSERT INTO `cracha`.`inscrito` VALUES  (151,'EMANOEL RODRIGUES CALOAS','EMANOEL RODRIGUES CALOAS','80845409','emanoel_rodrigues@yahoo.com.br','',6,0),
 (152,'EMANUELY NAVEGANTES DOS SANTOS','EMANUELY NAVEGANTES DOS SANTOS','88088079/80328908','emanuelynavegantes@gmail.com','',6,0),
 (153,'FRANCIANE SOARES DA SILVA','FRANCIANE SOARES DA SILVA','87463551','francysilva1@live.com','',6,0),
 (154,'HEITOR DE SÁ ZIVIANI','HEITOR DE SÁ ZIVIANI','81106166','heitor_hsz@hotmail.com','',6,0),
 (155,'JADE DA SILVA BRITO','JADE DA SILVA BRITO','80334995','jadebritto@gmail.com','',6,0),
 (156,'JAMILLE RABELO DE OLIVEIRA','JAMILLE RABELO DE OLIVEIRA','81880437','jamille_rabelo@hotmail.com','',6,0),
 (157,'JAOMARA NASCIMENTO DA SILVA','JAOMARA NASCIMENTO DA SILVA','82896303','ns_jaomara@hotmail.com','',6,0),
 (158,'JONILSON RIBEIRO TRINDADE','JONILSON RIBEIRO TRINDADE','83036160>87128690','jonilson_rt@yahoo.com.br','',6,0),
 (159,'JULIANE BATISTA MACIEL','JULIANE BATISTA MACIEL','32557632','juliane-jebn@hotmail.com','',6,0),
 (160,'LILLIAN MATIAS DE OLIVEIRA','LILLIAN MATIAS DE OLIVEIRA','80328076','lillianoliveira4@hotmail.com','',6,0);
INSERT INTO `cracha`.`inscrito` VALUES  (161,'LORENE BIANCA ARAÚJO TADAIESKY','LORENE BIANCA ARAÚJO TADAIESKY','83113378','lorene.tadaiesky@gmail.com','',6,0),
 (162,'LUANA PAULA FREIRE DE SOUZA','LUANA PAULA FREIRE DE SOUZA','80875319','luanafreire.agro@hotmail.com','',6,0),
 (163,'LUIS FILIPE AZEVEDO DE SOUZA','LUIS FILIPE AZEVEDO DE SOUZA','84977375','filipe_luis@hotmail.com','',6,0),
 (164,'MAIARA ROBERTA LOBO SOARES','MAIARA ROBERTA LOBO SOARES','81401109','maiararsoares@gmail.com','',6,0),
 (165,'MAYANE VILHENA DE FREITAS','MAYANE VILHENA DE FREITAS','89005008','mayane_vilhena@gmail.com','',6,0),
 (166,'MYRIAM GALVÃO NEVES','MYRIAM GALVÃO NEVES','81088500','agronomyriam@hotmail.com','',6,0),
 (167,'NAYLANNA MARTINS DOS SANTOS','NAYLANNA MARTINS DOS SANTOS','81500785-32721228','naylanna_martins@hotmail.com','',6,0),
 (168,'PAULA MARTINELLY DOS REIS FARIAS','PAULA MARTINELLY DOS REIS FARIAS','80986374>84472114','paulamartinelly@hotmail.com','',6,0),
 (169,'RAFAELA FURTADO DA CUNHA','RAFAELA FURTADO DA CUNHA','89079879','rafaelacunha_agro@yahoo.com.br','',6,0),
 (170,'RAYANNE CRISTINA PEREIRA DE SOUZA','RAYANNE CRISTINA PEREIRA DE SOUZA','88131250','rayannepsouza2012@hotmail.com','',6,0);
INSERT INTO `cracha`.`inscrito` VALUES  (171,'SELENA MARA JESUS DIAS','SELENA MARA JESUS DIAS','87286971','selena_maradias@hotmail.com','',6,0),
 (172,'TAINARA MIRANDA DA SILVA','TAINARA MIRANDA DA SILVA','88272533','tainara.msilva@gmail.com','',6,0),
 (173,'VALDIR SOUZA E SILVA JUNIOR','VALDIR SOUZA E SILVA JUNIOR','82209090','valdir.jr.agro@gmail.com','',6,0),
 (174,'HELLEN OLIVEIRA DE OLIVEIRA','HELLEN OLIVEIRA DE OLIVEIRA','82976367','hellenoliveira17@gmail.com','',6,0),
 (175,'ALANA CRISTIAN ARAUJO DUARTE','ALANA CRISTIAN ARAUJO DUARTE','82036573','alana.anhemberg@yahoo.com.br','',7,0),
 (176,'ANDRÉ CARLOS DE OLIVEIRA ROCHA','ANDRÉ CARLOS DE OLIVEIRA ROCHA','99866258','agro.andre@yahoo.com.br','',7,0),
 (177,'CAROLINA SIMÕES DOS SANTOS','CAROLINA SIMÕES DOS SANTOS','81105932','carolina-s.santos@hotmail.com','',7,0),
 (178,'CENNEYA LOPES MARTINS','CENNEYA LOPES MARTINS','8148-7515','cenneya.martins@hotmail.com','',7,0),
 (179,'CLEVERSON ALAN PANTOJA','CLEVERSON ALAN PANTOJA','80987775','alan.4788@gmail.com','',7,0),
 (180,'DANILO HENRIQUE DA CRUZ DE ARAGÃO','DANILO HENRIQUE DA CRUZ DE ARAGÃO','93359698','danilohenrique@hotmail.com','',7,0);
INSERT INTO `cracha`.`inscrito` VALUES  (181,'DENISE SIQUEIRA PEREIRA','DENISE SIQUEIRA PEREIRA','3237-0071 ou 8177-2710','dnspereira@live.com','',7,0),
 (182,'DEUZANIRA MENDES CARDOSO','DEUZANIRA MENDES CARDOSO','82981623/84272880','niracardoso@yahoo.com.br','',7,0),
 (183,'DIMISSON GARCIA BLANCO','DIMISSON GARCIA BLANCO','83938704','dimison2008@hotmail.com','',7,0),
 (184,'ELAINE CRISTINA DA SILVA RODRIGUES','ELAINE CRISTINA DA SILVA RODRIGUES','81425994','ecs.rodrigues@yahoo.com.br','',7,0),
 (185,'EWELYN REGINA ROCHA SILVA','EWELYN REGINA ROCHA SILVA','8386-2092','ewelyn.silva@hotmail.com','',7,0),
 (186,'IGOR DOS REIS COSTA','IGOR DOS REIS COSTA','32666579','igorrc2@hotmail.com','',7,0),
 (187,'JALIANE DE NAZARE RODRIGUES','JALIANE DE NAZARE RODRIGUES','88323407','jalianerodrigues@gmail.com','',7,0),
 (188,'JESSYCA FERNANDA DOS SANTOS DUARTE','JESSYCA FERNANDA DOS SANTOS DUARTE','80687231-32635259','duarte.jessyca@hotmail.com','',7,0),
 (189,'JULIANA MARTINS DE LIMA','JULIANA MARTINS DE LIMA','81909492','juumartinsslima@gmail.com','',7,0),
 (190,'KACTALILIAN OLIVEIRA DA SILVA','KACTALILIAN OLIVEIRA DA SILVA','99429223','kacta-2010@hotmail.com','',7,0);
INSERT INTO `cracha`.`inscrito` VALUES  (191,'KATIA CILENE BAHIA RODRIGUES','KATIA CILENE BAHIA RODRIGUES','88987759','katia_cilene@hotmail.com','',7,0),
 (192,'LLEIDIANE RIBEIRO MEDEIROS ','LLEIDIANE RIBEIRO MEDEIROS ','96340077','lleidiane.medeiros@mail.com','',7,0),
 (193,'LUANNE RIBEIRO SANTOS','LUANNE RIBEIRO SANTOS','80688073','luuuh_solfieri@hotmail.com','',7,0),
 (194,'LUIZ HENRIQUE ROCHA LOPES','LUIZ HENRIQUE ROCHA LOPES','82948805','luizenrrique@hotmail.com','',7,0),
 (195,'MANOELY ABREU REIS','MANOELY ABREU REIS','83638050','manoelyabreu@gmail.com','',7,0),
 (196,'MATHEUS TAVARES DE SOUZA','MATHEUS TAVARES DE SOUZA','32237349','mat_tavares_44@hotmail.com','',7,0),
 (197,'NAJLA MARIA CASTRO PIRES','NAJLA MARIA CASTRO PIRES','81837634','najlapires@hotmail.com','',7,0),
 (198,'PEDRO PAULO DA COSTA ALVES','PEDRO PAULO DA COSTA ALVES','81568640','pp.alvesfilho@yahoo.com.br','',7,0),
 (199,'PRISCILA MAYLANA MODESTO DE JESUS','PRISCILA MAYLANA MODESTO DE JESUS','81308040','priscilamodesto@ymail.com','',7,0),
 (200,'RAFAEL MARLON ALVES DE ASSIS','RAFAEL MARLON ALVES DE ASSIS','80445640','rafamarlon7@gmail.com','',7,0);
INSERT INTO `cracha`.`inscrito` VALUES  (201,'SHEYLA OLIVEIRA DA COSTA','SHEYLA OLIVEIRA DA COSTA','88516424','sheyla.075@hotmail.com','',7,0),
 (202,'SUEYLA MALCHER BEZERRA','SUEYLA MALCHER BEZERRA','82664883','sueylamalcher@yahoo.com.br','',7,0),
 (203,'TÁSSIO KOITI IGAWA','TÁSSIO KOITI IGAWA','32350625','koiti.igawa@hotmail.com','',7,0),
 (204,'ABIMAEL CUNHA FARIAS','ABIMAEL CUNHA FARIAS','87180553','abimael_302@hotmail.com','',8,0),
 (205,'ADRIELE OLIVEIRA COSTA','ADRIELE OLIVEIRA COSTA','81387735/91910398','adrielecosta@hotmail.com','',8,0),
 (206,'ANA CAROLINA MIRANDA FERNANDES','ANA CAROLINA MIRANDA FERNANDES','32583514>82293750','carolina.floresta@hotmail.com','',8,0),
 (207,'ANDREIA TAYNAH DE ANDRADE SILVA','ANDREIA TAYNAH DE ANDRADE SILVA','81624964','andreiaandrade@yahoo.com.br','',8,0),
 (208,'BRUNA RAISSA BEZERRA DOS SANTOS','BRUNA RAISSA BEZERRA DOS SANTOS','32242164','brunabzr@live.com','',8,0),
 (209,'CARLOS DE CARVALHO BARROS FILHO','CARLOS DE CARVALHO BARROS FILHO','82800050','carlosbarros_filho@hotmail.com','',8,0),
 (210,'CARLOS JUNIOR MARTINELLI ALMEIDA','CARLOS JUNIOR MARTINELLI ALMEIDA','81363806','carlos.almeida@mail.com','',8,0);
INSERT INTO `cracha`.`inscrito` VALUES  (211,'CLARK ALBERTO SOUZA DA COSTA ','CLARK ALBERTO SOUZA DA COSTA ','(91) 80988444','clark.agro@hotmail.com','',8,0),
 (212,'CLAUDINETE HORÁCIO DE SOUZA','CLAUDINETE HORÁCIO DE SOUZA','88207102','claudinete-horacio@hotmail.com','',8,0),
 (213,'DAYSE NATASHA BARBOSA PASTANA','DAYSE NATASHA BARBOSA PASTANA','80987914','dayse_dyz@hotmail.com','',8,0),
 (214,'ESTÉFANY GURGEL RIOS','ESTÉFANY GURGEL RIOS','82336410','estefany-gurgel@hotmail.com','',8,0),
 (215,'GILSON DO CARMO ALEXANDRINO','GILSON DO CARMO ALEXANDRINO','80664202','gilsongsgb@gmail.com','',8,0),
 (216,'HÉLIO LEANDRO DA SILVA','HÉLIO LEANDRO DA SILVA','82316780','helio_geo90@live.com','',8,0),
 (217,'IZABELLE ANTUNES DA SILVA','IZABELLE ANTUNES DA SILVA','88045293>80782675','izabelleantunes@hotmail.com','',8,0),
 (218,'JEAN PATRICK DA SILVA LOPES','JEAN PATRICK DA SILVA LOPES','(91)82996777','jp_lopes@hotmail.com','',8,0),
 (219,'JOÃO PAULO DA SILVA VASCONCELOS','JOÃO PAULO DA SILVA VASCONCELOS','81190840','paulo_11_94@hotmail.com','',8,0),
 (220,'JOSÉ RAIMUNDO QUADROS FERNANDES','JOSÉ RAIMUNDO QUADROS FERNANDES','99873289/32318093','quadrosfernandes@uol.com.br','',8,0);
INSERT INTO `cracha`.`inscrito` VALUES  (221,'JOSIANE PACHECO DE ALFAIA','JOSIANE PACHECO DE ALFAIA','32598854','alfaia.josiane724@gmail.com','',8,0),
 (222,'JULIE ANAREWS DE FRANÇA E SILVA','JULIE ANAREWS DE FRANÇA E SILVA','82055946','julie.franca@yahoo.com.br','',8,0),
 (223,'LAIANE PINTO DA SILVA','LAIANE PINTO DA SILVA','82572090','layane.silva02@gmail.com','',8,0),
 (224,'LARISSA JAINA DA SILVA DE OLIVEIRA','LARISSA JAINA DA SILVA DE OLIVEIRA','89457105','larissajaina@gmail.com','',8,0),
 (225,'LAURA RIBEIRO REIS','LAURA RIBEIRO REIS','82939163','alcmena3000@yahoo.com.br','',8,0),
 (226,'LAYLA GERUSA SOUZA LIMA','LAYLA GERUSA SOUZA LIMA','(91) 83878356','layla.lima.ufra@hotmail.com','',8,0),
 (227,'LEANDRO CARVALHO DA SILVA','LEANDRO CARVALHO DA SILVA','81390593','l.carvalho22@hotmail.com','',8,0),
 (228,'LORIENE MIRANDA AVELAR','LORIENE MIRANDA AVELAR','(91) 81824985','mpas15-@hotmail.com','',8,0),
 (229,'LUCAS FERNANDES DOS REIS','LUCAS FERNANDES DOS REIS','83428688','lfreis00@yahoo.com.br','',8,0),
 (230,'LUIZ CARLOS NUNES CARVALHO','LUIZ CARLOS NUNES CARVALHO','(91) 96194590','luiscnc22@gmail.com','',8,0);
INSERT INTO `cracha`.`inscrito` VALUES  (231,'MAGDA VALÉRIA CORRÊA MIRANDA','MAGDA VALÉRIA CORRÊA MIRANDA','91724673','tec.magdamiranda@hotmail.com','',8,0),
 (232,'MAÍRA ALVES BRITO','MAÍRA ALVES BRITO','91367723','alves-maira@hotmail.com','',8,0),
 (233,'MARIA GERLEANE MOREIRA DE ARAUJP DA CUNHA','MARIA GERLEANE MOREIRA DE ARAUJP DA CUNHA','82495919','mariagerleane@hotmail.com','',8,0),
 (234,'MARILIA LISBOA ROCHA','MARILIA LISBOA ROCHA','82052858','marilia.agro@yahoo.com.br','',8,0),
 (235,'MÁRLONE PROGÊNIO DA SILVA','MÁRLONE PROGÊNIO DA SILVA','87214064/83906789','marlone.agro@hotmail.com','',8,0),
 (236,'MATHEUS ARAÚJO AZEVEDO','MATHEUS ARAÚJO AZEVEDO','81635788','matheus_araujo13@hotmail.com','',8,0),
 (237,'MAYARA FEITOSA OLIVEIRA','MAYARA FEITOSA OLIVEIRA','92049649','mayf57@hotmail.com','',8,0),
 (238,'MAYRA TANIELY RIBEIRO ABADE','MAYRA TANIELY RIBEIRO ABADE','89083204','mayra_agro@hotmail.com','',8,0),
 (239,'PAMELA DANIELY DOS SANTOS RIBEIRO','PAMELA DANIELY DOS SANTOS RIBEIRO','82562815','pamela.ribeiro@mail.com','',8,0),
 (240,'PAULO HENRIQUE SOARES SILVA','PAULO HENRIQUE SOARES SILVA','80743711','phsoares@yahoo.com.br','',8,0);
INSERT INTO `cracha`.`inscrito` VALUES  (241,'RENATO MARTINS DA SILVA','RENATO MARTINS DA SILVA','91885715','mrenato53@yahoo.com.br','',8,0),
 (242,'RONIELTON COELHO','RONIELTON COELHO','(91) 83294647','ronielton.c@gmail.com','',8,0),
 (243,'SÂNGELA CRUZ MORAIS','SÂNGELA CRUZ MORAIS','91237080','sangela.cruz@hotmail.com','',8,0),
 (244,'SAVIO SILVA AZEVEDO','SAVIO SILVA AZEVEDO','(91) 81143566','savio_aze@hotmail.com','',8,0),
 (245,'THAYNARA FERNANDES RAMOS','THAYNARA FERNANDES RAMOS','80178816','thaynara_ramos@yahoo.com.br','',8,0),
 (246,'TIAGO RODRIGUES FERREIRA','TIAGO RODRIGUES FERREIRA','81089883','clicktiago2011@hotmail.com','',8,0),
 (247,'TONY JACKSON FREITAS LINS GOMES','TONY JACKSON FREITAS LINS GOMES','83969144','tonyjackson.lins@yahoo.com','',8,0),
 (248,'VANESSA DOS SANTOS COSME','VANESSA DOS SANTOS COSME','91226762>82201655','van_santos04@hotmail.com','',8,0),
 (249,'ANTONIO THOMAZ GUIMARÃES','ANTONIO THOMAZ GUIMARÃES','81607440','guimaraes.thomaz@yahoo.com.br','',9,0),
 (250,'ALEXANDRE PACHECO FARIAS','ALEXANDRE PACHECO FARIAS','82308154','alexandre_farigs20@hotmail.com','',9,0);
INSERT INTO `cracha`.`inscrito` VALUES  (251,'ALYNNE REGINA NAZARÉ ALVES MACIEL','ALYNNE REGINA NAZARÉ ALVES MACIEL','80566856','alynne.maciel03@hotmail.com','',9,0),
 (252,'AMANDA PATRICIA DAS MERCES XAVIER','AMANDA PATRICIA DAS MERCES XAVIER','82856195','amandaagro.ufra@gmail.com','',9,0),
 (253,'ANTÔNIA GEICIANE SILVA DE OLIVEIRA','ANTÔNIA GEICIANE SILVA DE OLIVEIRA','84139695/84029915','meirigeici@hotmail.com','',9,0),
 (254,'ARIENE OLIVEIRA BARROS','ARIENE OLIVEIRA BARROS','81100215','ariene.oliveira@yahoo.com.br','',9,0),
 (255,'CLEYZIANE DA SILVA COSTA','CLEYZIANE DA SILVA COSTA','80325307','cleyziane_21@hotmail.com','',9,0),
 (256,'DAMILLY URIELLY VIANA SILVA','DAMILLY URIELLY VIANA SILVA','80529118','damilly.viana@hotmail.com','',9,0),
 (257,'DAYARA CAROLINE RAIOL','DAYARA CAROLINE RAIOL','99997626','dayara.caroline@mail.com','',9,0),
 (258,'DAYSE GONZAGA BRAGA','DAYSE GONZAGA BRAGA','82117762','fabiogomesmonteiro2014@gmail.com','',9,0),
 (259,'DÉBORA OLIVEIRA GOMES','DÉBORA OLIVEIRA GOMES','82300229','debora.oligomes@hotmail.com','',9,0),
 (260,'ELIZANE ALVES ARRAES ARAÚJO','ELIZANE ALVES ARRAES ARAÚJO','88752016','lizarraes@hotmail.com','',9,0);
INSERT INTO `cracha`.`inscrito` VALUES  (261,'ERI VANESSA COSTA SOUSA','ERI VANESSA COSTA SOUSA','83113515','vanessac.sousa@hotmail.com','',9,0),
 (262,'FLAVIO SILVEIRA DOS SANTOS','FLAVIO SILVEIRA DOS SANTOS','80324911','fla-teen@hotmail.com','',9,0),
 (263,'FRANCINÉIA PINTO CALANDRINO','FRANCINÉIA PINTO CALANDRINO','81050636','nevinha_pc@gmail.com','',9,0),
 (264,'GILMARA SOUZA DE OLIVEIRA','GILMARA SOUZA DE OLIVEIRA','81299421','fabiogomesmonteiro2014@gmail.com','',9,0),
 (265,'HERIKA GONÇALVES SOARES','HERIKA GONÇALVES SOARES','88351737','hgsoares86@hotmail.com','',9,0),
 (266,'INAYARA ALBUQUERQUE OLIVEIRA','INAYARA ALBUQUERQUE OLIVEIRA','81757085','inayara_albuquerque@hotmail.com','',9,0),
 (267,'JAMILLY BRITO GUIMARÃES','JAMILLY BRITO GUIMARÃES','32530512','jamilly.guimaraes@mail.com','',9,0),
 (268,'JUCIMARA ALVES SILVA','JUCIMARA ALVES SILVA','88909965/89066742','juci.mara16@hotmail.com','',9,0),
 (269,'LARISSA TAVARES DA TRINDADE','LARISSA TAVARES DA TRINDADE','81307616','larissa.eng.f@hotmail.com','',9,0),
 (270,'LEILIANE NAZARÉ SILVA NASCIMENTO','LEILIANE NAZARÉ SILVA NASCIMENTO','83708397','leilianenascimento20@hotmail.com','',9,0);
INSERT INTO `cracha`.`inscrito` VALUES  (271,'LUCIANE DE NAZARÉ ALMEIDA DOS REIS','LUCIANE DE NAZARÉ ALMEIDA DOS REIS','80627506','lucy_reis_@hotmail.com','',9,0),
 (272,'MICHELLE SOUSA BORGES','MICHELLE SOUSA BORGES','80325532','m_borges02@hotmail.com','',9,0),
 (273,'PAULO SILVANO MAGNO FRÓES JÚNIOR','PAULO SILVANO MAGNO FRÓES JÚNIOR','80544683','pjfroes@yahoo.com.br','',9,0),
 (274,'RAFAELLE DA SILVA NEGRÃO','RAFAELLE DA SILVA NEGRÃO','83432114','rafaelle_negrao@hotmail.com','',9,0),
 (275,'TAISE PEREIRA CARVALHO','TAISE PEREIRA CARVALHO','32491627','taisecarvalho-prosum@hotmail.com','',9,0),
 (276,'VANESSA FERREIRA ALVES','VANESSA FERREIRA ALVES','81194952','vanessa_fealves@hotmail.com','',9,0),
 (277,'WENDEL KAIAN OLIVEIRA MOREIRA','WENDEL KAIAN OLIVEIRA MOREIRA','82379398','wendel.kaian@hotmail.com','',9,0),
 (278,'WENDY VIEIRA MEDEIROS','WENDY VIEIRA MEDEIROS','83438736','wendy.medeiros@hotmail.com','',9,0),
 (279,'ANDRÉ GUSTAVO CAMPINAS PEREIRA','ANDRÉ GUSTAVO CAMPINAS PEREIRA','82196650','andre_gustavo_15@hotmail.com','',10,0),
 (280,'ANTONIA JENNIFER LIMA DA CRUZ','ANTONIA JENNIFER LIMA DA CRUZ','82679629','jennifer_cruz19@hotmail.com','',10,0);
INSERT INTO `cracha`.`inscrito` VALUES  (281,'ARLEY THONCY ALMEIDA CARDOSO','ARLEY THONCY ALMEIDA CARDOSO','99873635/80878902','ataclogan@yahoo.com.br','',10,0),
 (282,'ARTHUR LOBATO','ARTHUR LOBATO','','arthur.lobato@mail.com','',10,0),
 (283,'CAIO CESAR VIEIRA GUIMARÃES','CAIO CESAR VIEIRA GUIMARÃES','32392210/82901673','caioguimaraes.agro@gmail.com','',10,0),
 (284,'CARLA TOPÁZIO GOMES DAS CHAGAS','CARLA TOPÁZIO GOMES DAS CHAGAS','80333254','carlatoppazio@gmail.com','',10,0),
 (285,'CAROLINA SARMANHO FREITAS','CAROLINA SARMANHO FREITAS','96246908','carolsarmanho7@gmail.com','',10,0),
 (286,'DAIHANY MORAES CALLEGARI','DAIHANY MORAES CALLEGARI','82899666','daihanyme@hotmail.com','',10,0),
 (287,'FELIPE COSTA TRINDADE','FELIPE COSTA TRINDADE','83044590','felipe-ct33@hotmail.com','',10,0),
 (288,'GUSTAVO SERIBELI FURMIGARE','GUSTAVO SERIBELI FURMIGARE','82289206','gustavo.seribeli@hotmail.com','',10,0),
 (289,'HANNA IBIAPINA DE JESUS','HANNA IBIAPINA DE JESUS','82021104','hanna_ij@hotmail.com','',10,0),
 (290,'JESSICA MARIANA COELHO MAGALHES','JESSICA MARIANA COELHO MAGALHES','83536763','jessika-magalhaes@hotmail.com','',10,0);
INSERT INTO `cracha`.`inscrito` VALUES  (291,'JOÃO FRANCISCO COSTA CARNEIRO JUNIOR','JOÃO FRANCISCO COSTA CARNEIRO JUNIOR','81902486','jonjf12@hotmail.com','',10,0),
 (292,'JOSÉ FARIAS COSTA','JOSÉ FARIAS COSTA','83466774','josecosta.15@hotmail.com','',10,0),
 (293,'KELLY NAYARA NASCIMENTO COELHO','KELLY NAYARA NASCIMENTO COELHO','81687523','kelly.pgm@hotmail.com','',10,0),
 (294,'LENNON CHELTON SERRAO CARDOSO','LENNON CHELTON SERRAO CARDOSO','82910651','lennon_chelton@hotmail.com','',10,0),
 (295,'LEONARDO DE ANDRADE SALBEGO','LEONARDO DE ANDRADE SALBEGO','80329475','leozinho_500@gamil.com','',10,0),
 (296,'LUAN SKITTBERG RUFFATO','LUAN SKITTBERG RUFFATO','83551919','luan_ruffato@hotmail.com','',10,0),
 (297,'LUCELIA DE SOUSA PAULA','LUCELIA DE SOUSA PAULA','81385825','luluzinha.pgm.2012@hotmail.com','',10,0),
 (298,'MARCIO CARDOSO MOURÃO','MARCIO CARDOSO MOURÃO','80516975','marcio_mourao22@hotmail.com','',10,0),
 (299,'MARIA ANTÔNIA MACHADO BARBOSA','MARIA ANTÔNIA MACHADO BARBOSA','83718013','suzybarbosa@hotmail.com','',10,0),
 (300,'PÊOLA REIS DE SOUZA ','PÊOLA REIS DE SOUZA ','82301818','peolasouza@yahoo.com.br','',10,0);
INSERT INTO `cracha`.`inscrito` VALUES  (301,'RAFAEL MORAIS TRAJANO','RAFAEL MORAIS TRAJANO','81861463/81959253','raffaelltrajano@gami.com','',10,0),
 (302,'RIAN ANTÔNIO DOS REIS RIBEIRO','RIAN ANTÔNIO DOS REIS RIBEIRO','83847200','rian-rar@hotmail.com','',10,0),
 (303,'RODRIGO ABREU FRANÇA','RODRIGO ABREU FRANÇA','96186623','rodrigoabreufranca@yahoo.com.br','',10,0),
 (304,'ROSILEIA DA COSTA CARVALHO','ROSILEIA DA COSTA CARVALHO','32775042','rosiccarvalho@hotmail.com','',10,0),
 (305,'SAMANDA PEREIRA SILVA','SAMANDA PEREIRA SILVA','82315710','samandakizy@hotmail.com','',10,0),
 (306,'SUANY MACHADO DA SILVA','SUANY MACHADO DA SILVA','89192923','suanysilva@yahoo.com.br','',10,0),
 (307,'VALTO COELHO SANTANA JUNIOR','VALTO COELHO SANTANA JUNIOR','82699659','walto_jr2008@hotmail.com','',10,0),
 (308,'VINICIUS NEGRÃO SALDANHA','VINICIUS NEGRÃO SALDANHA','82072044','agro_vn187@hotmail.com','',10,0),
 (309,'THAISE OLIVEIRA DANTAS','THAISE OLIVEIRA DANTAS','80878359','thaisedantas13@gmail.com','',10,0),
 (310,'ABEL JAMIR RIBEIRO BASTOS','ABEL JAMIR RIBEIRO BASTOS','83214752','leba_rock@yahoo.com.br','',11,0);
INSERT INTO `cracha`.`inscrito` VALUES  (311,'ADIELY HELAINE AMIN DOS REIS','ADIELY HELAINE AMIN DOS REIS','82686804','adyh-amin@hotmail.com','',11,0),
 (312,'ALINE MUNIZ BANDEIRA','ALINE MUNIZ BANDEIRA','32772254','bandeira.muniz@hotmail.com','',11,0),
 (313,'ANANDA EVELYN CARVALHO SILVA','ANANDA EVELYN CARVALHO SILVA','82016574','eng.anandasilva@hotmail.com','',11,0),
 (314,'ANDERSON MARTINELLI ALMEIDA','ANDERSON MARTINELLI ALMEIDA','81456372','andersonmartinellialmeidahotmail.com','',11,0),
 (315,'ARIADNE REINALDO TRINDADE','ARIADNE REINALDO TRINDADE','81524542','ariadnetrindade@hotmail.com','',11,0),
 (316,'BRUNA NAYARA COSTA DE SOUZA','BRUNA NAYARA COSTA DE SOUZA','89232209','nayara.ripardo@gmail.com','',11,0),
 (317,'CARLA LETICIA FIGUEREDO CARVALHO SOUZA','CARLA LETICIA FIGUEREDO CARVALHO SOUZA','82021133/91031261','lekah30@gmail.com','',11,0),
 (318,'DANIELA CARDOSO SILVA','DANIELA CARDOSO SILVA','81396790','daniellacardoso_@hotmail.com','',11,0),
 (319,'DAYANE SANTA BRIGIDA DIAS','DAYANE SANTA BRIGIDA DIAS','81707153','dayanesbd@gmail.com','',11,0),
 (320,'DEYGENANEN BRITO DA LUZ','DEYGENANEN BRITO DA LUZ','81166536','deyd_florestal@hotmail.com','',11,0);
INSERT INTO `cracha`.`inscrito` VALUES  (321,'DIOCLÉA ALMEIDA SEABRA SILVA','DIOCLÉA ALMEIDA SEABRA SILVA','96339180','dioclea@ibest.com.br','',11,0),
 (322,'FÁBIO GOMES MONTEIRO','FÁBIO GOMES MONTEIRO','82056229','fabiogomesmonteiro2014@gmail.com','',11,0),
 (323,'IAN DE SOUZA MENEZES','IAN DE SOUZA MENEZES','80548898','ian_souzamenezes@hotmail.com','',11,0),
 (324,'JARDEL DIEGO BARBOSA RODRIGUES','JARDEL DIEGO BARBOSA RODRIGUES','82285437','jardeldiego@hotmail.com','',11,0),
 (325,'JONATHAS DE OLIVEIRA BARRADAS','JONATHAS DE OLIVEIRA BARRADAS','83339539 - 91980398','jonathas_adepara@hotmail.com','',11,0),
 (326,'JOYCE ANANDA SOUSA PAIXÃO ','JOYCE ANANDA SOUSA PAIXÃO ','81359089','joyceananda@yahoo.com.br','',11,0),
 (327,'JOZE MELISA NUNES DE FREITAS','JOZE MELISA NUNES DE FREITAS','81184785 - 82898742','jozemelisa@yahoo.com.br','',11,0),
 (328,'KIM KARLOS KISHI SENA','KIM KARLOS KISHI SENA','80578974','kimsena2292@yahoo.com.br','',11,0),
 (329,'LARISSA DO LIVRAMENTO SILVA','LARISSA DO LIVRAMENTO SILVA','82398042','larissa.livramento@yahoo.com','',11,0),
 (330,'LARISSA SOUSA VILLAS BOAS AMORIM','LARISSA SOUSA VILLAS BOAS AMORIM','83677185','larissa.villasboas@hotmail.com','',11,0);
INSERT INTO `cracha`.`inscrito` VALUES  (331,'LYSSA MARTINS DE SOUZA','LYSSA MARTINS DE SOUZA','81051087','lyssaflorestal@outlook.com','',11,0),
 (332,'MANUELA BRASIL CAVALCANTE','MANUELA BRASIL CAVALCANTE','82518287','manuelacavalcante07@hotmail.com','',11,0),
 (333,'NICELLY COSTA FAVACHO','NICELLY COSTA FAVACHO','81007073','nicellyfavacho@hotmail.com','',11,0),
 (334,'RAFAEL RODRIGO DA SILVA COSTA','RAFAEL RODRIGO DA SILVA COSTA','83277089','rafael.costa@mail.com','',11,0),
 (335,'RAFAELA DE SOUSA PEREIRA','RAFAELA DE SOUSA PEREIRA','81056805','rafaelasousa77@yahoo.com.br','',11,0),
 (336,'RAYSSA LOPES DA SILVA','RAYSSA LOPES DA SILVA','32551997>82639584','rayssa_07@yahoo.com.br','',11,0),
 (337,'RUBIA CARLA  RIBEIRO DANTAS','RUBIA CARLA  RIBEIRO DANTAS','81045749','biadantas166@hotmail.com','',11,0),
 (338,'SUMAYA SILVA ASSUNÇÃO','SUMAYA SILVA ASSUNÇÃO','82917111','sumaya_assuncao@hotmail.com','',11,0),
 (339,'TALES SILVA PEREIRA','TALES SILVA PEREIRA','80331316','talesspereira@yahoo.com.br','',11,0),
 (340,'ARNALDO PEREIRA CARNEIRO NETO','ARNALDO PEREIRA CARNEIRO NETO','32753600/84117735','arnaldocar34@hotmail.com','',12,0);
INSERT INTO `cracha`.`inscrito` VALUES  (341,'ALESSANDRA DANIELE DE SOUSA BRANDÃO','ALESSANDRA DANIELE DE SOUSA BRANDÃO','80330818','alessandrabrandao6@hotmail.com','',12,0),
 (342,'ALEX RIBEIRO DOS REIS','ALEX RIBEIRO DOS REIS','80975569','alex_entei13@hotmail.com','',12,0),
 (343,'ANA CAROLINA DA SILVA GOMES','ANA CAROLINA DA SILVA GOMES','80870359','anacarolinaa.c@hotmail.com','',12,0),
 (344,'ARTUR DA SILVA RIBEIRO','ARTUR DA SILVA RIBEIRO','80854807','artur.silva01@hotmail.com','',12,0),
 (345,'BEATRIZ LUNA FIGUEIREDO','BEATRIZ LUNA FIGUEIREDO','82792383','betrizluna@outlook.com','',12,0),
 (346,'DANIELLY CRISTINA DA SILVA MARQUES','DANIELLY CRISTINA DA SILVA MARQUES','81563726','marquesdanielly@hotmail.com','',12,0),
 (347,'EVERTON COSTA DIAS','EVERTON COSTA DIAS','83215589','everton-uzumaki@hotmail.com','',12,0),
 (348,'GABRIEL RODRIGUES SANTOS','GABRIEL RODRIGUES SANTOS','32124578','gabriel_rodriguesantos@hotmail.com','',12,0),
 (349,'HELDEN VASCONCELOS MARTINS','HELDEN VASCONCELOS MARTINS','32273058','helden_vascon@hotmail.com','',12,0),
 (350,'HELIANA COSTA POMPEU','HELIANA COSTA POMPEU','82930589','helianapompeu@hotmail.com','',12,0);
INSERT INTO `cracha`.`inscrito` VALUES  (351,'JENIFFER REIS BRASIL','JENIFFER REIS BRASIL','83125447/32874870','brasiljeniffer@yahoo.com.br','',12,0),
 (352,'JOANA CAROLINE XISTO BARBOSA','JOANA CAROLINE XISTO BARBOSA','83430270','joanacaroline-@hotmail.com','',12,0),
 (353,'JOÃO MARCOS MACEDO SALOMÃO','JOÃO MARCOS MACEDO SALOMÃO','83543820','joaomarcos_caufra@hotmail.com','',12,0),
 (354,'JORGE MARCOS PENICHE BARBOSA','JORGE MARCOS PENICHE BARBOSA','89259987','jorgemarcosufra@gmail.com','',12,0),
 (355,'LEONARDO DA COSTA CARRÉRA','LEONARDO DA COSTA CARRÉRA','81063964','leleo.carrera@gmail.com','',12,0),
 (356,'LEONILTON RODRIGUES BARBOSA DA SILVA','LEONILTON RODRIGUES BARBOSA DA SILVA','82806553','leobarbosa_s@hotmail.com','',12,0),
 (357,'LUAN FREITAS ROCHA','LUAN FREITAS ROCHA','83565290','luanrochafreitas@hotmail.com','',12,0),
 (358,'LUANA PINHEIRO MACEDO','LUANA PINHEIRO MACEDO','82901446/91071219','luanamacedinho@gmail.com','',12,0),
 (359,'LUCAS SILVA DE SOUZA','LUCAS SILVA DE SOUZA','81431402','lucas.ssouza@live.com','',12,0),
 (360,'MARCUS VINICIUS DE CARAVALHO PALHETA','MARCUS VINICIUS DE CARAVALHO PALHETA','99333433','marcus.palheta@yahoo.com.br','',12,0);
INSERT INTO `cracha`.`inscrito` VALUES  (361,'MARIA DO SOCORRO BEZERRA','MARIA DO SOCORRO BEZERRA','83433175','mariabserrita@gmail.com','',12,0),
 (362,'MARIÉLY DE LIMA ATAÍDE','MARIÉLY DE LIMA ATAÍDE','81700739/91514819','marielyataide@hotmail.com','',12,0),
 (363,'MATHEUS PEREIRA FURTADO','MATHEUS PEREIRA FURTADO','80160334','matheus_p_furtado@hotmail.com','',12,0),
 (364,'NATALLY SAID DE LIMA','NATALLY SAID DE LIMA','32360587','natallysaid@hotmail.com','',12,0),
 (365,'THAMIRES MENDES COELHO FERREIRA','THAMIRES MENDES COELHO FERREIRA','83022010','thamiresmendes.23@hotmail.com','',12,0),
 (366,'VICTOR MARTINS GUEDES','VICTOR MARTINS GUEDES','82559612','victorguedes@yahoo.com.br','',12,0),
 (367,'WARISSON RAMON SOUSA DA SILVA','WARISSON RAMON SOUSA DA SILVA','80867918','ramon-silva-18@hotmail.com','',12,0),
 (368,'WELERSON BRAZ RAMIRES SOUSA','WELERSON BRAZ RAMIRES SOUSA','32271530','lecapdc@hotmail.com','',12,0),
 (369,'WILLEN ANDREY DA SILVA COSTA','WILLEN ANDREY DA SILVA COSTA','81510760','will_s_mit@hotmail.com','',12,0),
 (370,'ALEXANDRE BARRA MARTINS','ALEXANDRE BARRA MARTINS','32341646','alexandre.barra@outlook.com','',13,0);
INSERT INTO `cracha`.`inscrito` VALUES  (371,'EZILENA DIAS PANTOJA','EZILENA DIAS PANTOJA','93557741','ezilenapantoja@hotmail.com','',13,0),
 (372,'FLAVIA CATARINA MONTEIRO SILVA','FLAVIA CATARINA MONTEIRO SILVA','82553751/32344315','flavia_monteiro2@hotmail.com','',13,0),
 (373,'JULLYA ROSA AFFONSO SANTOS DOS SANTO','JULLYA ROSA AFFONSO SANTOS DOS SANTO','82515323','jullyasantos25@hotmail.com','',13,0),
 (374,'LAIANE MONTEIRO PENHA','LAIANE MONTEIRO PENHA','32353185/88524122','laiane.penha@gmail.com','',13,0),
 (375,'LUANA DE NAZARE DOS ANJOS AIRES','LUANA DE NAZARE DOS ANJOS AIRES','83229676','luanagroufpa@gmail.com','',13,0),
 (376,'MARIA DEDIANE BARROS DE SOUSA','MARIA DEDIANE BARROS DE SOUSA','83861486','dd.sousa.17@hotmail.com','',13,0),
 (377,'MARISABEL SILVA DE PAULA','MARISABEL SILVA DE PAULA','30881088/88755312/83200906','paulamarisabel@hotmail.com','',13,0),
 (378,'WENDELL ALISSON FELIX DE SOUZA','WENDELL ALISSON FELIX DE SOUZA','82122214','wendell_felix@live.com','',13,0),
 (379,'ADRIANA FERREIRA MONTEIRO','ADRIANA FERREIRA MONTEIRO','82306748','monteiro.ferreira_adriana@hotmail.com','',14,0);
INSERT INTO `cracha`.`inscrito` VALUES  (380,'ALEXANDRE VILHENA DA SILVA NETO','ALEXANDRE VILHENA DA SILVA NETO','81932226','alexandre.neto94@hotmail.com','',14,0),
 (381,'ALINNE SANTOS DA SILVA','ALINNE SANTOS DA SILVA','80986892','alinnewood@gmail.com','',14,0),
 (382,'AMANDA THAÍS TEIXEIRA CARRERA','AMANDA THAÍS TEIXEIRA CARRERA','83789235','amanda_carrera.ufra@yahoo.com.br','',14,0),
 (383,'ANA CAROLINA CAVALCANTE JUCÁ','ANA CAROLINA CAVALCANTE JUCÁ','82892213','carolinajuca2009@hotmail.com','',14,0),
 (384,'ANA CAROLINA SANTA ROSA DE SOUSA','ANA CAROLINA SANTA ROSA DE SOUSA','88136518','anacarolina_srsousa@yahoo.com.br','',14,0),
 (385,'ANA PAULA FREIRES DE SOUSA','ANA PAULA FREIRES DE SOUSA','83619632','paulazootpa@hotmail.com','',14,0),
 (386,'ANANDA MAIRA FERREIRA DO NASCIMENTO','ANANDA MAIRA FERREIRA DO NASCIMENTO','81510741/88460860','anada-maira@hotmail.com','',14,0),
 (387,'ANTONIO JUSCELINO DE SOUZA MELO','ANTONIO JUSCELINO DE SOUZA MELO','82838816','ajm1818@hotmail.com','',14,0),
 (388,'DANNIELE DO CARMO GOMES','DANNIELE DO CARMO GOMES','88675463','dannielecarmo@hotmail.com','',14,0);
INSERT INTO `cracha`.`inscrito` VALUES  (389,'DRIELLY DE FÁTIMA SANCHES DA SILVA','DRIELLY DE FÁTIMA SANCHES DA SILVA','80873385','drielly.sanches@hotmail.com','',14,0),
 (390,'EIKY TATSUYA ISHIKAWA DE MORAES','EIKY TATSUYA ISHIKAWA DE MORAES','81806452','cihyg2_77@hotmail.com','',14,0),
 (391,'FRANKLEN DOS SANTOS CORDOVIL','FRANKLEN DOS SANTOS CORDOVIL','83510718','franks.cord@yahoo.com.br','',14,0),
 (392,'ISMAEL RAMALHO DA COSTA SOARES','ISMAEL RAMALHO DA COSTA SOARES','81700247','ismaelres18@yahoo.com.br','',14,0),
 (393,'JEFFERSON DA SILVA FEITOSA REIS ','JEFFERSON DA SILVA FEITOSA REIS ','91536657','jefferson_241191@hotmail.com','',14,0),
 (394,'JHULIA MELO NÓBREGA','JHULIA MELO NÓBREGA','35216994/82025475','jhulia-melo@hotmail.com','',14,0),
 (395,'JOSIANE CELERINO DE CARVALHO','JOSIANE CELERINO DE CARVALHO','91076179','josiane.celerino@hotmail.com','',14,0),
 (396,'KELLY CHRISTINA ALVES BEZERRA','KELLY CHRISTINA ALVES BEZERRA','81342785','k_kelly15@hotmail.com','',14,0),
 (397,'LAIS SANTOS MACIEL ','LAIS SANTOS MACIEL ','32572718/80874881','lais_ifpa@hotmail.com','',14,0),
 (398,'LARISSA MARIA FERREIRA CAMPOS FARIA','LARISSA MARIA FERREIRA CAMPOS FARIA','91948337','lucyanne_reis@hotmail.com','',14,0);
INSERT INTO `cracha`.`inscrito` VALUES  (399,'LEANDRO PAULO MONTEIRO MACEDO','LEANDRO PAULO MONTEIRO MACEDO','81858565','leandroiechuda@yahoo.com.br','',14,0),
 (400,'LUIZ RODOLFO REIS COSTA','LUIZ RODOLFO REIS COSTA','32651159/82132321','luis_rodolfo18@hotmail.com','',14,0),
 (401,'MARIA GABRIELLA DE SILVA ARAÚJO','MARIA GABRIELLA DE SILVA ARAÚJO','82193459','ma.gabriella_araujo@live.com','',14,0),
 (402,'MARIANA BARBARA CRUZ DE ARAGÃO','MARIANA BARBARA CRUZ DE ARAGÃO','81267835','maribc.aragao@gmail.com','',14,0),
 (403,'MAYDSON LUIS OLIVEIRA DO NASCIMENTO','MAYDSON LUIS OLIVEIRA DO NASCIMENTO','','mleyber@hotmail.com','',14,0),
 (404,'NATÁLIA DE SOUZA MENDES','NATÁLIA DE SOUZA MENDES','88641392','nataliamendes13@hotmail.com','',14,0),
 (405,'SANDRA VALÉRIA DIAS CARDOSO','SANDRA VALÉRIA DIAS CARDOSO','32227934','sandravaleria_cardoso@hotmail.com','',14,0),
 (406,'THAYZA ALMEIDA DA SILVA','THAYZA ALMEIDA DA SILVA','82394024','thayza-almeida@hotmail.com','',14,0),
 (407,'VIVIAN KELLY GOMES DA ROCHA','VIVIAN KELLY GOMES DA ROCHA','81809375','vivianohlh@yahoo.com.br','',14,0),
 (408,'WANESSA LISANDRA DE AMORIM E SOUSA','WANESSA LISANDRA DE AMORIM E SOUSA','81661472','wanessaliam@hotmail.com','',14,0);
INSERT INTO `cracha`.`inscrito` VALUES  (409,'AMANDA PINHEIRO FORTALEZA','AMANDA PINHEIRO FORTALEZA','81367633','amanda.fortaleza@hotmail.com','',14,0),
 (410,'JOSÉ JAIME PESSOA DO NASCIMENTO FILHO','JOSÉ JAIME PESSOA DO NASCIMENTO FILHO','80113366','jaime-linux@hotmail.com','',14,0),
 (411,'MARIA EDIMARA LIMA DA SILVA','MARIA EDIMARA LIMA DA SILVA','88114785','edimara_lima2011@hotmail.com','',14,0),
 (412,'THIARA PEREIRA BARBOSA','THIARA PEREIRA BARBOSA','83808665','thiara_barbosa@hotmail.com','',14,0),
 (413,'MARIO MORAES OLIVEIRA NETO','MARIO MORAES OLIVEIRA NETO','80208576','neto18oliveira@hotmail.com','',14,0),
 (414,'MARÍLIA DE SOUZA PANTOJA','MARÍLIA DE SOUZA PANTOJA','','marilpantoja@hotmail.com','',14,0),
 (415,'NATASHA DE JESUS SOUZA','NATASHA DE JESUS SOUZA','','natashacorinthiana@hotmail.com','',14,0),
 (416,'DAVID DOS REIS DA SILVA JUNIOR','DAVID DOS REIS DA SILVA JUNIOR','','davidreis.cunha@hotmail.com','',14,0),
 (417,'ALDRY LORRAN DA SILVA E SOUZA','ALDRY LORRAN DA SILVA E SOUZA','80875306','aldrylorrans.s@hotmail.com','',15,0),
 (418,'ANA VIRGILIA PEREIRA DO VALE','ANA VIRGILIA PEREIRA DO VALE','81706173','anitabenaion@hotmail.com','',15,0);
INSERT INTO `cracha`.`inscrito` VALUES  (419,'BRUNO DA COSTA LISBOA','BRUNO DA COSTA LISBOA','32536029','bbruno_costa@hotmail.com','',15,0),
 (420,'CARLOS ROMILDO SANTOS DE SOUSA','CARLOS ROMILDO SANTOS DE SOUSA','80413080','carlos_23sousa@hotmail.com','',15,0),
 (421,'CIBELLE SOUZA SIQUEIRA','CIBELLE SOUZA SIQUEIRA','32664239','bellesouuza@hotmail.com','',15,0),
 (422,'CLARISSA ARAUJO DA PAZ','CLARISSA ARAUJO DA PAZ','81779341','llari_paz@hotmail.com','',15,0),
 (423,'CRISTIANY NONATO DA SILVA','CRISTIANY NONATO DA SILVA','','cristianyzootec@yahoo.com.br','',15,0),
 (424,'ELIDETH PACHECO MONTEIRO','ELIDETH PACHECO MONTEIRO','83260802','elidethpacheco@hotmail.com','',15,0),
 (425,'EVELIZE CRISTINA RODRIGUES','EVELIZE CRISTINA RODRIGUES','32538295','evelizerodrigues@yahoo.com.br','',15,0),
 (426,'FRANCISCA BRENDA ARAÚJO DA SILVA','FRANCISCA BRENDA ARAÚJO DA SILVA','80518236','brendamotaand@gmail.com','',15,0),
 (427,'GABRIEL SILVEIRA BRAZÃO E SILVA','GABRIEL SILVEIRA BRAZÃO E SILVA','82297841','bielbrazao@hotmail.com','',15,0),
 (428,'GABRIEL VITORINO CAROUSO','GABRIEL VITORINO CAROUSO','32485336','gabrielviturino77@hotmail.com','',15,0);
INSERT INTO `cracha`.`inscrito` VALUES  (429,'HELOISA MARTINS VALENTE','HELOISA MARTINS VALENTE','32273058','heloisa_valente@hotmail.com','',15,0),
 (430,'IAGO CONCEIÇÃO RODRIGUES','IAGO CONCEIÇÃO RODRIGUES','32333181','r.iagorodrigues@yahoo.com','',15,0),
 (431,'JULIANNA FARIAS SOUSA DOS REIS','JULIANNA FARIAS SOUSA DOS REIS','80156366','reis_julianna@yahoo.com.br','',15,0),
 (432,'KAROLINE BRASIL COIMBRA','KAROLINE BRASIL COIMBRA','83479110','karoline.coimbra@mail.com','',15,0),
 (433,'KAROLINE DIECKMANN BRITO','KAROLINE DIECKMANN BRITO','32498386','dieckmann-@live.com','',15,0),
 (434,'KEDMA SOUSA LOPES','KEDMA SOUSA LOPES','81768087','carganato78@hotmail.com','',15,0),
 (435,'KLEBER GAMA OLIVEIRA','KLEBER GAMA OLIVEIRA','83646761','kleber1108@hotmail.com','',15,0),
 (436,'LEANDRO GAMA PACHECO','LEANDRO GAMA PACHECO','83384990','landropacheco@gmail.com','',15,0),
 (437,'LUAN GARCIA CASTELO','LUAN GARCIA CASTELO','82424086','casteloluan@gmail.com','',15,0),
 (438,'LUCAS BRASIL DUARTE','LUCAS BRASIL DUARTE','83090098','duarte.brasil@hotmail.com','',15,0),
 (439,'LUCIANE MARÇAL OLIVEIRA','LUCIANE MARÇAL OLIVEIRA','32640254','luciane01@hotmail.com','',15,0);
INSERT INTO `cracha`.`inscrito` VALUES  (440,'MARA RÚBIA FERREIRA BARROS','MARA RÚBIA FERREIRA BARROS','82933960','mrfbmjj@hotmail.com','',15,0),
 (441,'MARCOS SANTIAGO DA COSTA','MARCOS SANTIAGO DA COSTA','88526970','macxymus15@hotmail.com','',15,0),
 (442,'MATHEUS GUEDES SOUZA','MATHEUS GUEDES SOUZA','32338217','m.souzasz@hotmail.com','',15,0),
 (443,'MAYKON DANILO MONTEIRO PALHETA','MAYKON DANILO MONTEIRO PALHETA','82562779','maykondanilo@hotmail.com','',15,0),
 (444,'NATHÁLIA JOLLY ARAÚJO SOARES','NATHÁLIA JOLLY ARAÚJO SOARES','89258783','nathaliasoares3@hotmail.com','',15,0),
 (445,'NAYARA MARQUES AZEVEDO','NAYARA MARQUES AZEVEDO','32551608','naya.azevedo@hotmail.com','',15,0),
 (446,'PAMELA SILVA DA SILVA','PAMELA SILVA DA SILVA','80436022','pamelasilva_ad@hotmail.com','',15,0),
 (447,'PAULO ALLISON COSTA DA MATA','PAULO ALLISON COSTA DA MATA','83182522','paulo.-@live.com','',15,0),
 (448,'PEDRO TRINDADE AMADOR','PEDRO TRINDADE AMADOR','88783316','pt.amador@yahoo.com','',15,0),
 (449,'RAFAEL ANAISCE DAS CHAGAS','RAFAEL ANAISCE DAS CHAGAS','82520940','rafaelanaisce@hotmail.com','',15,0);
INSERT INTO `cracha`.`inscrito` VALUES  (450,'RAFAELLE BORGES CUNHA','RAFAELLE BORGES CUNHA','32478912/81154934','rafaellebcunha@hotmail.com','',15,0),
 (451,'RAISSA DE CASSIA PINHEIRO RIBEIRO','RAISSA DE CASSIA PINHEIRO RIBEIRO','83479110','raika.annie@yahoo.com','',15,0),
 (452,'RENAN DE ARAÚJO COSTA MATANGRANO','RENAN DE ARAÚJO COSTA MATANGRANO','81779304','renan_matangrano@hotmail.com','',15,0),
 (453,'RICARLA ROMILIA VIANA DOS SANTOS','RICARLA ROMILIA VIANA DOS SANTOS','83040578','ricarla-viana@hotmail.com','',15,0),
 (454,'SAMANTHA CRISTINA DA COSTA DE SOUZA','SAMANTHA CRISTINA DA COSTA DE SOUZA','83731744','sasa_souza_@hotmail.com','',15,0),
 (455,'SAMANTHA CRISTINA DA COSTA DE SOUZA','SAMANTHA CRISTINA DA COSTA DE SOUZA','83731744','sasa_souza_@hotmail.com','',15,0),
 (456,'SILVANA MEIRELES DA SILVA','SILVANA MEIRELES DA SILVA','88262618','meirelesagro@hotmail.com','',15,0),
 (457,'ANELISE DE SARGOS RAMOS','ANELISE DE SARGOS RAMOS','82920804','anelise_sarges@hotmail.com','',16,0),
 (458,'BRUNA RAFAELA FERREIRA LISBOA','BRUNA RAFAELA FERREIRA LISBOA','83762991 - 91800728','bruna.medicavet@gmail.com','',16,0);
INSERT INTO `cracha`.`inscrito` VALUES  (459,'CAMILA DE ALMEIDA COELHO','CAMILA DE ALMEIDA COELHO','82972686','camilacoelho_19@hotmail.com','',16,0),
 (460,'CARLOS CONRADO DA SILVA JUNIOR','CARLOS CONRADO DA SILVA JUNIOR','32380296','krock.conrado@gmail.com','',16,0),
 (461,'FERNANDO KELSEN ARAUJO FRANÇA','FERNANDO KELSEN ARAUJO FRANÇA','82325774','kelsen.fernando@me.com','',16,0),
 (462,'GABRIEL SOUSA FURTADO DA SILVA','GABRIEL SOUSA FURTADO DA SILVA','81429526','furtado-gabriel@hotmail.com','',16,0),
 (463,'HELEN KAMILE DE OLIVEIRA CHAVES','HELEN KAMILE DE OLIVEIRA CHAVES','32226414','helen_kamilinha@hotmail.com','',16,0),
 (464,'JOSÉ RICARDO NASCIMENTO DE SOUZA NETO','JOSÉ RICARDO NASCIMENTO DE SOUZA NETO','81661782','ricardo-souza253@hotmail.com','',16,0),
 (465,'LAILA CRISTINA DE SOUZA SIQUEIRA DA ROCHA','LAILA CRISTINA DE SOUZA SIQUEIRA DA ROCHA','81420602','laila-siqueira@hotmail.com','',16,0),
 (466,'LUCIANO COROA DE CASTRO','LUCIANO COROA DE CASTRO','83910531','lucianocoroa@yahoo.com.br','',16,0),
 (467,'NATASHA PALHETA BORGES','NATASHA PALHETA BORGES','32640322','sango-cham@hotmail.com','',16,0);
INSERT INTO `cracha`.`inscrito` VALUES  (468,'NATHALIA CLEMENTE BARRETO','NATHALIA CLEMENTE BARRETO','83593568','nathaliaclementebarreto@yahoo.com.br','',16,0),
 (469,'RAPHAEL CASTRO CONDE','RAPHAEL CASTRO CONDE','91641932','raphaelconde1@yahoo.com.br','',16,0),
 (470,'RAYSA PALHETA BORGES','RAYSA PALHETA BORGES','32640322/81420308','borges_rayssa@yahoo.com','',16,0),
 (471,'RODRIGO DOS SANTOS ALBUQUERQUE','RODRIGO DOS SANTOS ALBUQUERQUE','81139295','rdsa20@gmail.com','',16,0),
 (472,' FERNANDA MONIK SILVA MARTINS',' FERNANDA MONIK SILVA MARTINS','83214680','nanda_monik@hotmail.com','',17,0),
 (473,'ELIENE DE SOUZA ARAUJO','ELIENE DE SOUZA ARAUJO','81256870','eliene.araujo@mail.com','',17,0),
 (474,'HARAN DOS ANJOS MARTINS','HARAN DOS ANJOS MARTINS','','haranmartins.tj@hotmail.com','',17,0),
 (475,'VICTOR DA COSTA MILEO','VICTOR DA COSTA MILEO','80943502','victor.mileo@hotmail.com','',17,0),
 (476,'ANA CAROLINE PESSOA MORAES','ANA CAROLINE PESSOA MORAES','83587088/96117280','carolinevet19@hotmail.com','',17,0),
 (477,'VICTÓRIA DE LIMA SALZER','VICTÓRIA DE LIMA SALZER','80254500','victoriasalzer-@hotmail.com','',17,0);
INSERT INTO `cracha`.`inscrito` VALUES  (478,'MARCELLA PINHEIRO SOUTO','MARCELLA PINHEIRO SOUTO','83689796','nmarcella.souto@hotmail.com','',17,0),
 (479,'SIMONE MARQUES DA SILVA','SIMONE MARQUES DA SILVA','88821390','simonemarques27@bol.com.br','',17,0),
 (480,'JORGE DOS SANTOS RAPOSO JÚNIOR','JORGE DOS SANTOS RAPOSO JÚNIOR','81306848','jorge_raposo1987@hotmail.com','',17,0),
 (481,'MIGUEL COUTINHO DE AGUIAR NETO','MIGUEL COUTINHO DE AGUIAR NETO','82924748','miguel_neto14@hotmail.com','',17,0),
 (482,'PAULA CRISTINA MENDES NOGUEIRA MARQUES','PAULA CRISTINA MENDES NOGUEIRA MARQUES','81471026','paula_marques@hotmail.com','',17,0),
 (483,'EVELIN MARIA BRELAZ DUARTE','EVELIN MARIA BRELAZ DUARTE','89243414','evelinb.duarte@hotmail.com','',17,0),
 (484,'ELIANE NASCIMENTO DOS SANTOS','ELIANE NASCIMENTO DOS SANTOS','81075104/91009996','helianenascimento2010@gmail.com','',17,0),
 (485,'MAYARA PRISCILA LIMA DE ARAUJO','MAYARA PRISCILA LIMA DE ARAUJO','84222297','may_priscila10@hotmail.com','',17,0),
 (486,'ALINE DA ROSA LOPES','ALINE DA ROSA LOPES','82277399','alinnelopes.l@hotmail.com','',18,0);
INSERT INTO `cracha`.`inscrito` VALUES  (487,'ANA CAROLINA DE SOUZA MELO','ANA CAROLINA DE SOUZA MELO','84770303','caahmelo@gmail.com','',18,0),
 (488,'ANA FLÁVIA FONSECA DE QUEIROZ','ANA FLÁVIA FONSECA DE QUEIROZ','88477473','flaviaqueiroz2010@hotmail.com','',18,0),
 (489,'ANNA BEATRIZ SILVA DE PAULA','ANNA BEATRIZ SILVA DE PAULA','83037805','beatrizdp20@gmail.com','',18,0),
 (490,'BRUNO HENRIQUE DEL CASTILLO PIMENTEL','BRUNO HENRIQUE DEL CASTILLO PIMENTEL','81411025','bruno_hdça@hotmail.com','',18,0),
 (491,'CARMEN GRASIELA DIAS MARTINS','CARMEN GRASIELA DIAS MARTINS','87131773','grasiela_kiss@hotmail.com','',18,0),
 (492,'CARMEN SILVIA PANTOJA PEREIRA','CARMEN SILVIA PANTOJA PEREIRA','83526283','carmenspantoja@gmail.com','',18,0),
 (493,'DENILSON DO NASCIMENTO REIS','DENILSON DO NASCIMENTO REIS','81671801','denilson_juniord@hotmail.com','',18,0),
 (494,'ERICA FLÁVIA SILVA AZEVEDO','ERICA FLÁVIA SILVA AZEVEDO','82351130/82485355','ericaflaviaazevedo@hotmail.com','',18,0),
 (495,'ERIKA VANESSA COSTA LIMA','ERIKA VANESSA COSTA LIMA','32796628','vanessa.limali@hotmail.com','',18,0),
 (496,'FABIO SAMY OLIVEIRA DE SOUSA','FABIO SAMY OLIVEIRA DE SOUSA','83099439','fabio_mtd@hotmail.com','',18,0);
INSERT INTO `cracha`.`inscrito` VALUES  (497,'GABRIEL SAMPAIO DOS SANTOS','GABRIEL SAMPAIO DOS SANTOS','83329097','gaelsampaio@hotmail.com','',18,0),
 (498,'HANDYELLE DE SOUSA BORGES','HANDYELLE DE SOUSA BORGES','82355351','handyelle@gmail.com','',18,0),
 (499,'HELDER RODRIGO DOS SANTOS LEMOS','HELDER RODRIGO DOS SANTOS LEMOS','83657913','lemoos_@rock.com','',18,0),
 (500,'INGRID RAISA ARAÚJO ATAÍDE','INGRID RAISA ARAÚJO ATAÍDE','3744-1363','ingridraisa@bol.com.br','',18,0),
 (501,'JAMILLY LORENA FERREIRA MONTEIRO','JAMILLY LORENA FERREIRA MONTEIRO','81555457/99771826','jamillymonteiro@gmail.com','',18,0),
 (502,'JERLAN AFONSO DA COSTA BARROS','JERLAN AFONSO DA COSTA BARROS','32267551','jerlan_barros@yahoo.com.br','',18,0),
 (503,'KARINA FERREIRA SILVEIRA','KARINA FERREIRA SILVEIRA','82346434','karinafsilveira_156@hotmail.com','',18,0),
 (504,'LAYNA PEDROSO DA SILVA','LAYNA PEDROSO DA SILVA','32313578/80933769','lailaypedroso@ymail.com','',18,0),
 (505,'LAYSE BARRETO DE ALMEIDA','LAYSE BARRETO DE ALMEIDA','32274866/80517521','layse.almeida@hotmail.com','',18,0),
 (506,'LUCIANA DA SILVA SIQUEIRA','LUCIANA DA SILVA SIQUEIRA','81729674','luci_9iq@yahoo.com.br','',18,0);
INSERT INTO `cracha`.`inscrito` VALUES  (507,'MARCELO FLÁVIO MORAES DA SILVA','MARCELO FLÁVIO MORAES DA SILVA','82727771','marceloflavioufra@gmail.com','',18,0),
 (508,'MARIANA NILMA MENESCAL DE SOUZA','MARIANA NILMA MENESCAL DE SOUZA','82565158','marianamenescal.mm@gmail.com','',18,0),
 (509,'MARINA PRATAGY ESTRELA PINTO','MARINA PRATAGY ESTRELA PINTO','81913248','marinapratagy15@hotmail.com','',18,0),
 (510,'PATRICIA GRELO DO ROSARIO','PATRICIA GRELO DO ROSARIO','84473646','patriciagrelo@gmail.com','',18,0),
 (511,'PRISCILA AMORIM ARAÚJO','PRISCILA AMORIM ARAÚJO','81242333','priscilaufra@gmail.com','',18,0),
 (512,'SAMANTHA SILVA DA SILVA','SAMANTHA SILVA DA SILVA','81022775','smthsilva17@gmail.com','',18,0),
 (513,'SANDY KELLY SOUZA MARQUES DA SILVA','SANDY KELLY SOUZA MARQUES DA SILVA','80326632','kelly_hamisten@hotmail.com','',18,0),
 (514,'SUELEN CHUCRE ELIAS','SUELEN CHUCRE ELIAS','87280975','suchucre@gmail.com','',18,0),
 (515,'THAIS DE SOUZA LIMA','THAIS DE SOUZA LIMA','32337356 - 81122858','thaisdesouzalima@hotmail.com','',18,0),
 (516,'ADSON SOUSA SANTOS','ADSON SOUSA SANTOS','82433369','tetline.tell@gmail.com','',19,0);
INSERT INTO `cracha`.`inscrito` VALUES  (517,'ANTÔNIO WELLINGTON COSTA BESSA','ANTÔNIO WELLINGTON COSTA BESSA','32632111/91117850','wellingtonbess@hotmail.com','',19,0),
 (518,'BIANCA RAFAELA COSTA SILVA','BIANCA RAFAELA COSTA SILVA','88220429','rafaelaufra2012@hotmail.com','',19,0),
 (519,'BRENDA KELLY VIANA LEITE','BRENDA KELLY VIANA LEITE','83668149','brendavleite@hotmail.com','',19,0),
 (520,'BRUNO ALVES DOS SANTOS','BRUNO ALVES DOS SANTOS','91922186','brun0_14@hotmail.com','',19,0),
 (521,'DIEGO VIANA VASCONCELOS','DIEGO VIANA VASCONCELOS','82777734','diegoagrobufalo@gmail.com','',19,0),
 (522,'ELIABE SILVA DO CARMO','ELIABE SILVA DO CARMO','83554054','eliabe.gab@hotmail.com','',19,0),
 (523,'ERIKA DAYANE DE OLIVEIRA SILVA','ERIKA DAYANE DE OLIVEIRA SILVA','81931044','erikadayane@live.com','',19,0),
 (524,'FABRÍCIO DOS PASSOS DA SILVA','FABRÍCIO DOS PASSOS DA SILVA','81982908','fabriciopassos85@outlook.com','',19,0),
 (525,'GLENDA MARTINS LEITE','GLENDA MARTINS LEITE','91414979','grendamartins@yahoo.com.br','',19,0),
 (526,'INGRID MAGNO DA SILVA','INGRID MAGNO DA SILVA','87521755 - 81187817','ingridmaagno@hotmail.com','',19,0);
INSERT INTO `cracha`.`inscrito` VALUES  (527,'IVAN MARQUES ALHO','IVAN MARQUES ALHO','84958017','ivanalho@hotmail.com','',19,0),
 (528,'KILVYA SUELEM DE SOUSA OLIVEIRA','KILVYA SUELEM DE SOUSA OLIVEIRA','84168617/81745437','kilvya_ufra2012@hotmail.com','',19,0),
 (529,'LAYLA LAYS FEITOSA OLIVEIRA','LAYLA LAYS FEITOSA OLIVEIRA','81816198','laylalays@hotmail.com','',19,0),
 (530,'LORENA KEYSE NERY DA SILVA','LORENA KEYSE NERY DA SILVA','81915656','lorena_keyse@hotmail.com','',19,0),
 (531,'LORYENE BOTELHO DOS SANTOS','LORYENE BOTELHO DOS SANTOS','82482300','loryene1@hotmail.com','',19,0),
 (532,'LUANA LIMA DE SOUZA','LUANA LIMA DE SOUZA','80974276','luanals18@hotmail.com','',19,0),
 (533,'MILANA CARLA DOS SANTOS MENDES','MILANA CARLA DOS SANTOS MENDES','81798544','mcdsm_@hotmail.com','',19,0),
 (534,'MYLA INÊS RODRIGUES MIRANDA','MYLA INÊS RODRIGUES MIRANDA','82161908','myla.miranda@gmail.com','',19,0),
 (535,'NATALIA RIBEIRO SANTOS','NATALIA RIBEIRO SANTOS','81707167','nathy_perfect1000@hotmail.com','',19,0),
 (536,'PAULA CRISTIANE TRINDADE','PAULA CRISTIANE TRINDADE','32685136/82493778','paulatrindade@live.com','',19,0);
INSERT INTO `cracha`.`inscrito` VALUES  (537,'PAULA GABRIELA COSTA RODRIGUES','PAULA GABRIELA COSTA RODRIGUES','80876329','paula_rodrigues3@yahoo.com','',19,0),
 (538,'RAFAEL ALVES RAIOL','RAFAEL ALVES RAIOL','81043017','rafael.ufra2012@hotmail.com','',19,0),
 (539,'RAFAELLE CASSEB GUIMARÃES','RAFAELLE CASSEB GUIMARÃES','82910618','rafaellecasseb@gmail.com','',19,0),
 (540,'RAISSA CRISTINA VILLAR SAMPAIO','RAISSA CRISTINA VILLAR SAMPAIO','81326543','raissavsampaio2302@gmail.com','',19,0),
 (541,'ROSANA INGRID RIBEIRO DOS SANTOS','ROSANA INGRID RIBEIRO DOS SANTOS','81564955','rosanaingridribeiro@gmail.com','',19,0),
 (542,'THAIANE ALISON DA SILVA MORAIS','THAIANE ALISON DA SILVA MORAIS','81000020','tata_alimoraes@hotmail.com','',19,0),
 (543,'VALERIA PRISCILA PINTO DE ALMEIDA','VALERIA PRISCILA PINTO DE ALMEIDA','32584826','valeria_pri15@hotmail.com','',19,0),
 (544,'VANESSA DE CÁSSIA SOARES DE SOUSA','VANESSA DE CÁSSIA SOARES DE SOUSA','83656915','vanessa.kassio012@hotmail.com','',19,0),
 (545,'VINICIUS MASALA AMARAL','VINICIUS MASALA AMARAL','80926787','vinicius_masala@hotmail.com','',19,0);
INSERT INTO `cracha`.`inscrito` VALUES  (546,'IZABELE CRISTINA SANTOS COSTA','IZABELE CRISTINA SANTOS COSTA','82481416','izabele-costa1@hotmail.com','',19,0),
 (547,'CLEYTON JOSÉ DA SILVA MONTEIRO','CLEYTON JOSÉ DA SILVA MONTEIRO','83015556','c.monteiro0111@gmail.com','',19,0),
 (548,'JOYCE VALÉRIA SANTOS DO RESÁRIO','JOYCE VALÉRIA SANTOS DO RESÁRIO','80550999','joyce-jv1@hotmail.com','',19,0),
 (549,'MARCELO E SILVA VIANA','MARCELO E SILVA VIANA','81011322','mastroyanny@hotmail.com','',19,0),
 (550,'ANA CLAÚDIA DE SOUZA NEVES','ANA CLAÚDIA DE SOUZA NEVES','32574846','acn.bel@ig.com.br','',19,0),
 (551,'ELISANE AVELAR DO NASCIMENTO','ELISANE AVELAR DO NASCIMENTO','81411180','elisanips@hotmail.com','',19,0),
 (552,'FERNANDA RODRIGUES BARBOSA','FERNANDA RODRIGUES BARBOSA','81617944','fernanda-rodrigues1991@hotmail.com','',19,0),
 (553,'GABRIELA MOURÃO DE ALMEIDA','GABRIELA MOURÃO DE ALMEIDA','99963557','gabrielamouraodealmeida@gmail.com','',19,0),
 (554,'MARILIA LEÃO DA COSTA','MARILIA LEÃO DA COSTA','81264747','bmleao@yahoo.com.br','',19,0),
 (555,'ADRIANO PEREIRA LEÃO','ADRIANO PEREIRA LEÃO','80332373','adrianopereiraleao@hotmail.com','',20,0);
INSERT INTO `cracha`.`inscrito` VALUES  (556,'AMANDA CAROLINY MARQUES DE QUEIROZ','AMANDA CAROLINY MARQUES DE QUEIROZ','80695457','servicemeio@hotmail.com','',20,0),
 (557,'BEATRIZ  GUERREIRO GIESE','BEATRIZ  GUERREIRO GIESE','83894929','beatriz_guse@hotmail.com','',20,0),
 (558,'CAMILA MACIEL TORRES','CAMILA MACIEL TORRES','81913081','camilatorres.agro@hotmail.com','',20,0),
 (559,'CARLA THAÍS FELIPE DA SILVEIRA','CARLA THAÍS FELIPE DA SILVEIRA','80160305','carlathais.agro@gmail.com','',20,0),
 (560,'DANIELA REGINA COSTA E SILVA','DANIELA REGINA COSTA E SILVA','82600974','daniela.silva@mail.com','',20,0),
 (561,'DÉBORA THAÍS  DE SOUZA RAIOL','DÉBORA THAÍS  DE SOUZA RAIOL','88029422','debora_raiou@hotmail.com','',20,0),
 (562,'FELIPE DA COSTA CORRÊA','FELIPE DA COSTA CORRÊA','81521765','f_elipe.correa@yahoo.com.br','',20,0),
 (563,'GIOVANI DA SILVA OLIVEIRA','GIOVANI DA SILVA OLIVEIRA','81621730','giovani_medvet@yahoo.com.br','',20,0),
 (564,'JOÃO FARIAS DA SILVA','JOÃO FARIAS DA SILVA','82637592','jjoaofsilva@hotmail.com','',20,0),
 (565,'LANA ROSA COSTA PARAENSE','LANA ROSA COSTA PARAENSE','81834033','maninhaparah_18@yahoo.com.br','',20,0);
INSERT INTO `cracha`.`inscrito` VALUES  (566,'LARISSA SANTOS DE SOUZA','LARISSA SANTOS DE SOUZA','80697548','lary.souzaah@hotmail.com','',20,0),
 (567,'LIA SOUSA ROCHA','LIA SOUSA ROCHA','81921828','lia.sousarocha@yahoo.com.br','',20,0),
 (568,'LUIZ FERNANDO SOUZA DE LIMA','LUIZ FERNANDO SOUZA DE LIMA','82984140','luizfernando.souza100@gmail.com','',20,0),
 (569,'MARCUS VINICIUS SANTA BRIGIDA CARDOSO','MARCUS VINICIUS SANTA BRIGIDA CARDOSO','82707929','marcus-vini@hotmail.com','',20,0),
 (570,'PAULA FRANCINE SIMOA RIBEIRO','PAULA FRANCINE SIMOA RIBEIRO','80986981','paula_simoa@hotmail.com','',20,0),
 (571,'REINALDO CRISTO PINHEIRO','REINALDO CRISTO PINHEIRO','80712956/84225855','reynaldocristo@gmail.com','',20,0),
 (572,'SHIRLENE SOUZA OLIVEIRA','SHIRLENE SOUZA OLIVEIRA','81216232','oliveira.shirlene2010@gmail.com','',20,0),
 (573,'TAMIRES VICTÓRIA SILVA NATIVIDADE','TAMIRES VICTÓRIA SILVA NATIVIDADE','81600318','tamiresnatividade@hotmail.com','',20,0),
 (574,'VANESSA DO LIVRAMENTO SILVA','VANESSA DO LIVRAMENTO SILVA','93005670/80103255','vanessal_avlis@hotmail.com','',20,0),
 (575,'GUSTAVO LOBATO MOTA','GUSTAVO LOBATO MOTA','32426471','gustavo_lobato18@hotmail.com','',21,0);
INSERT INTO `cracha`.`inscrito` VALUES  (576,'BRENO COSTA DE MACEDO','BRENO COSTA DE MACEDO','88384688','brenomacedo@hotmail.com','',21,0),
 (577,'ALINE LOBAO DA SILVA','ALINE LOBAO DA SILVA','81078944','aline_lobao@hotmail.com','',21,0),
 (578,'ANA CLAÚDIA ALEXANDRE DE ALBUQUERQUE','ANA CLAÚDIA ALEXANDRE DE ALBUQUERQUE','84409836','ac.alb@hotmail.com','',21,0),
 (579,'FRANCISCO DE ASSIS BATISTA JUNIOR','FRANCISCO DE ASSIS BATISTA JUNIOR','83112484','fabjr16@hotmail.com','',21,0),
 (580,'ANDREY DE SOUZA ALVES','ANDREY DE SOUZA ALVES','81776828','andrey.vet2009@gmail.com','',21,0),
 (581,'MARCIANE OLIVEIRA COELHO','MARCIANE OLIVEIRA COELHO','88954737','marcianemana@hotmail.com','',21,0),
 (582,'VALDENICE DE LOURDES CORREA PINHEIRO','VALDENICE DE LOURDES CORREA PINHEIRO','82785443/91723078','valpinheiro89@hotmail.com','',21,0),
 (583,'GABRIELA SERRÃO PINHEIRO','GABRIELA SERRÃO PINHEIRO','99025680/8210999','gaby-serrao@hotmail.com','',21,0),
 (584,'ALYSSA ISADORA DA FONSECA SAMPAIO','ALYSSA ISADORA DA FONSECA SAMPAIO','88246875','alyssa_isadora@hotmail.com','',21,0),
 (585,'ANA CLEIDE GUIMBAL DE AQUINO','ANA CLEIDE GUIMBAL DE AQUINO','32762670/83531976','anaguimbal@hotmail.com','',22,0);
INSERT INTO `cracha`.`inscrito` VALUES  (586,'BIANCA MENDONÇA FARIA','BIANCA MENDONÇA FARIA','32662103','biafaria_nick@hotmail.com','',22,0),
 (587,'CAROLINE DA SILVA PAMPLONA DE SENA','CAROLINE DA SILVA PAMPLONA DE SENA','81933471','carolinesenavet@hotmail.com','',22,0),
 (588,'GESSIANE PEREIRA DA SILVA','GESSIANE PEREIRA DA SILVA','88885393','gessyane05@hotmail.com','',22,0),
 (589,'JÉSSICA DA COSTA DA SILVA','JÉSSICA DA COSTA DA SILVA','88366968','jessica.cs10@hotmail.com','',22,0),
 (590,'JÉSSICA MORAES ALMEIDA','JÉSSICA MORAES ALMEIDA','96294627','jessicamoraesalmeida@gmail.com','',22,0),
 (591,'JÉSSICA TAINÁ SILVA DE FARIAS','JÉSSICA TAINÁ SILVA DE FARIAS','82852970','jessytaina@hotmail.com','',22,0),
 (592,'JOANNE THERRIER ','JOANNE THERRIER ','81803728','joannetherrier@yahoo.com.br','',22,0),
 (593,'JOSÉ GABRIEL RIBEIRO ALVES','JOSÉ GABRIEL RIBEIRO ALVES','81419927','js_gabriell@hotmail.com','',22,0),
 (594,'JULIANA MELO RODRIGUES','JULIANA MELO RODRIGUES','32743482','rodriguesjuliana48@hotmail.com','',22,0),
 (595,'LAIS ANDRESSA SILVA DE SOUZA','LAIS ANDRESSA SILVA DE SOUZA','88165935/89177845','laisadress@yahoo.com','',22,0);
INSERT INTO `cracha`.`inscrito` VALUES  (596,'MAGNO SILVA MENDES','MAGNO SILVA MENDES','81107477','magnobendes@r7.com','',22,0),
 (597,'MAILZA VANESSA DAS CHAGAS HENRIQUES','MAILZA VANESSA DAS CHAGAS HENRIQUES','96365859','mailzavanessa@gmail.com','',22,0),
 (598,'MONALLISA ALVES PEREIRA DA CRUZ','MONALLISA ALVES PEREIRA DA CRUZ','82617160','monallisaalves@hotmail.com','',22,0),
 (599,'RAFAELA PORTAL CASTRO','RAFAELA PORTAL CASTRO','91764590','laisandress@yahoo.com.br','',22,0),
 (600,'RAISSA MELO DE SOUSA','RAISSA MELO DE SOUSA','32452569','raissamelo_rm@yahoo.com.br','',22,0),
 (601,'SHYRLEY DA CONCEIÇÃO GONÇALVES FERREIRA ARAÚJO','SHYRLEY DA CONCEIÇÃO GONÇALVES FERREIRA ARAÚJO','84847416','shyrleymedvet@yahoo.com.br','',22,0),
 (602,'FERNANDA LIMA RIBEIRO','FERNANDA LIMA RIBEIRO','82171126','nanda.fribeiro@yahoo.com.br','',22,0),
 (603,'MARINA SETTE CAMARA BENARRÓS','MARINA SETTE CAMARA BENARRÓS','81909949','marina7camara@gmail.com','',22,0),
 (604,'HELOISE KARINE ROLIM DE SOUZA','HELOISE KARINE ROLIM DE SOUZA','81421638','heloise_krs@hotmail.com','',22,0),
 (605,'NAIANNA COSTA MOREIRA','NAIANNA COSTA MOREIRA','32743269','naiannamoreira@gmail.com','',22,0);
INSERT INTO `cracha`.`inscrito` VALUES  (606,'KYLMA LORENA SALDANHA DAS CHAGAS','KYLMA LORENA SALDANHA DAS CHAGAS','32362259','kylmalorena@hotmail.com','',22,0),
 (607,'RAQUEL MELLO FERNÁNDEZ','RAQUEL MELLO FERNÁNDEZ','81115554','quel_fernandez@hotmail.com','',22,0),
 (608,'GILVANDRO DA SILVA','GILVANDRO DA SILVA','82357732','giovannyfilho@yahoo.com','',22,0),
 (609,'ADRIANA ELIZABETH CORDEIRO BARBOSA','ADRIANA ELIZABETH CORDEIRO BARBOSA','','dri.k209@hotmail.com','',22,0),
 (610,'FERNANDA LIMA RUA ','FERNANDA LIMA RUA ','32582408/88419989','nandarua@hotmail.com','',22,0),
 (611,'MAYARA GOMES DE FREITAS','MAYARA GOMES DE FREITAS','80328862','may-eny@hotmail.com','',22,0),
 (612,'ANA CARLA OLIVEIRA FERREIRA','ANA CARLA OLIVEIRA FERREIRA','32268945','anacarla.olifer@gmail.com','',22,0),
 (613,'WALBERSON DIAS DA SILVA','WALBERSON DIAS DA SILVA','83095695','dsbynho@hotmail.com','',22,0),
 (614,'BERNARD GEMAQUE IVORY','BERNARD GEMAQUE IVORY','82772419','bernardmedvet@yahoo.com.br','',22,0),
 (615,'JECILENE SANTOS COSTA','JECILENE SANTOS COSTA','83039489','jecilenecosta@ig.com.br','',22,0);
INSERT INTO `cracha`.`inscrito` VALUES  (616,'LUANNA DIENYFER PRATA VASCONCELOS','LUANNA DIENYFER PRATA VASCONCELOS','83712003','luanna.vasconcelos_vet@yahoo.com.br','',22,0),
 (617,'SARA LETÍCIA DOS SANTOS ANDRADE','SARA LETÍCIA DOS SANTOS ANDRADE','80884757','sarapopmed@hotmail.com','',22,0),
 (618,'VITOR DE SOUSA ARAUJO','VITOR DE SOUSA ARAUJO','92800020','vitorsousa911@yahoo.com.br','',22,0),
 (619,'THYAGO HABNER DE SOUZA PEREIRA','THYAGO HABNER DE SOUZA PEREIRA','82910614','thyagohabner1@hotmail.com','',22,0),
 (620,'ANNA KAROLINE TEIXEIRA DA COSTA','ANNA KAROLINE TEIXEIRA DA COSTA','81609774','karoline_tcosta@hotmail.com','',22,0),
 (621,'MARCUS VINICIUS DO ROSÁRIO NUNES','MARCUS VINICIUS','82399735','marcusrnunes@gmail.com','',23,0),
 (622,'PAULO VINICIUS CALDAS DA SILVA','PAULO VINICIUS CALDAS DA SILVA','80415475','paulo_v@hotmail.com','',23,0),
 (623,'LETÍCIA SOUZA DOS SANTOS','LETÍCIA SOUZA DOS SANTOS','80861932','leticia.santos_souza@hotmail.com','',23,0),
 (624,'ADAM DE LAVAREDA MENDES VIANA','ADAM DE LAVAREDA MENDES VIANA','82799465','adam_lavareda@hotmail.com','',23,0),
 (625,'PAULO HENRIQUE DE SOUZA SAVINO FILHO','PAULO HENRIQUE DE SOUZA SAVINO FILHO','32384299/81252372','paulo.savino@yahoo.com.br','',23,0);
INSERT INTO `cracha`.`inscrito` VALUES  (626,'AURIMAR PEREIRA DA SILVA JUNIOR','AURIMAR PEREIRA DA SILVA JUNIOR','83017337','aurimarjunior12@hotmail.com','',23,0),
 (627,'EDGAR LINDOSO RUIZ','EDGAR LINDOSO RUIZ','81429129','edgarruizz@hotmail.com','',23,0),
 (628,'ANA CAROLINA MORAES REIS','ANA CAROLINA MORAES REIS','83435477','carolinareis18@hotmail.com','',23,0),
 (629,'MARCOS ANTONIO RIBEIRO VIANA','MARCOS ANTONIO RIBEIRO VIANA','88380414','warlakeofgod@gmail.com','',23,0),
 (630,'LARISSA JAINA DA SILVA DE OLIVEIRA','LARISSA JAINA DA SILVA DE OLIVEIRA','89457105','larissajaina@gmail.com','',23,0),
 (631,'KÁSSIO ANDRÉ RODRIGUES','KÁSSIO ANDRÉ RODRIGUES','','kassioandre@yahoo.com','',23,0),
 (632,'LEONARDO PEROTE DA SILVA','LEONARDO PEROTE DA SILVA','82640800','leonardo_perote@hotmail.com','',23,0),
 (633,'IONEYDE ALVES PALHETA','IONEYDE ALVES PALHETA','80496637/88253513','ioneide_04@hotmail.com','',23,0),
 (634,'MAIKO JORDAN NUNES DURÃES','MAIKO JORDAN NUNES DURÃES','89304810','maiko-jordan@hotmail.com','',23,0),
 (635,'CASSIO VIANA ALVES','CASSIO VIANA ALVES','82977999','cassioufra@hotmail.com','',23,0);
INSERT INTO `cracha`.`inscrito` VALUES  (636,'ADRYENE OLIVEIRA BATISTA','ADRYENE OLIVEIRA BATISTA','82099765','adryene.batista@mail.com','',24,0),
 (637,'AMANDA CAROLINA GOMES BASTOS','AMANDA CAROLINA GOMES BASTOS','82711717','amandacarolina_12@hotmail.com','',24,0),
 (638,'ANA BEATRIZ NEVES DA SILVA','ANA BEATRIZ NEVES DA SILVA','91906416','ana.beatriz.neves@hotmail.com','',24,0),
 (639,'ANA KARLA DOS SANTOS PONTES','ANA KARLA DOS SANTOS PONTES','81779327','anakarlapontes@hotmail.com','',24,0),
 (640,'ANA PAULA RIBEIRO MEDEIROS','ANA PAULA RIBEIRO MEDEIROS','82129364','paula.amedeiros@hotmail.com','',24,0),
 (641,'ANDERSON MOREIRA','ANDERSON MOREIRA','91306082','andersonmoreira125@hotmail.com','',24,0),
 (642,'APOENA ALBUQUERQUE NEIVA','APOENA ALBUQUERQUE NEIVA','83636615','apoenaneiva@gmail.com','',24,0),
 (643,'ARTHUR MARQUES LEÃO','ARTHUR MARQUES LEÃO','81077992','arthur_showdebola@hotmail.com','',24,0),
 (644,'CHRISTIAN DE OLIVEIRA VIEIRA','CHRISTIAN DE OLIVEIRA VIEIRA','83581508','cristian_alen@hotmail.com','',24,0),
 (645,'DAVI FARIAS DA SILVA','DAVI FARIAS DA SILVA','81317082','davi_farias_silva@hotmail.com','',24,0);
INSERT INTO `cracha`.`inscrito` VALUES  (646,'DIEGO NASCIMENTO SANTOS','DIEGO NASCIMENTO SANTOS','82592375','nascimentodiego14@gmail.com','',24,0),
 (647,'DRIYELLE DE NAZARE OLIVEIRA DO NASCIMENTO','DRIYELLE DE NAZARE OLIVEIRA DO NASCIMENTO','88206876','dryelleoliveira@yahoo.com','',24,0),
 (648,'HILMA CRISTINA DE SENA TAVARES','HILMA CRISTINA DE SENA TAVARES','32302175','hilmasenatavares@hotmail.com','',24,0),
 (649,'IZABELA CRISTINY VITORIA DOS SANTOS','IZABELA CRISTINY VITORIA DOS SANTOS','80180020','izabelacristiny@hotmail.com','',24,0),
 (650,'IZABELA DE NAZARE TAVARES DE SOUZA','IZABELA DE NAZARE TAVARES DE SOUZA','88566511','izabela.souz@hotmail.com','',24,0),
 (651,'JUCIENE TRINDADE AMADOR','JUCIENE TRINDADE AMADOR','83034791','tjuciene@yahoo.com.br','',24,0),
 (652,'LUCAS ARAÚJO CONEGUNDES','LUCAS ARAÚJO CONEGUNDES','82340545','davi_farias_silva@hotmail.com','',24,0),
 (653,'LUCAS FERNANDO ALVES BATISTA','LUCAS FERNANDO ALVES BATISTA','83897312','ferlucasbatista@gmail.com','',24,0),
 (654,'LUCAS TAVARES DOS SANTOS','LUCAS TAVARES DOS SANTOS','83883227','lucas_tavares.17@hotmail.com','',24,0);
INSERT INTO `cracha`.`inscrito` VALUES  (655,'MAYRA PILONI MAESTRI','MAYRA PILONI MAESTRI','81122865','mayrasmaestri@hotmail.com','',24,0),
 (656,'PAULO BRUNO PIRES GOMES TABARANÃ','PAULO BRUNO PIRES GOMES TABARANÃ','82307714','brunogomes@idoud.com','',24,0),
 (657,'PAULO EDUARDO SILVA BEZERRA','PAULO EDUARDO SILVA BEZERRA','80873692','paulo-edu.1@hotmail.com','',24,0),
 (658,'PAULO RODRIGO DA SILVA','PAULO RODRIGO DA SILVA','91149099','rodrigovieira_2007@msn.com','',24,0),
 (659,'RENATA SOUSA TENÓRIO','RENATA SOUSA TENÓRIO','81519504','renatatenorio_@hotmail.com','',24,0),
 (660,'RICHARD PINHEIRO RODRIGUES','RICHARD PINHEIRO RODRIGUES','82838407','richard.rodrigues22@hotmail.com','',24,0),
 (661,'RODRIGO SILVA DE OLIVEIRA','RODRIGO SILVA DE OLIVEIRA','81554606','rodrigo_so@hotmail.com','',24,0),
 (662,'TALISSA MICHELY BRITO DE BRITO','TALISSA MICHELY BRITO DE BRITO','81538445','talissabrito@hotmail.com','',24,0),
 (663,'TASSIA TOYOI TAKASHIMA','TASSIA TOYOI TAKASHIMA','88312916','tassiatk@hotmail.com','',24,0),
 (664,'VALDEMIR VON GROLL FERREIRA','VALDEMIR VON GROLL FERREIRA','92547810','valdemirvongroll@hotmail.com','',24,0);
INSERT INTO `cracha`.`inscrito` VALUES  (665,'WILSON LOBATO MONTEIRO','WILSON LOBATO MONTEIRO','3227-4790 - 83843463','wilsonlobatojr@hotmail.com','',24,0),
 (666,'ENDYSON COSTA DE MORAES','ENDYSON COSTA DE MORAES','81637433/32853467','endymoraes13@hotmail.com','',24,0),
 (667,'ANDREZA PEREIRA DE ALMEIDA','ANDREZA PEREIRA DE ALMEIDA','32877077/81595820','andrezaa.almeida@hotmail.com','',25,0),
 (668,'BEATRIZ FERREIRA DE CASTRO','BEATRIZ FERREIRA DE CASTRO','83665503','beatrizcastro1993@bol.com.br','',25,0),
 (669,'BIANCA PEREIRA CANTÃO','BIANCA PEREIRA CANTÃO','83167731','biancacantao-@ig.com.br','',25,0),
 (670,'CÁSSIO RAFAEL COSTA DOS SANTOS','CÁSSIO RAFAEL COSTA DOS SANTOS','83577033','rafaelsantos.18@hotmail.com','',25,0),
 (671,'DAYSEANNE OLIVEIRA DE ALENCAR','DAYSEANNE OLIVEIRA DE ALENCAR','88653182/32984982','dayse.-.anne@hotmail.com','',25,0),
 (672,'DIOGENES CARDOSO QUARESMA','DIOGENES CARDOSO QUARESMA','83154260','diogenes.quaresma84@gmail.com','',25,0),
 (673,'ELLEN GABRIELE PINTO RIBEIRO','ELLEN GABRIELE PINTO RIBEIRO','82075303','ellen-ribeiro@live.com','',25,0),
 (674,'EWERTON BRUNO NEVES GOMES','EWERTON BRUNO NEVES GOMES','83036162','ewegomes@gmail.com','',25,0);
INSERT INTO `cracha`.`inscrito` VALUES  (675,'FELIPE TEIXEIRA REZENDE','FELIPE TEIXEIRA REZENDE','82892888','felipenocastelobranco@hotmail.com','',25,0),
 (676,'GABRIELA MARQUES RODRIGUES','GABRIELA MARQUES RODRIGUES','83318176','gabrodrigues@hotmail.com','',25,0),
 (677,'GABRIELA NASCIMENTO OLIVEIRA','GABRIELA NASCIMENTO OLIVEIRA','83608862','gabih-nascimento@outlook.com','',25,0),
 (678,'GIOVANE LOPES SOARES','GIOVANE LOPES SOARES','89463312','gio_1903@hotmail.com','',25,0),
 (679,'HELDER COSTA SILVA ','HELDER COSTA SILVA ','82911023','helderflorestal@hotmail.com','',25,0),
 (680,'IACÍ DANDARA SANTOS BRASIL','IACÍ DANDARA SANTOS BRASIL','83216631','iacidandara@yahoo.com.br','',25,0),
 (681,'JANDERSON DE OLIVEIRA SILVA','JANDERSON DE OLIVEIRA SILVA','83011655/99431446','janderson_o.silva@hotmail.com','',25,0),
 (682,'JOBERTA CARDOSO PASTANA','JOBERTA CARDOSO PASTANA','32452855','jopastana@hotmail.com','',25,0),
 (683,'JONATAS DA SILVA COSTA','JONATAS DA SILVA COSTA','81432981','jonatascosta50@hotmail.com','',25,0),
 (684,'KEILA CASTRO SOUSA','KEILA CASTRO SOUSA','83003626','keila10_@hotmail.com','',25,0);
INSERT INTO `cracha`.`inscrito` VALUES  (685,'LORENA HAIDE DE SOUZA OLIVEIRA','LORENA HAIDE DE SOUZA OLIVEIRA','32229771','lorena_haide122@hotmail.com','',25,0),
 (686,'MARCELO ARAÚJO DE OLIVEIRA','MARCELO ARAÚJO DE OLIVEIRA','81804083','marcelo.c.de@hotmail.com','',25,0),
 (687,'MARIA HELENA BECKMAN BARATA','MARIA HELENA BECKMAN BARATA','91193312/21102799','helenabck@hotmail.com','',25,0),
 (688,'PAULO SERGIO TAVARES FERREIRA','PAULO SERGIO TAVARES FERREIRA','32384551','paulo.stferreira@yahoo.com.br','',25,0),
 (689,'RENATA MAYARA ANDRADE PANTOJA','RENATA MAYARA ANDRADE PANTOJA','32594420/82650386','rehpantoja@gmail.com','',25,0),
 (690,'RODRIGO COSTA PINTO','RODRIGO COSTA PINTO','80302720','rodrigocosta94@outlook.com','',25,0),
 (691,'SOFIA FRANÇA SOBRAL','SOFIA FRANÇA SOBRAL','81525051','sofiasobral28@gmail.com','',25,0),
 (692,'STEPHANE HAYARA SILVA AGUIAR','STEPHANE HAYARA SILVA AGUIAR','80299266','atephaneaguiar@yahoo.com.br','',25,0),
 (693,'THIAGO TEIXEIRA DE OLIVEIRA','THIAGO TEIXEIRA DE OLIVEIRA','81806368','thiagoufra88@yahoo.com.br','',25,0),
 (694,'VANESSA DOS SANTOS BARROS','VANESSA DOS SANTOS BARROS','83255091','vanessabarros94@hotmail.com','',25,0);
INSERT INTO `cracha`.`inscrito` VALUES  (695,'VITOR HUGO DA SILVA BATISTA','VITOR HUGO DA SILVA BATISTA','80328305','vvbatista@gmail.com','',25,0),
 (696,'VITOR MATEUS DE CARVALHO MORAIS','VITOR MATEUS DE CARVALHO MORAIS','33490778','vitormateus12@gmail.com','',25,0),
 (697,'WIULLY LUAN VALVERDE QUEIROZ','WIULLY LUAN VALVERDE QUEIROZ','82928777','wiullylvqueiroz@hotmail.com','',25,0),
 (698,'ALCYR JOSÉ PINHEIRO LESSA','ALCYR JOSÉ PINHEIRO LESSA','83060073','alcyrlessa@hotmail.com','',26,0),
 (699,'ALINE CECY ROCHA DE LIMA','ALINE CECY ROCHA DE LIMA','81773018>32350623','alinececy@yahoo.com','',26,0),
 (700,'ANAJEYSA CARVALHO DE SOUZA','ANAJEYSA CARVALHO DE SOUZA','80331763','jeysa3_2007@hotmail.com','',26,0),
 (701,'ANDRÉ AFONSO GODINHO DE ATAIDE','ANDRÉ AFONSO GODINHO DE ATAIDE','83250996','andrekdre15@hotmail.com','',26,0),
 (702,'ANDRÉ LUIS COSTA DOS SANTOS','ANDRÉ LUIS COSTA DOS SANTOS','82322124','andreluis_pgm@hotmail.com','',26,0),
 (703,'ANDREA LAIZE PUREZA SILVA','ANDREA LAIZE PUREZA SILVA','82287546','andrealaize@gmail.com','',26,0),
 (704,'ANDRESA DAMARIS DE SOUZA PINHEIRO','ANDRESA DAMARIS DE SOUZA PINHEIRO','82144293/99871115','andresadamaris@hotmail.com','',26,0);
INSERT INTO `cracha`.`inscrito` VALUES  (705,'BRUNA MAYARA SOUZA DE ARAUJO','BRUNA MAYARA SOUZA DE ARAUJO','81406775','brunas_araujo@hotmail.com','',26,0),
 (706,'CARINA DE OLIVEIRA RISUENHO','CARINA DE OLIVEIRA RISUENHO','81850960','carina-risuenho@hotmail.com','',26,0),
 (707,'CARLOS DANILO LIMA DE JESUS','CARLOS DANILO LIMA DE JESUS','83592334','carlos-daniloldj@hotmail.com','',26,0),
 (708,'DANIELLY MOREIRA RIBEIRO','DANIELLY MOREIRA RIBEIRO','80279892','danielly07mr@gmail.com','',26,0),
 (709,'EUZANYR GOMES DA SILVA','EUZANYR GOMES DA SILVA','81024226','euzanirsilva@yahoo.com.br','',26,0),
 (710,'FÁBIO PINHEIRO RIBEIRO','FÁBIO PINHEIRO RIBEIRO','91172535','fabiopr29@hotmail.com','',26,0),
 (711,'GABRIEL PORTUGAL DA COSTA','GABRIEL PORTUGAL DA COSTA','83453999','gabrielportugal_@hotmail.com','',26,0),
 (712,'HUGO RODRIGO COSTA MIRANDA','HUGO RODRIGO COSTA MIRANDA','80326335','hugorcm@hotmail.com','',26,0),
 (713,'JOÃO PAULO LIMA SILVA','JOÃO PAULO LIMA SILVA','83554660','jota-pe10@hotmail.com','',26,0),
 (714,'KAREN CRISTIANE LUZ CALÁBRIA','KAREN CRISTIANE LUZ CALÁBRIA','80517186','calabria.karen92@gmail.com','',26,0);
INSERT INTO `cracha`.`inscrito` VALUES  (715,'LUCAS LUIS MOREIRA DE OLIVEIRA','LUCAS LUIS MOREIRA DE OLIVEIRA','83240677','operacional.pa@enflora.com','',26,0),
 (716,'LUIS PAULO SOUZA DOS SANTOS','LUIS PAULO SOUZA DOS SANTOS','32854542/88598452','luispaulo35@hotmail.com','',26,0),
 (717,'MARÍLIA CASTRO BRASIL DUARTE','MARÍLIA CASTRO BRASIL DUARTE','32370460','marilia.castrobrasil@gmail.com','',26,0),
 (718,'MARLISON TAVARES ÁVILA','MARLISON TAVARES ÁVILA','80783413','marlison27@yahoo.com.br','',26,0),
 (719,'MILENA MEDEIROS DE OLIVEIRA','MILENA MEDEIROS DE OLIVEIRA','82346791','milenamedeiross@hotmail.com','',26,0),
 (720,'NATANAEL DA SILVA CORRÊA','NATANAEL DA SILVA CORRÊA','93497298','natanael.kel@hotmail.com','',26,0),
 (721,'NELSON HITOSHI HIRAMIZU','NELSON HITOSHI HIRAMIZU','92474975','nelsonhitoshi@gmail.com','',26,0),
 (722,'NEYLA THAYNÁ LIMA','NEYLA THAYNÁ LIMA','89369881','thay_liminha@hotmail.com','',26,0),
 (723,'PABLO RUAN FERREIRA DE SOUSA','PABLO RUAN FERREIRA DE SOUSA','87154304','ruanferreiro55@hotmail.com','',26,0),
 (724,'RENNAN DE CAMPOS PANTOJA','RENNAN DE CAMPOS PANTOJA','32312769','rennan_pantoja@hotmail.com','',26,0);
INSERT INTO `cracha`.`inscrito` VALUES  (725,'TALLES HENRIQUE DIAS CORECHA','TALLES HENRIQUE DIAS CORECHA','84758559','tallescorecha@hotmail.com','',26,0),
 (726,'THAIS SILVA BISPO DOS SANTOS','THAIS SILVA BISPO DOS SANTOS','81276908','thais_sbs@hotmail.com','',26,0),
 (727,'TIAGO SOUSA DE OLIVEIRA','TIAGO SOUSA DE OLIVEIRA','91267627','thyago107@hotmail.com','',26,0),
 (728,'ANA RUTH FERREIRA RAMOS','ANA RUTH FERREIRA RAMOS','80869907','anaruthfr@gmail.com','',27,0),
 (729,'ARNIELY EMENIQUE DE LIMA','ARNIELY EMENIQUE DE LIMA','91655192','arniely@hotmail.com','',27,0),
 (730,'CLÓVIS HENRIQUE NASCIMENTO DE FREITAS','CLÓVIS HENRIQUE NASCIMENTO DE FREITAS','32791893','clovishenriquenf@yahoo.com.br','',27,0),
 (731,'LUCAS OLIVEIRA ELISIÁRIO','LUCAS OLIVEIRA ELISIÁRIO','89230567','lucas.elisario@hotmail.com','',27,0),
 (732,'MADSON OLIVEIRA LIMA','MADSON OLIVEIRA LIMA','83204429','oliveira.lima18@yahoo.com.br','',27,0),
 (733,'MARCELA CRISTINA FLEXA DO AMARAL','MARCELA CRISTINA FLEXA DO AMARAL','80417709','marcy_e@hotmail.com','',27,0),
 (734,'MARCUS VICTOR LOPES RAMOS','MARCUS VICTOR LOPES RAMOS','82790897','marcusguia@yahoo.com.br','',27,0);
INSERT INTO `cracha`.`inscrito` VALUES  (735,'NICOLE RAQUEL PINTO CARDOSO','NICOLE RAQUEL PINTO CARDOSO','82321960','nicolecardoso97@hotmail.com','',27,0),
 (736,'OSIAS DO CARMO JUNIOR','OSIAS DO CARMO JUNIOR','32742537','osiasjunior22@hotmail.com','',27,0),
 (737,'RAYSSA YUKI MURAKAMI LIMA','RAYSSA YUKI MURAKAMI LIMA','83113597','rayssa.yuki@hotmail.com','',27,0),
 (738,'ANA CRISTINA VASCONCELOS LEÃO','ANA CRISTINA VASCONCELOS LEÃO','82229340','tina.cristina@hotmail.com','',27,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `inscrito` ENABLE KEYS */;


--
-- Definition of table `cracha`.`palestrante`
--

DROP TABLE IF EXISTS `cracha`.`palestrante`;
CREATE TABLE  `cracha`.`palestrante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `cracha` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `instituicao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cracha`.`palestrante`
--

/*!40000 ALTER TABLE `palestrante` DISABLE KEYS */;
LOCK TABLES `palestrante` WRITE;
INSERT INTO `cracha`.`palestrante` VALUES  (1,'Doutor','Fábio de Lima Bezerra','Prof. D.Sc. Fábio Bezerra','1','fabio.bezerra@ufra.edu.br','UFRA');
UNLOCK TABLES;
/*!40000 ALTER TABLE `palestrante` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
