SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 1;

BEGIN;
DROP DATABASE IF EXISTS `PiantaNetwork_prova`;
CREATE DATABASE `PiantaNetwork_prova`;
COMMIT;

USE `PiantaNetwork_prova`;
 
-- -------------------------------
--  Table structure for `LUCE`
-- -------------------------------

DROP TABLE IF EXISTS `LUCE`;
CREATE TABLE `LUCE` (
`CodiceLuce` INT (20) NOT NULL AUTO_INCREMENT,
`Intensita` VARCHAR (20) NOT NULL, 
`Direzione` VARCHAR (20) NOT NULL, 
 
PRIMARY KEY (`CodiceLuce`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `LUCE`
-- ----------------------------

 BEGIN;
INSERT INTO LUCE (Intensita, Direzione)
VALUES	('Bassa', 'Nord'),
		('Media', 'Nord'),
        ('Alta', 'Nord'),
        ('Bassa', 'Sud'),
        ('Media', 'Sud'),
        ('Alta', 'Sub'),
        ('Bassa', 'Est'),
        ('Alta', 'Est'),
        ('Media', 'Ovest'),
        ('Bassa', 'Ovest');
COMMIT;

-- -------------------------------
--  Table structure for `TEMPERATURA`
-- -------------------------------

DROP TABLE IF EXISTS `TEMPERATURA`;
CREATE TABLE `TEMPERATURA` (
`CodiceTemperatura` INT NOT NULL AUTO_INCREMENT,
`MinTemperatura` INT (20) NOT NULL, 
`MaxTemperatura` INT (20) NOT NULL, 
 
PRIMARY KEY (`CodiceTemperatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `TEMPERATURA`
-- ----------------------------

 BEGIN;
INSERT INTO TEMPERATURA (MinTemperatura, MaxTemperatura)
VALUES	('0', '20'),
		('12', '34'),
        ('15', '40'),
        ('2', '20'),
        ('5', '15'),
        ('6', '29'),
        ('7', '30'),
        ('25', '40'),
        ('12', '40'),
        ('13', '37');
COMMIT;

-- -------------------------------
--  Table structure for `CONCIMAZIONE`
-- -------------------------------

DROP TABLE IF EXISTS `CONCIMAZIONE`;
CREATE TABLE `CONCIMAZIONE` (
`CodiceConcimazione` INT (20) NOT NULL AUTO_INCREMENT,
`Quantita` VARCHAR (20) NOT NULL, 
`Periodicita` VARCHAR (20) NOT NULL, 
`Periodo` VARCHAR (20) NOT NULL,
`Zinco` INT (3) NOT NULL,
`Manganese` INT (3) NOT NULL,
`Ferro` INT (3) NOT NULL,
`Magnesio` INT (3) NOT NULL,
`Potassio` INT (3) NOT NULL,
`Azoto` INT (3) NOT NULL,
 
PRIMARY KEY (`CodiceConcimazione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `CONCIMAZIONE`
-- ----------------------------

 BEGIN;
INSERT INTO CONCIMAZIONE (Quantita, Periodicita, Periodo, Zinco, Manganese, Ferro, Magnesio, Potassio,Azoto)
VALUES	('Bassa', 'Mensilmente', 'Primavera', '2', '3', '1', '3', '2', '1'),
		('Alta', 'Annualmente', 'Autunno', '1', '2', '2', '2', '2', '2'),
        ('Media', 'Mensilmente', 'Inverno', '2', '1', '3', '2', '3', '2'),
        ('Bassa', 'Annualmente', 'Estate', '2', '1', '3', '2', '1', '3'),
        ('Bassa', 'Mensilmente', 'Inverno', '2', '1', '1', '1', '1', '1'),
        ('Alta', 'Annualmente', 'Primavera', '1', '2', '1', '2', '3', '1'),
        ('Bassa', 'Mesilmente', 'Estate', '1', '2', '1', '1', '2', '1'),
        ('Media', 'Annualmete', 'Inverno', '1', '2', '3', '1', '2', '3'),
        ('Bassa', 'Mensilmente', 'Estate', '2', '1', '3', '2', '1', '2'),
        ('Media', 'Annualmente', 'Primavera', '1', '2', '3', '1', '1', '1');
        
COMMIT;

-- -------------------------------
--  Table structure for `IRRIGAZIONE`
-- -------------------------------

DROP TABLE IF EXISTS `IRRIGAZIONE`;
CREATE TABLE `IRRIGAZIONE` (
`CodiceIrrigazione` INT NOT NULL AUTO_INCREMENT,
`Quantita` VARCHAR (20) NOT NULL, 
`Periodicita` VARCHAR (20) NOT NULL, 

PRIMARY KEY (`CodiceIrrigazione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `IRRIGAZIONE`
-- ----------------------------

 BEGIN;
INSERT INTO IRRIGAZIONE (Quantita, Periodicita)
VALUES	('Bassa', 'Giornalmente'),
        ('Media', 'Giornalmente'),
        ('Alta', 'Giornalmente'),
        ('Bassa', 'Settimanalmente'),
        ('Media', 'Settimanalmente'),
        ('Alta', 'Settimanalmente'),
        ('Bassa', 'Mensilmente'),
        ('Media', 'Mensilmente'),
        ('Alta', 'Mensilmente');
        
COMMIT;

-- -------------------------------
--  Table structure for `MANUTENZIONE`
-- -------------------------------

DROP TABLE IF EXISTS `MANUTENZIONE`;
CREATE TABLE `MANUTENZIONE` (
`CodiceManutenzione` INT NOT NULL AUTO_INCREMENT,
`TipologiaManutenzione` VARCHAR (20) NOT NULL,
 
PRIMARY KEY (`CodiceManutenzione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `MANUTENZIONE`
-- ----------------------------

 BEGIN;
INSERT INTO MANUTENZIONE (TipologiaManutenzione)
VALUES	('Potatura'),
        ('Capitozzatura'),
		('Rinvaso');

COMMIT;

-- -------------------------------
--  Table structure for `TERRENO`
-- -------------------------------

DROP TABLE IF EXISTS `TERRENO`;
CREATE TABLE `TERRENO` (
`CodiceTerreno` INT NOT NULL AUTO_INCREMENT,
`Ph` INT (20) NOT NULL,
`Consistenza` VARCHAR (20) NOT NULL,
`Permeabilita` VARCHAR (20) NOT NULL,
`Argilla` INT (20) NOT NULL,
`Sabbia` INT (20) NOT NULL,
`Ghiaia` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceTerreno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `TERRENO`
-- ----------------------------

 BEGIN;
INSERT INTO TERRENO (Ph, Consistenza, Permeabilita, Argilla, Sabbia, Ghiaia)
VALUES	('4.5','Bassa','Alta','2','7','8'),
		('5','Media','Alta','1','5','5'),
		('3.5','Alta','Bassa','7','1','2'),
		('6','Alta','Bassa','8','2','1'),
		('4.2','Media','Bassa','3','4','3'),
		('5.4','Media','Media','5','6','2'),
		('8.8','Bassa','Alta','2','8','5'),
		('4.4','Bassa','Media','4','5','3'),
		('7','Media','Media','5','5','1'),
		('9.2','Alta','Bassa','6','1','2');

COMMIT;


-- -------------------------------
--  Table structure for `ESIGENZE`
-- -------------------------------

DROP TABLE IF EXISTS `ESIGENZE`;
CREATE TABLE `ESIGENZE` (
`CodiceEsigenze` INT NOT NULL AUTO_INCREMENT,
`CodiceLuce` INT (20) NOT NULL,
`CodiceTemperatura` INT (20) NOT NULL,
`CodiceConcimazione` INT (20) NOT NULL,
`CodiceManutenzione` INT (20) NOT NULL, 
`CodiceIrrigazione` INT (20) NOT NULL, 
`CodiceTerreno` INT (20) NOT NULL,

PRIMARY KEY (`CodiceEsigenze`),

CONSTRAINT FK_CodiceLuce
FOREIGN KEY (`CodiceLuce`)
REFERENCES LUCE (`CodiceLuce`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT FK_CodiceTemperatura
FOREIGN KEY (`CodiceTemperatura`)
REFERENCES TEMPERATURA (`CodiceTemperatura`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT FK_CodiceConcimazione
FOREIGN KEY (`CodiceConcimazione`)
REFERENCES CONCIMAZIONE(`CodiceConcimazione`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT FK_CodiceManutenzione
FOREIGN KEY (`CodiceManutenzione`)
REFERENCES MANUTENZIONE (`CodiceManutenzione`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT FK_CodiceIrrigazione
FOREIGN KEY (`CodiceIrrigazione`)
REFERENCES IRRIGAZIONE (`CodiceIrrigazione`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT FK_CodiceTerreno
FOREIGN KEY (`CodiceTerreno`)
REFERENCES TERRENO (`CodiceTerreno`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `ESIGENZE`
-- ----------------------------
 
 BEGIN;
INSERT INTO ESIGENZE (CodiceLuce, CodiceTemperatura, CodiceConcimazione, CodiceManutenzione, CodiceIrrigazione, CodiceTerreno)
VALUES	( '2' , '6', '5' , '2' , '8' , '9'),
		( '5' , '4', '7' , '2' , '5' , '1'),
        ( '3' , '4', '5' , '3' , '1' , '4'),
        ( '8' , '9', '2' , '1' , '4' , '2'),
        ( '5' , '9', '4' , '1' , '2' , '5'),
        ( '2' , '2', '7' , '2' , '9' , '3'),
        ( '1' , '7', '7' , '3' , '3' , '9'),
        ( '6' , '7', '4' , '2' , '7' , '4'),
        ( '2' , '3', '7' , '1' , '2' , '3'),
        ( '3' , '1', '2' , '2' , '8' , '7');
COMMIT;

-- -------------------------------
--  Table structure for `COMPOSIZIONEPIANTA`
-- -------------------------------

DROP TABLE IF EXISTS `COMPOSIZIONEPIANTA`;
CREATE TABLE `COMPOSIZIONEPIANTA` (
`CodiceComposizionePianta` INT NOT NULL AUTO_INCREMENT,
`IndiceAccrescimentoAereo` INT (1) NOT NULL, 
`IndiceAccrescimentoRadicale` INT (1) NOT NULL, 
`MaxDimensioneAerea` INT (20) NOT NULL,
`MaxDimensioneRadicale` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceComposizionePianta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `COMPOSIZIONEPIANTA`
-- ----------------------------

 BEGIN;
INSERT INTO COMPOSIZIONEPIANTA (IndiceAccrescimentoAereo, IndiceAccrescimentoRadicale, MaxDimensioneAerea, MaxDimensioneRadicale)
VALUES	('0', '1', '10', '5'),
        ('2', '1', '29', '10'),
        ('2', '1', '56', '49'),
        ('2', '1', '78', '36'),
        ('2', '3', '90', '46'),
        ('3', '2', '50', '30'),
        ('3', '3', '140', '100'),
        ('5', '5', '200', '150'),
        ('7', '4', '230', '140'),
        ('8', '5', '380', '200'),
        ('9', '5', '500', '300');
		
        
COMMIT;




-- -------------------------------
--  Table structure for `PROFILO`
-- -------------------------------

DROP TABLE IF EXISTS `PROFILO`;
CREATE TABLE `PROFILO` (
`Password` VARCHAR (35) NOT NULL,
`Email` VARCHAR (40) NOT NULL,
`Nickname` VARCHAR (20) NOT NULL,
`DomandaSegreta` VARCHAR (50) NOT NULL,
`RispostaSegreta` VARCHAR (50) NOT NULL,
`ValutazioneMedia` INT (1) DEFAULT 0,
`SpesaMedia` INT (3) DEFAULT 0,

 
PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/******************************************************/
/* Stored Pocedure per ricavare informazioni salienti */
/******************************************************/

DROP PROCEDURE IF EXISTS trovaSpesaMedia;
DELIMITER $$
CREATE PROCEDURE trovaSpesaMedia (IN _Email VARCHAR (50))
BEGIN
	SELECT SpesaMedia
	FROM PROFILO
	WHERE Email = _Email;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS trovaValutazioneMediaUtente;
DELIMITER $$
CREATE PROCEDURE trovaValutazioneMediaUtente (IN _Email VARCHAR (50))
BEGIN
	SELECT ValutazioneMedia
	FROM PROFILO
	WHERE Email = _Email;
END $$
DELIMITER ;

 -- ----------------------------
--  Records of `PROFILO`
-- ----------------------------

BEGIN;
INSERT INTO PROFILO(Email, Password, Nickname, DomandaSegreta, RispostaSegreta)
VALUES	('ciccioformaggio@dominio1.it','abcd4321','CiccioxD','Cibo preferito?','Formaggio'),
	('mariorossi@dominio2.it','password','mariothebest','Sono originale?','No'),
	('darkninja2008@dominio2.it','Passw0rd','Xx_DaRkNiNjA_xX','Cibo preferito','Semolino'),
	('vorreiun30@dominio1.it','PaSsWoRd','hopeless','Sogno nel cassetto?','Morire giovane'),
	('mamibastaun18@dominio1.it','12345','17_4Eva','Sogno nel cassetto?','Un 18'),
	('sestaemail@dominio2.it','sestaemail','SixOrSax','Sogno nel cassetto','Essere il numero 5'),
	('nonhoidee@dominio2.it','BD2016','...','Cibo preferito?','Pizza'),
	('tantononleleggerannomai@dominio3.it','drowssap','_TnLlM_','Nome di tua madre da nubile?','Orfano'),
	('almenolospero@dominio3.it','0000','hopeful','Cibo preferito','Pizza'),
	('altrimenti...@dominio3.it','password123','xX_DaRk_PrInCeSs_Xx','Si?','No');

COMMIT;

-- -------------------------------
--  Table structure for `ANAGRAFICACLIENTE`
-- -------------------------------

DROP TABLE IF EXISTS `ANAGRAFICACLIENTE`;
CREATE TABLE `ANAGRAFICACLIENTE` (
`Nome` VARCHAR (35) NOT NULL,
`Email` VARCHAR (40) NOT NULL,
`Cognome` VARCHAR (20) NOT NULL,
`Residenza` VARCHAR (50) NOT NULL,
`Indirizzo` VARCHAR (50) NOT NULL,
`CAP` INT (5) NOT NULL,

 
PRIMARY KEY (`Email`),
FOREIGN KEY(`Email`) REFERENCES PROFILO(`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `ANAGRAFICACLIENTE`
-- ----------------------------

BEGIN;
INSERT INTO ANAGRAFICACLIENTE (Email, Nome, Cognome, Residenza, Indirizzo, CAP)
VALUES	('ciccioformaggio@dominio1.it','Ciccio','Formaggio','Pisa','Via Principale','56125'),
	('mariorossi@dominio2.it','Mario','Rossi','Pisa','Via Secondaria','56126'),
	('darkninja2008@dominio2.it','Luigi','Neri','Firenze','Via DiFirenze','50121'),
	('vorreiun30@dominio1.it','Alessio','Bianchi','Roma','Via DiRoma','00118'),
	('mamibastaun18@dominio1.it','Giovanni','Verdi','Milano','Via DiMilano','20121'),
	('sestaemail@dominio2.it','Francesca','Gialli','Napoli','Via DiNapoli','80121'),
	('nonhoidee@dominio2.it','Maria','Amaranto','Isernia','Via DiCampobasso','86110'),
	('tantononleleggerannomai@dominio3.it','Luca','Biagi','Isernia','Via DiIsernia','86170'),
	('almenolospero@dominio3.it','Nicola','Blu','Messina','Via DiMessina','98121'),
	('altrimenti...@dominio3.it','Giulio','Cesare','Palermo','Via DiPalermo','90121');

COMMIT;

-- -------------------------------
--  Table structure for `POST`
-- -------------------------------

DROP TABLE IF EXISTS `POST`;
CREATE TABLE `POST` (
`CodiceThread` INT (1) NOT NULL,
`TimeStamp` TIMESTAMP NOT NULL DEFAULT NOW(),
`Testo` VARCHAR (35) NOT NULL,
`Email` VARCHAR (40) NOT NULL,
`Link` VARCHAR (20),
`TipoPost` VARCHAR (50) NOT NULL,
`Valutazione` INT (1) NOT NULL DEFAULT 0,

 
PRIMARY KEY (`CodiceThread`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/***********************************************************/
/* Stored Procedure per aggiornare la valutazione del post */
/***********************************************************/

DROP PROCEDURE IF EXISTS aggiornaValutazionePost;
DELIMITER $$
CREATE PROCEDURE aggiornaValutazionePost (IN _CodiceThread INT (2), IN _Timestamp TIMESTAMP, IN _nuovaVal INT (1))
BEGIN
	SET @val = 0;
	SELECT Valutazione INTO @val
    FROM POST
    WHERE CodiceThread = _CodiceThread AND TimeStamp = _Timestamp;
    
    IF @val = 0 THEN
		UPDATE POST
		SET Valutazione = _nuovaVal
		WHERE  CodiceThread = _CodiceThread AND TimeStamp = _Timestamp;
    ELSE 
		UPDATE POST
		SET Valutazione = (Valutazione + _nuovaVal)/2
		WHERE  CodiceThread = _CodiceThread AND TimeStamp = _Timestamp;
	END IF;
    
END $$
DELIMITER ;

/*****************************************************************************************************************/
/*  Trigger per aggiornamento della valutazione utente all'aggiornamento della valutazione di uno dei suoi post  */
/*****************************************************************************************************************/

DROP TRIGGER IF EXISTS `Aggiornamento_valutazione`;
DELIMITER $$
CREATE TRIGGER `Aggiornamento_valutazione`
BEFORE UPDATE ON POST
FOR EACH ROW
BEGIN
	SET @val = 0;
	SELECT ValutazioneMedia INTO @val
    FROM PROFILO
    WHERE Email = NEW.Email;
    
    IF @val = 0 THEN
		UPDATE PROFILO
		SET ValutazioneMedia = NEW.Valutazione
		WHERE  Email = NEW.Email;
    ELSE 
		UPDATE PROFILO
		SET ValutazioneMedia = (ValutazioneMedia + NEW.Valutazione)/2
		WHERE Email = NEW.Email;
	END IF;
END $$
DELIMITER ;

 -- ----------------------------
--  Records of `POST`
-- ----------------------------

BEGIN;
INSERT INTO POST (CodiceThread, TimeStamp, Testo, Email, Link, TipoPost)
VALUES	('2','2016-11-01 10:10:00','Primo Post padre','mariorossi@dominio1.it',NULL,'Padre'),
		('2','2016-11-01 11:00:00','Prima risposta','vorreiun30@dominio1.it',NULL,'Risposta'),
		('2','2016-11-01 11:11:00','Seconda risposta','mariorossi@dominio1.it',NULL,'Risposta'),
		('2','2016-11-01 12:30:00','Terza risposta','mamibastaun18@dominio1.it','Link_in_risposta','Risposta'),
		('2','2016-11-01 13:10:00','Quarta risposta','mariorossi@dominio1.it',NULL,'Risposta'),
		('1','2016-11-05 22:34:00','Secondo Post padre','sestaemail@dominio2.it',NULL,'Padre'),
		('1','2016-11-06 15:12:00','Quinta risposta','nonhoidee@dominio2.it',NULL,'Risposta'),
		('1','2016-11-06 15:20:00','Sesta risposta','tantononleleggerannomai@dominio3.it',NULL,'Risposta'),
		('1','2016-11-06 20:25:00','Settima risposta','almenolospero@dominio3.it','Link_in_risposta2','Risposta'),
		('1','2016-11-07 08:00:00','Ottava risposta','altrimenti...@dominio3.it',NULL,'Risposta');

COMMIT;

-- -------------------------------
--  Table structure for `RICERCASTORE`
-- -------------------------------


DROP TABLE IF EXISTS `RICERCASTORE`;
CREATE TABLE `RICERCASTORE` (
`CodiceRicerca` INT (1) NOT NULL AUTO_INCREMENT,
`Budget` INT (3),
`EmailProfilo` VARCHAR (40) NOT NULL,
`Nome` VARCHAR (20),
`IndiceAccrescimentoMedio` INT (1),
`IndiceManutenzione` INT (1),
 
PRIMARY KEY (`CodiceRicerca`),
FOREIGN KEY (`EmailProfilo`)
REFERENCES PROFILO(`Email`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `RICERCASTORE`
-- ----------------------------

BEGIN;
INSERT INTO RICERCASTORE (Budget, Nome, IndiceAccrescimentoMedio, IndiceManutenzione, EmailProfilo )
VALUES	('10', NULL,'2','2','mariorossi@dominio2.it'),
		('20','Margherita', NULL, NULL,'vorreiun30@dominio1.it'),
		('100','Tulipano', NULL, NULL,'mariorossi@dominio2.it'),
		('50', NULL,'5','4','mamibastaun18@dominio1.it'),
		('350','Ippocastano',NULL, NULL,'mariorossi@dominio2.it'),
		( NULL, NULL, '1','1','sestaemail@dominio2.it'),
		('220','Olivo',NULL, NULL,'nonhoidee@dominio2.it'),
		('40', 'Abete',NULL, NULL,'tantononleleggerannomai@dominio3.it'),
		( NULL, NULL,'3','5','almenolospero@dominio3.it'),
		('150',NULL,'4','4','altrimenti...@dominio3.it');

COMMIT;


-- -------------------------------
--  Table structure for `GIARDINO`
-- -------------------------------


DROP TABLE IF EXISTS `GIARDINO`;
CREATE TABLE `GIARDINO` (
`CodiceGiardino` INT (1) NOT NULL AUTO_INCREMENT,
`Budget` INT (5),
`EmailProfilo` VARCHAR (40) NOT NULL,
`DataCreazione` DATE NOT NULL,

PRIMARY KEY (`CodiceGiardino`),
FOREIGN KEY (`EmailProfilo`)
REFERENCES PROFILO(`Email`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/**********************************************************************/
/*  Stored Procedure per inserire un giardino e i rispettivi vertici  */
/**********************************************************************/

DROP PROCEDURE IF EXISTS nuovoGiardino;
DELIMITER $$
CREATE PROCEDURE nuovoGiardino (IN _Budget INT (5), IN _DataCreazione DATE, IN _EmailProfilo VARCHAR (50),
								IN _V1x INT (3), IN _V1y INT (3),IN _V2x INT (3),IN _V2y INT (3),
                                IN _V3x INT (3),IN _V3y INT (3),IN _V4x INT (3),IN _V4y INT (3),
                                IN _CodiceGiardino INT (2))
BEGIN
	INSERT INTO GIARDINO (Budget, DataCreazione, EmailProfilo)
		VALUES (_Budget, _DataCreazione, _EmailProfilo);
        
	INSERT INTO VERTICE (Vertice1x, Vertice2x, Vertice3x, Vertice4x, 
						Vertice1y, Vertice2y, Vertice3y, Vertice4y, 
						CodiceGiardino, CodiceSezioneGiardino)
	VALUES (_V1x, _V1y, _V2x, _V2y, _V3x, _V3y, _V4x, _V4y, _CodiceGiardino, NULL);
        
	
END $$
DELIMITER ;

 -- ----------------------------
--  Records of `GIARDINO`
-- ----------------------------

BEGIN;
INSERT INTO GIARDINO (Budget, DataCreazione, EmailProfilo)
VALUES	('100','2015-09-30','mariorossi@dominio2.it'),
		('200', '2016-11-08','vorreiun30@dominio1.it'),
		('1050', '2015-07-13','mariorossi@dominio2.it'),
		('500','2016-10-09','mamibastaun18@dominio1.it'),
		('3500', '2014-03-24','mariorossi@dominio2.it'),
		( NULL,'2017-01-01','sestaemail@dominio2.it'),
		('2200', '2016-04-04','nonhoidee@dominio2.it'),
		('400', '2015-12-02','tantononleleggerannomai@dominio3.it'),
		( NULL,'2015-06-19','almenolospero@dominio3.it'),
		('1500','2016-01-01','altrimenti...@dominio3.it');

COMMIT;


-- -------------------------------
--  Table structure for `SEZIONEGIARDINO`
-- -------------------------------

DROP TABLE IF EXISTS `SEZIONEGIARDINO`;
CREATE TABLE `SEZIONEGIARDINO` (
`CodiceSezioneGiardino` INT (2) NOT NULL AUTO_INCREMENT,
`Esposizione` VARCHAR (10) NOT NULL,
`CodiceGiardino` INT (2) NOT NULL,
`OreLuce` INT (2) NOT NULL,

 
PRIMARY KEY (`CodiceSezioneGiardino`),
FOREIGN KEY (`CodiceGiardino`)
REFERENCES GIARDINO(`CodiceGiardino`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/****************************************************************************************************************/
/*  Stored Procedure per ottnere i vertici del giardino padre e verificare la correttezza dei dati inseriti,	*/ 
/*  contestualmente all'inserimento di una nuova sezione													  	*/
/****************************************************************************************************************/

DROP PROCEDURE IF EXISTS ottieniVerticiGiardino;
DELIMITER $$
CREATE PROCEDURE ottieniVerticiGiardino (IN _CodiceGiardino INT (2),
								OUT _V1x INT (3), OUT _V1y INT (3),OUT _V2x INT (3),OUT _V2y INT (3),
                                OUT _V3x INT (3),OUT _V3y INT (3),OUT _V4x INT (3),OUT _V4y INT (3))
BEGIN
    
    SELECT Vertice1x INTO _V1x
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
	
    SELECT Vertice1y INTO _V1y
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice2x INTO _V2x
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice2y INTO _V2y
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice3x INTO _V3x
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice3y INTO _V3y
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice4x INTO _V4x
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;
    
    SELECT Vertice4y INTO _V4y
    FROM VERTICE
    WHERE CodiceGiardino = _CodiceGiardino AND CodiceSezioneGiardino = NULL;

END $$
DELIMITER ;


DROP PROCEDURE IF EXISTS nuovaSezione;
DELIMITER $$
CREATE PROCEDURE nuovaSezione (IN _Esposizione VARCHAR (20), IN _OreLuce INT (2), IN _CodiceGiardino INT (2),
								IN _V1x INT (3), IN _V1y INT (3),IN _V2x INT (3),IN _V2y INT (3),
                                IN _V3x INT (3),IN _V3y INT (3),IN _V4x INT (3),IN _V4y INT (3),
								IN _CodiceSezioneGiardino INT (2))
BEGIN
	SET @GV1x = 0;
    SET @GV1y = 0;
    SET @GV2x = 0;
    SET @GV2y = 0;
    SET @GV3x = 0;
    SET @GV3y = 0;
    SET @GV4x = 0;
    SET @GV4y = 0;
    
   CALL ottieniVerticiGiardino (_CodiceGiardino, @GV1x, @GV1y, @GV2x, @GV2y, @GV3x, @GV3y, @GV4x, @GV4y);
    
    
    IF 	@GV1x <= _V1x AND @GV1y <= _V1y AND
		@GV2x >= _V2x AND @GV2y <= _V2y AND
		@GV3x >= _V3x AND @GV3y >= _V3y AND
		@GV4x <= _V4x AND @GV4y >= _V4y THEN
    
			INSERT INTO SEZIONE (Esposizione, OreLuce, CodiceGiardino)
			VALUES (_Esposizione, _OreLuce, _CodiceGiardino);
            
            INSERT INTO VERTICE (Vertice1x, Vertice2x, Vertice3x, Vertice4x, 
						Vertice1y, Vertice2y, Vertice3y, Vertice4y, 
						CodiceGiardino, CodiceSezioneGiardino)
			VALUES (_V1x, _V1y, _V2x, _V2y, _V3x, _V3y, _V4x, _V4y, _CodiceGiardino, _CodiceSezioneGiardino);
	ELSE 
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Vertici inseriti fuori limite';
	END IF;
    
END $$
DELIMITER ;

 -- ----------------------------
--  Records of `SEZIONEGIARDINO` Sono necessarie almeno 30 entrate, 3 per ogni giardino
-- ----------------------------

BEGIN;
INSERT INTO SEZIONEGIARDINO (Esposizione, OreLuce, CodiceGiardino)
VALUES	('Nord','10','1'),
		('Nord','5','1'),
		('Est','6','1'),
		('Ovest','5','2'),
		('Sud','8','2'),
		('Sud','3','2'),
		('Ovest','6','3'),
		('Est','4','3'),
		('Nord','2','3'),
		('Sud','6','4'),
		('Nord','8','4'),
		('Nord','5','4'),
		('Est','5','5'),
		('Ovest','7','5'),
		('Ovest','8','5'),
		('Est','7','6'),
		('Est','10','6'),
		('Nord','5','6'),
		('Sud','8','7'),
		('Sud','1','7'),
		('Est','7','7'),
		('Nord','3','8'),
		('Sud','4','8'),
		('Nord','5','8'),
		('Sud','9','9'),
		('Sud','2','9'),
		('Ovest','9','9'),
		('Nord','5','10'),
		('Nord','5','10'),
		('Ovest','7','10');

COMMIT;


-- -------------------------------
--  Table structure for `PIANTAGIARDNO`
-- -------------------------------

DROP TABLE IF EXISTS `PIANTAGIARDINO`;
CREATE TABLE `PIANTAGIARDINO` (
`CodicePiantaGiardino` INT (2) NOT NULL AUTO_INCREMENT,
`NomePianta` VARCHAR (30),
`Dimensione` INT (3),
`CodiceSezioneGiardino` INT (2) NOT NULL,
`CentroX` INT (3) NOT NULL DEFAULT 0,
`CentroY` INT (3) NOT NULL DEFAULT 0,

 
PRIMARY KEY (`CodicePiantaGiardino`),
FOREIGN KEY (`CodiceSezioneGiardino`)
REFERENCES SEZIONEGIARDINO(`CodiceSezioneGiardino`)
ON DELETE NO ACTION
ON UPDATE No ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/**********************************************************************************************************/
/*  Stored Procedure per inserire una nuova pianta in un giardino e verificarne la corretta collocazione  */
/**********************************************************************************************************/

DROP PROCEDURE IF EXISTS nuovaPiantaGiardino
DELIMITER $$
CREATE PROCEDURE nuovaPiantaGiardino (	IN _NomePianta VARCHAR (30), IN _Dimensione INT (3), IN _CodiceSezioneGiardino INT (2), 
										IN _CentroX INT(3),  IN_CentroY INT(3) )
BEGIN
	SET @InSezione = 0;
	CALL verificaInSezione(_CentroX, _CentroY, _CodiceSezioneGiardino, @InSezione, _Dimensione );
    
    IF @InSezione = 4 THEN
		INSERT INTO PIANTAGIARDINO (NomePianta, Dimensione, CodiceSezioneGiardino)
		VALUES (_NomePianta, _Dimensione, _CodiceSezioneGiardino);
	ELSE 
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La pianta non rientra nella sezione';
	END IF;
		
END $$
DELIMITER ;


DROP PROCEDURE IF EXISTS verificaInSezione
DELIMITER $$
CREATE PROCEDURE verificaInSezione (IN _CentroX INT(3),  IN _CentroY INT(3), IN _CodiceSezioneGiardino INT (2), OUT _InSezione INT (1), 
									IN _raggio INT (3))
BEGIN

/*Ottieni vertici della sezione*/
SET @_V1x = 0;
SET @_V1y = 0;
SET @_V2x = 0;
SET @_V2y = 0;
SET @_V3x = 0;
SET @_V3y = 0;
SET @_V4x = 0;
SET @_V4y = 0;

	SELECT Vertice1x INTO @_V1x
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
	
    SELECT Vertice1y INTO @_V1y
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
    SELECT Vertice2x INTO @_V2x
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
    SELECT Vertice2y INTO @_V2y
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
	SELECT Vertice3x INTO @_V3x
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
    SELECT Vertice3y INTO @_V3y
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
    SELECT Vertice4x INTO @_V4x
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    
    SELECT Vertice4y INTO @_V4y
    FROM VERTICE
    WHERE CodiceSezioneGiardino = _CodiceSezioneGiardino;
    

    
CALL distanzaPuntoRetta (_CentroX, _CentroY, @_V1x, @_V1y, @_V2x, @_2y, _InSezione, _raggio);
CALL distanzaPuntoRetta (_CentroX, _CentroY, @_V1x, @_V1y, @_V4x, @_4y, _InSezione, _raggio);
CALL distanzaPuntoRetta (_CentroX, _CentroY, @_V2x, @_V2y, @_V3x, @_3y, _InSezione, _raggio);
CALL distanzaPuntoRetta (_CentroX, _CentroY, @_V3x, @_V3y, @_V4x, @_4y, _InSezione, _raggio);


END $$
DELIMITER ;



	DROP PROCEDURE IF EXISTS distanzaPuntoRetta
DELIMITER $$
CREATE PROCEDURE distanzaPuntoRetta (	IN _CentroX INT(3),  IN _CentroY INT(3), IN _V1x INT (3), IN _V1y INT (3), 
										IN _V2x INT (3), IN _V2y INT (3), OUT _InSezione INT (1), IN _raggio INT (3))
BEGIN	

/* Retta passante per due punti*/
SET @NUM = ABS( (_CentroY - _V1y)/(_V2y - _V1y) - (_CentroX - _V1x)/(_V2x - _V1x) );

SET @DEN = SQRT( (1/ (_V2y - _V1y))*(1/ (_V2y - _V1y)) + ( 1/ (_V2x - _V1x))*(  1/ (_V2x - _V1x)) );

SET @DIST = @NUM / @DEN;

IF _raggio <= @DIST THEN 
	SET _InSezione = _InSezione + 1; 
END IF;

END $$
DELIMITER ;									


 -- ----------------------------
--  Records of `PIANTAGIARDINO` Esiste in media una pianta per giardino
-- ----------------------------

BEGIN;
INSERT INTO PIANTAGIARDINO (NomePianta, Dimensione, CodiceSezioneGiardino)
VALUES	('Margherita','3','1'),
		( NULL,NULL,'1'),
		('Ortica','15','2'),
		('Tulipano',NULL,'3'),
		('Ippocastano','90','4'),
		('Abete','230','5'),
		( NULL,'80','5'),
		('Ippocastano','350','5'),
		('Ippocastano','460','7'),
		( NULL,'210','7'),
		('Abete','100','8'),
		('Abete','70','9'),
		( NULL,'40','10'),
		('Olivo','10','12'),
		('Margherita','2','12'),
		('Margherita','2','13'),
		('Ortica',NULL,'14'),
		('Olivo','50','16'),
		('Ortica','15','16'),
		('Ippocastano','30','16'),
		('Abete','250','17'),
		('Tulipano','7','18'),
		('Tulipano','7','18'),
		( NULL,'8','18'),
		('Ortica','9','21'),
		('Olivo',NULL,'22'),
		('Ortica','9','23'),
		('Olivo','50','26'),
		('Ippocastano','500','28'),
		( NULL,NULL,'29');

COMMIT;


-- -------------------------------
--  Table structure for `VERTICE`
-- -------------------------------

DROP TABLE IF EXISTS `VERTICE`;
CREATE TABLE `VERTICE` (
`CodiceVertice` INT (2) NOT NULL AUTO_INCREMENT,
`Vertice1x` INT (4) NOT NULL,
`Vertice2x` INT (4) NOT NULL,
`Vertice3x` INT (4) NOT NULL,
`Vertice4x` INT (4) NOT NULL,
`Vertice1y` INT (4) NOT NULL,
`Vertice2y` INT (4) NOT NULL,
`Vertice3y` INT (4) NOT NULL,
`Vertice4y` INT (4) NOT NULL,
`CodiceSezioneGiardino` INT (2),
`CodiceGiardino` INT (1) NOT NULL,

PRIMARY KEY (`CodiceVertice`),
FOREIGN KEY (`CodiceSezioneGiardino`)
REFERENCES SEZIONEGIARDINO(`CodiceSezioneGiardino`)
ON DELETE NO ACTION
ON UPDATE No ACTION,
FOREIGN KEY (`CodiceGiardino`)
REFERENCES GIARDINO(`CodiceGiardino`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
--  Records of `VERTICE` 40 tuple: una per giardino(10) e una per sezione(30)
-- ----------------------------

BEGIN;
INSERT INTO VERTICE ( Vertice1x, Vertice2x, Vertice3x, Vertice4x, Vertice1y, Vertice2y, Vertice3y, Vertice4y, CodiceGiardino, CodiceSezioneGiardino)
VALUES	('0','500','500','0','0','0','300','300','1',NULL),
		('0','250','250','0','0','0','300','300','1','1'),
		('250','500','500','250','0','0','150','150','1','2'),
		('250','500','500','250','150','150','300','300','1','3'),
		('0','500','500','0','0','0','300','300','2',NULL),
		('0','250','250','0','0','0','300','300','2','4'),
		('250','500','500','250','0','0','150','150','2','5'),
		('250','500','500','250','150','150','300','300','2','6'),
		('0','500','500','0','0','0','300','300','3',NULL),
		('0','250','250','0','0','0','300','300','3','7'),
		('250','500','500','250','0','0','150','150','3','8'),
		('250','500','500','250','150','150','300','300','3','9'),
		('0','250','250','0','0','0','250','250','4',NULL),
		('0','125','125','0','0','125','250','250','4','10'),
		('0','250','250','125','0','0','125','125','4','11'),
		('125','250','250','125','125','125','250','250','4','12'),
		('0','250','250','0','0','0','250','250','5',NULL),
		('0','125','125','0','0','125','250','250','5','13'),
		('0','250','250','125','0','0','125','125','5','14'),
		('125','250','250','125','125','125','250','250','5','15'),
		('0','250','250','0','0','0','250','250','6',NULL),
		('0','125','125','0','0','125','250','250','6','16'),
		('0','250','250','125','0','0','125','125','6','17'),
		('125','250','250','125','125','125','250','250','6','18'),
		('0','250','250','0','0','0','250','250','7',NULL),
		('0','125','125','0','0','125','250','250','7','19'),
		('0','250','250','125','0','0','125','125','7','20'),
		('125','250','250','125','125','125','250','250','7','21'),
		
		
		('0','300','300','0','0','0','500','500','8',NULL),
		('0','300','300','0','0','0','100','100','8','22'),
		('0','300','300','0','100','100','400','400','8','23'),
		('0','300','300','0','400','400','500','500','8','24'),
		('0','300','300','0','0','0','500','500','9',NULL),
		('0','300','300','0','0','0','100','100','9','25'),
		('0','300','300','0','100','100','400','400','9','26'),
		('0','300','300','0','400','400','500','500','9','27'),
		('0','300','300','0','0','0','500','500','10',NULL),
		('0','300','300','0','0','0','100','100','10','28'),
		('0','300','300','0','100','100','400','400','10','29'),
		('0','300','300','0','400','400','500','500','10','30');
COMMIT;

-- -------------------------------
--  Table structure for `STATOPIANTA`
-- -------------------------------

DROP TABLE IF EXISTS `STATOPIANTA`;
CREATE TABLE `STATOPIANTA` (
`CodiceStatoPianta` INT NOT NULL AUTO_INCREMENT,
`Stato` VARCHAR (20) NOT NULL, 
`OreLuce` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceStatoPianta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `STATOPIANTA`
-- ----------------------------

 BEGIN;
INSERT INTO STATOPIANTA (Stato, OreLuce)
VALUES	('Vegetativo', '7'),
        ('Riposo', '4'),
        ('Riposo', '6'),
        ('Vegetativo', '3'),
        ('Vegetativo', '8'),
        ('Riposo', '4'),
        ('Vegetativo', '5'),
        ('Riposo', '9'),
        ('Vegetativo', '7'),
        ('Vegetativo', '6'),
        ('Riposo', '5');
COMMIT;


-- ----------------------------
--  Table structure `SEDE`
-- ----------------------------

DROP TABLE IF EXISTS `SEDE`;
CREATE TABLE `SEDE` (
`CodiceSede` INT NOT NULL AUTO_INCREMENT,
`NomeSede` VARCHAR (20) NOT NULL, 
`IndirizzoSede` VARCHAR (40) NOT NULL, 
`Cap` INT (5) NOT NULL,
`NumeroDipendenti` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceSede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SEDE`
-- ----------------------------

BEGIN;
INSERT INTO SEDE (NomeSede, IndirizzoSede, Cap, NumeroDipendenti)
VALUES	('Sede1', 'Via della Banana 112', '13456', '200'),
        ('Sede2', 'Via della Castagna 10', '53456', '300'),
        ('Sede3', 'Via della Nocciola 19', '63456', '98'),
        ('Sede4', 'Via della Arachide 113', '7456', '700'),
        ('Sede5', 'Via della Pistacchi 11', '98456', '765'),
        ('Sede6', 'Via della Noci 1', '43111', '309'),
        ('Sede7', 'Via della Anacardi 9', '67490', '111'),
        ('Sede8', 'Via della Mandorle 57', '23950', '758'),
        ('Sede9', 'Via della Cesta 78', '09745', '277'),
        ('Sede10', 'Via della  Casa 100', '05627', '100');

COMMIT;

-- -------------------------------
--  Table structure for `SERRA`
-- -------------------------------

DROP TABLE IF EXISTS `SERRA`;
CREATE TABLE `SERRA` (
`CodiceSerra` INT NOT NULL AUTO_INCREMENT,
`IndirizzoSerra` VARCHAR (40) NOT NULL, 
`CapacitaSerra` INT (20) NOT NULL, 
`Altezza` INT (20) NOT NULL,
`Lunghezza` VARCHAR (20) NOT NULL,
`Larghezza` INT (20) NOT NULL,
`CodiceSede` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceSerra`),
FOREIGN KEY (`CodiceSede`)
REFERENCES SEDE(`CodiceSede`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SERRA`
-- ----------------------------

BEGIN;
INSERT INTO SERRA (IndirizzoSerra, CapacitaSerra, Altezza, Lunghezza, Larghezza, CodiceSede)
VALUES	('Via della Mela 44', '20000', '6', '20', '18', '1'),
        ('Via della Banana 101', '20000', '6', '20', '20', '2'),
        ('Via della Pesca 1', '17000', '6', '20', '25', '1'),
        ('Via delle Prugne 70', '10000', '20', '20', '36', '2'),
        ('Via delle Arance 76', '26000', '6', '20', '29', '3'),
        ('Via della Pera 10', '21000', '6', '20', '90', '4'),
        ('Via delle Albicocche 1', '3000', '6', '12', '6', '6'),
        ('Via dei Limoni 2', '19000', '16', '6', '134', '6'),
        ('Via dei Mandarini 4', '23000', '6', '45', '6', '7'),
        ('Via dei Kiwi 67', '21000', '16', '6', '65', '8');

COMMIT;

-- -------------------------------
--  Table structure for `SEZIONE`
-- -------------------------------

DROP TABLE IF EXISTS `SEZIONE`;
CREATE TABLE `SEZIONE` (
`CodiceSezione` INT NOT NULL AUTO_INCREMENT,
`NomeSezione` VARCHAR (20) NOT NULL, 
`CapacitaSezione` INT (20) NOT NULL, 
`Temperatura` INT (20) NOT NULL,
`IntensitaLuce` VARCHAR (20) NOT NULL,
`CodiceSerra` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceSezione`),
FOREIGN KEY (`CodiceSezione`)
REFERENCES SERRA(`CodiceSerra`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SEZIONE`
-- ----------------------------

BEGIN;
INSERT INTO SEZIONE (NomeSezione, CapacitaSezione, Temperatura, IntensitaLuce, CodiceSerra)
VALUES	('Sezione1', '1300', '16', 'bassa', '1'),
        ('Sezione2', '2600', '17', 'bassa', '2'),
        ('Sezione3', '2000', '25', 'alta', '3'),
        ('Sezione4', '1700', '26', 'media', '4'),
        ('Sezione5', '1500', '30', 'alta', '5'),
        ('Sezione6', '1300', '18', 'alta', '4'),
        ('Sezione7', '2100', '13', 'media', '2'),
        ('Sezione8', '1000', '19', 'bassa', '1'),
        ('Sezione9', '900', '35', 'alta', '6'),
        ('Sezione10', '500', '24', 'media', '5');

COMMIT;


-- -------------------------------
--  Table structure for `RIPIANO`
-- -------------------------------

DROP TABLE IF EXISTS `RIPIANO`;
CREATE TABLE `RIPIANO` (
`CodiceRipiano` INT NOT NULL AUTO_INCREMENT,
`CapacitaRipiano` INT (20) NOT NULL, 
`CodiceSezione` INT (20) NOT NULL, 
`NumeroContenitori` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceRipiano`),
FOREIGN KEY (`CodiceSezione`)
REFERENCES SEZIONE (`CodiceSezione`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `RIPIANO`
-- ----------------------------

BEGIN;
INSERT INTO RIPIANO (CapacitaRipiano, CodiceSezione, NumeroContenitori)
VALUES	('10', '1', '0'),
        ('16', '2', '0'),
        ('11', '3', '0'),
        ('20', '3', '0'),
        ('10', '1', '0'),
        ('16', '4', '0'),
        ('19', '5', '0'),
        ('10', '7', '0'),
        ('10', '5', '0'),
        ('10', '8', '0'),
        ('20', '9', '0');

COMMIT;

-- -------------------------------
--  Table structure for `CONTENITORE`
-- -------------------------------

DROP TABLE IF EXISTS `CONTENITORE`;
CREATE TABLE `CONTENITORE` (
`CodiceContenitore` INT NOT NULL AUTO_INCREMENT,
`Dimensione` INT (20) NOT NULL, 
`Occupato` VARCHAR (20) NOT NULL,
`LivelloIdratazione` VARCHAR (20) NOT NULL, 
`ComposizioneSubstrato` INT (20) NOT NULL ,
`CodiceRipiano` INT (20) NOT NULL,
 
PRIMARY KEY (`CodiceContenitore`),
FOREIGN KEY (`ComposizioneSubstrato`)
REFERENCES TERRENO (`CodiceTerreno`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
FOREIGN KEY (`CodiceRipiano`)
REFERENCES RIPIANO (`CodiceRipiano`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `CONTENITORE`
-- ----------------------------

BEGIN;
INSERT INTO CONTENITORE (Dimensione, Livelloidratazione, ComposizioneSubstrato, CodiceRipiano, Occupato)
VALUES	('10', 'basso', '1', '1','Libero'),
        ('16', 'alto', '4', '2','Libero'),
        ('22', 'medio', '4', '2','Libero'),
        ('20', 'basso', '1', '3','Libero'),
        ('10', 'basso', '1', '4','Libero'),
        ('45', 'medio', '1', '7','Libero'),
        ('37', 'alto', '9', '8','Libero'),
        ('10', 'basso', '9', '1','Libero'),
        ('40', 'basso', '9', '9','Libero'),
        ('10', 'alto', '9', '7','Libero'),
        
        ('10', 'basso', '2', '1','Libero'),
        ('16', 'alto', '2', '2','Libero'),
        ('22', 'medio', '5', '2','Libero'),
        ('20', 'basso', '9', '3','Libero'),
        ('10', 'basso', '9', '4','Libero'),
        ('45', 'medio', '3', '7','Libero'),
        ('37', 'alto', '3', '8','Libero'),
        ('10', 'basso', '7', '1','Libero'),
        ('40', 'basso', '7', '9','Libero'),
        ('10', 'alto', '5', '7','Libero');
COMMIT;

-- ----------------------------
--  Table structure for `PIANTA`
-- ----------------------------
DROP TABLE IF EXISTS `PIANTA`;
CREATE TABLE `PIANTA` (
`CodicePianta` INT NOT NULL AUTO_INCREMENT,
`CodiceStato` INT (20) NOT NULL,
`CodiceEsigenze` INT (20) NOT NULL,
`CodiceContenitore` INT (20),
`CodiceComposizionePianta` INT (20) NOT NULL,
`Nome` VARCHAR (20) NOT NULL,
`Genere` VARCHAR (20) NOT NULL,
`Cultivar` VARCHAR (20),
`Fogliame` VARCHAR (20) NOT NULL,
`Dioica` VARCHAR (20) NOT NULL,
`Prezzo` INT (20) NOT NULL,

PRIMARY KEY (`CodicePianta`),
FOREIGN KEY (`CodiceStato`)
REFERENCES STATOPIANTA (`CodiceStatoPianta`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`CodiceEsigenze`)
REFERENCES ESIGENZE (`CodiceEsigenze`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`CodiceContenitore`)
REFERENCES CONTENITORE (`CodiceContenitore`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`CodiceComposizionePianta`)
REFERENCES COMPOSIZIONEPIANTA (`CodiceComposizionePianta`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/***********************************************************************************/
/*  Creazione Stored Procedure necessarie al momento dell'inserimento della pianta  */
/***********************************************************************************/

DROP PROCEDURE IF EXISTS trovaParamPrezzo;
DELIMITER $$
CREATE PROCEDURE trovaParamPrezzo ( IN _CodiceComposizione int (2), OUT rad INT(3), OUT aer INT(3) )
BEGIN

SELECT MaxDimensioneAerea, MaxDimensioneRadicale INTO aer, rad
FROM COMPOSIZIONEPIANTA
WHERE CodiceComposizionePianta = _CodiceComposizione;

END $$
Delimiter ;

DROP PROCEDURE IF EXISTS assegnaPrezzo;
DELIMITER $$
CREATE PROCEDURE assegnaPrezzo (IN _CodiceComposizione INT (3), OUT _Prezzo INT (20))
BEGIN
	SET @aer = 0;
    SET @rad = 0;
	CALL trovaParamPrezzo ( _CodiceComposizione, @rad, @aer);
	SET _Prezzo = (@aer + @rad)/2; 
END $$
Delimiter ;


DROP PROCEDURE IF EXISTS trovaContenitore;
DELIMITER $$
CREATE PROCEDURE trovaContenitore ( IN _CodiceEsigenze int (2), OUT var INT(2) )
BEGIN

Select CodiceContenitore INTO var
From contenitore
Where ComposizioneSubstrato = (	Select CodiceTerreno
								From Esigenze
                                Where CodiceEsigenze = _CodiceEsigenze
								)
AND Occupato != 'Occupato'
limit 1;
END $$
Delimiter ;

DROP PROCEDURE IF EXISTS assegnaContenitore;
DELIMITER $$
CREATE PROCEDURE assegnaContenitore ( IN _CodiceEsigenze int (2), OUT codCont INT(2))
BEGIN
	SET @tmp = 0;
	CALL trovaContenitore ( _CodiceEsigenze, @tmp );
	SELECT @tmp INTO codCont;
	IF @tmp IS NULL THEN
		BEGIN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Non esistono contenitori con adatto substrato'; 
		END;
	END IF;
END $$
Delimiter ;

/**************************************************/
/*  Trigger per l'inserimento e la cancellazione della pianta  */
/**************************************************/

DROP TRIGGER IF EXISTS `Cancellazione_pianta`
DELIMITER $$
CREATE TRIGGER `Cancellazione_pianta`
BEFORE DELETE ON PIANTA
FOR EACH ROW
BEGIN
		UPDATE RIPIANO
		SET NumeroContenitori = NumeroContenitori-1
		WHERE CodiceRipiano = (
							SELECT CodiceRipiano
							FROM  CONTENITORE 
							WHERE CodiceContenitore = (
													SELECT CodiceContenitore
													FROM PIANTA
													WHERE CodicePianta = OLD.CodicePianta
													)
							);
		UPDATE CONTENITORE
        SET Occupato = 'Libero'
        WHERE CodiceContenitore = (
								SELECT CodiceContenitore
								FROM PIANTA
								WHERE CodicePianta = OLD.CodicePianta
							);
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS `Inserimento_pianta`
DELIMITER $$
CREATE TRIGGER `Inserimento_pianta`
BEFORE INSERT ON PIANTA
FOR EACH ROW
BEGIN
		SET @tmpCont = 0;
		CALL assegnaContenitore(NEW.CodiceEsigenze, @tmpCont);
        SET NEW.CodiceContenitore = @tmpCont;
        
        SET @tmpPrezzo = 0;
        CALL assegnaPrezzo (NEW.CodiceComposizionePianta, @tmpPrezzo);
        SET NEW.Prezzo = @tmpPrezzo;
        
		UPDATE RIPIANO
		SET NumeroContenitori = NumeroContenitori+1
		WHERE CodiceRipiano = (
							SELECT CodiceRipiano
							FROM  CONTENITORE 
							WHERE CodiceContenitore = (
													SELECT CodiceContenitore
													FROM PIANTA
													WHERE CodicePianta = NEW.CodicePianta
													)
							);
		UPDATE CONTENITORE
        SET Occupato = 'Occupato'
        WHERE CodiceContenitore = @tmpCont;
		
END $$
DELIMITER ;
-- ----------------------------
--  Records of `PIANTA`, ogni volta che inseriamo una nuova pianta dobbiamo collocarla in un contenitore (trigger)
-- ----------------------------
BEGIN;
INSERT INTO PIANTA (CodiceStato, CodiceEsigenze, CodiceContenitore, CodiceComposizionePianta, Nome, Genere, Cultivar, Fogliame, Dioica, Prezzo)
VALUES	('1', '1', NULL,'1', 'Margherita', 'Leucanthemum', NULL, 'Basali', 'No', '0'),
		('1', '1', NULL, '1', 'Tulipani', 'Tulipa', NULL, 'Multiple', 'No', '0'),
		('1', '2', NULL, '6', 'Abete', 'Abies', NULL, 'Aghiforme', 'No', '0'),
		('2', '3', NULL, '6', 'Ginkgo Biloba', 'Ginkgo', NULL, 'Decidue', 'Si', '0'),
		('2', '5', NULL, '2', 'Olivo', 'Olea', 'Ravece', 'Coriacee', 'No', '0'),
		('1', '2', NULL, '4', 'Peperoncino', 'Carolina Reaper', 'Capsicum Chinense', 'Sparulee', 'No', '0'),
		('1', '4', NULL, '7', 'Ippocastano', 'Aesculus', NULL, 'Decidue', 'No', '0'),
        ('2', '7', NULL, '5', 'Ortica', 'Urtica', NULL, 'Lanceolate', 'Si', '0'),
        ('1', '9', NULL, '5', 'Basilico', 'Ocimum', NULL, 'Lanceolate', 'No', '0'),
        ('2', '10', NULL, '5', 'Menta', 'Mentha', NULL, 'Lanceolate', 'No', '0'),
		
        ('1', '1', NULL, '1', 'Margherita', 'Leucanthemum', NULL, 'Basali', 'No', '0'),
		('1', '1', NULL, '1', 'Tulipani', 'Tulipa', NULL, 'Multiple', 'No', '0'),
        ('1', '2', NULL, '6', 'Abete', 'Abies', NULL, 'Aghiforme', 'No', '0'),
        ('2', '3', NULL, '6', 'Ginkgo Biloba', 'Ginkgo', NULL, 'Decidue', 'Si', '0'),
        ('2', '5', NULL, '2', 'Olivo', 'Olea', 'Ravece', 'Coriacee', 'No', '125'),
        ('1', '2', NULL, '4', 'Peperoncino', 'Carolina Reaper', 'Capsicum Chinense', 'Sparulee', 'No', '0'),
        ('1', '4', NULL, '7', 'Ippocastano', 'Aesculus', NULL, 'Decidue', 'No', '0'),
        ('2', '7', NULL, '5', 'Ortica', 'Urtica', NULL, 'Lanceolate', 'Si', '0'),
        ('1', '9', NULL, '5', 'Basilico', 'Ocimum', NULL, 'Lanceolate', 'No', '0'),
        ('2', '10', NULL, '5', 'Menta', 'Mentha', NULL, 'Lanceolate', 'No', '0');
		
COMMIT;


-- -------------------------------
--  Table structure for `SCHEDAACQUISTO`
-- -------------------------------

DROP TABLE IF EXISTS `SCHEDAACQUISTO`;
CREATE TABLE `SCHEDAACQUISTO` (
`CodicePianta` INT (2)NOT NULL,
`EmailAccount` VARCHAR (40) NOT NULL,
`Notifiche` INT (1) NOT NULL DEFAULT 0,
`InterventoProgrammato` INT (1) NOT NULL DEFAULT 0,

PRIMARY KEY (`CodicePianta`),
CONSTRAINT FK_CodicePianta
FOREIGN KEY (`CodicePianta`) 
REFERENCES PIANTA(`CodicePianta`) 
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (`EmailAccount`)
REFERENCES PROFILO(`Email`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -------------------------------
--  Table structure for `ORDINE`
-- -------------------------------

DROP TABLE IF EXISTS `ORDINE`;
CREATE TABLE `ORDINE` (
`CodicePianta` INT (2) NOT NULL,
`EmailAcquirente` VARCHAR (40) NOT NULL,
`NomePianta` VARCHAR (40) NOT NULL,
`StatoOrdine` VARCHAR (35) NOT NULL DEFAULT 'In processazione',
`Prezzo` INT (3) NOT NULL,
`DataAcquisto` DATETIME NOT NULL DEFAULT NOW(),

PRIMARY KEY (`CodicePianta`),
FOREIGN KEY (`EmailAcquirente`)
REFERENCES PROFILO(`Email`)
ON DELETE NO ACTION
ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*********************************************************************************************/
/* Stored Procedure di utilità per l'aggiornamento di ordini e inserimento in schedaacquisto */
/*********************************************************************************************/

DROP PROCEDURE IF EXISTS aggiornaOrdine
DELIMITER $$
CREATE PROCEDURE aggiornaOrdine (IN _CodicePianta INT (2), IN str VARCHAR (30))
BEGIN
	UPDATE ORDINE
    SET StatoOrdine = str
    WHERE CodicePianta = _CodicePianta;
END $$
DELIMITER ;

/***********************************************************************************/
/* Trigger per la gestione dell'inserimento aggiornamento dello stato degli ordini */
/***********************************************************************************/

DROP TRIGGER IF EXISTS `Inserimento_ordine`
DELIMITER $$
CREATE TRIGGER `Inserimento_ordine`
BEFORE INSERT ON ORDINE
FOR EACH ROW
BEGIN        
		UPDATE PROFILO
		SET SpesaMedia = (SpesaMedia + NEW.Prezzo)/2
		WHERE Email = New.EmailAcquirente;
        
END $$
DELIMITER ;

-- Dopo che qualcuno ha aggiornato lo stato dell' ordine...

DROP TRIGGER IF EXISTS `Aggiornamento_ordine`
DELIMITER $$
CREATE TRIGGER `Aggiornamento_ordine`
BEFORE UPDATE ON ORDINE
FOR EACH ROW
BEGIN        
		IF NEW.StatoOrdine = 'Evaso' THEN
			INSERT INTO SCHEDAACQUISTO (CodicePianta, EmailAccount)
			VALUES	(NEW.CodicePianta, NEW.EmailAcquirente);
            
            UPDATE CONTENITORE
            SET Occupato = 'Libero'
            WHERE CodiceContenitore = (	SELECT CodiceContenitore
										FROM PIANTA 
                                        WHERE CodicePianta = NEW.CodicePianta
										);
		
			UPDATE PIANTA
            SET CodiceContenitore = NULL
            WHERE CodicePianta = NEW.CodicePianta; 
            
		END IF;
        
END $$
DELIMITER ;


 -- ----------------------------
--  Records of `ORDINE` Dovremmo inserire nuove piante, altrimenti risultano tutte e 10 acquistate
-- ----------------------------

BEGIN;
INSERT INTO ORDINE (CodicePianta, NomePianta, Prezzo, EmailAcquirente)
VALUES	('12','Tulipani','5','ciccioformaggio@dominio1.it'),
	('13','Abete', '100','mariorossi@dominio2.it'),
	('14','Gingko Biloba','200','darkninja2008@dominio2.it'),
	('15','Olivo', '125','vorreiun30@dominio1.it'),
	('16','Peperoncino', '5','ciccioformaggio@dominio1.it'),
	('17','Ippocastano', '250','sestaemail@dominio2.it'),
	('18','Ortica', '10','nonhoidee@dominio2.it'),
	('19','Basilico', '3','tantononleleggerannomai@dominio3.it'),
	('20','Menta', '5','almenolospero@dominio3.it'),
	('11','Margherita', '5','almenolospero@dominio3.it');

COMMIT;


/* Chiamate per riempire la tabella SchedaAcquisto */

CALL aggiornaOrdine (11, 'Evaso');
CALL aggiornaOrdine (12, 'Evaso');
CALL aggiornaOrdine (13, 'Evaso');
CALL aggiornaOrdine (14, 'Evaso');
CALL aggiornaOrdine (15, 'Evaso');

CALL aggiornaOrdine (16, 'In spedizione');
CALL aggiornaOrdine (17, 'In spedizione');
CALL aggiornaOrdine (18, 'Evaso');
CALL aggiornaOrdine (19, 'Evaso');
CALL aggiornaOrdine (20, 'Evaso');


-- ---------------------------------
--  Table structure for `INTERVENTO`
-- ---------------------------------

DROP TABLE IF EXISTS `INTERVENTO`;
CREATE TABLE `INTERVENTO` (
`CodiceIntervento` INT NOT NULL AUTO_INCREMENT,
`DataScadenza` DATE NOT NULL,
`TipoIntervento` VARCHAR (20) NOT NULL,
`Periodicita` VARCHAR (20) NOT NULL,
`CodicePianta` INT (20) NOT NULL,
`Costo` INT (20) NOT NULL DEFAULT 0,
 
PRIMARY KEY (`CodiceIntervento`),
FOREIGN KEY (`CodicePianta`) 
REFERENCES PIANTA(`CodicePianta`) 
ON DELETE CASCADE
ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*********************************************/
/*  Trigger per inserire un nuovo intervento */
/*********************************************/

DROP TRIGGER IF EXISTS `Nuovo_intervento`
DELIMITER $$
CREATE TRIGGER `Nuovo_Intervento`
BEFORE INSERT ON INTERVENTO
FOR EACH ROW
BEGIN        
		SET @prezzo = 0;
        CALL prezzoIntervento(NEW.CodiceIntervento, NEW.CodicePianta, NEW.DataScadenza, NEW.TipoIntervento, NEW.Periodicita, @prezzo);
        SET NEW.Costo = @prezzo;
END $$
DELIMITER ;

/*********************************************/
/*  Stored Procedure per assegnare un prezzo */
/*********************************************/

DROP PROCEDURE IF EXISTS prezzoIntervento;
DELIMITER $$
CREATE PROCEDURE prezzoIntervento (IN _CodiceIntervento INT (2), IN _CodicePianta INT (2), IN _DataScandenza DATE, IN _TipoIntervento VARCHAR (20), IN _Periodicita VARCHAR (20), OUT _Costo INT (20))
BEGIN
	SET @CodComp = 0;
	SELECT CodiceComposizionePianta INTO @CodComp
    FROM PIANTA
    WHERE CodicePianta = _CodicePianta;
    
    IF _TipoIntervento = 'Irrigazione' THEN
		SET _Costo = @CodComp * 5;
	ELSEIF _TipoIntervento = 'Concimazione' THEN
			SET _Costo = @CodComp * 10;
	ELSE
		SET _Costo = @CodComp * 15;
	END IF;
		
END $$
DELIMITER ;


 -- ----------------------------
--  Records of `INTERVENTO`
-- -----------------------------

 BEGIN;
INSERT INTO INTERVENTO (TipoIntervento, DataScadenza, Periodicita, CodicePianta)
VALUES	('Irrigazione','2016-11-01','Alta','2'),
	('Concimazione','2016-12-31','Alta','1'),
	('Manutenzione','2017-01-15','Bassa','7'),
	('Concimazione','2016-11-23','Bassa','8'),
	('Concimazione','2016-12-25','Bassa','3'),
	('Irrigazione','2017-02-22','Media','5'),
	('Manutenzione','2016-11-30','Alta','2'),
	('Manutenzione','2016-11-05','Media','4'),
	('Concimazione','2017-01-01','Media','5'),
	('Irrigazione','2016-11-3','Bassa','6');

        
COMMIT;

-- ----------------------------
--  Table structure `FARMACO`
-- ----------------------------

DROP TABLE IF EXISTS `FARMACO`;
CREATE TABLE `FARMACO` (
`NomeCommerciale` VARCHAR (20) NOT NULL,
`PrincipioAttivo` VARCHAR (20) NOT NULL, 
`Smaltimento` VARCHAR (20) NOT NULL, 
`Somministrazione` VARCHAR (20) NOT NULL,
 
PRIMARY KEY (`NomeCommerciale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `FARMACO`
-- ----------------------------

BEGIN;
INSERT INTO FARMACO (NomeCommerciale, PrincipioAttivo, Smaltimento, Somministrazione)
VALUES	('Farmaco1', 'Principio Attivo1', '12', 'Aereo'),
        ('Farmaco2', 'Principio Attivo2', '10', 'Radicale'),
        ('Farmaco3', 'Principio Attivo3', '1', 'Aereo e radicale'),
        ('Farmaco4', 'Principio Attivo4', '2', 'Aereo'),
        ('Farmaco5', 'Principio Attivo5', '5', 'Radicale'),
        ('Farmaco6', 'Principio Attivo6', '8', 'Aereo e radicale'),
        ('Farmaco7', 'Principio Attivo7', '9', 'Aereo'),
        ('Farmaco8', 'Principio Attivo8', '7', 'Radicale'),
        ('Farmaco9', 'Principio Attivo9', '0', 'Aereo e radicale'),
        ('Farmaco10', 'Principio Attivo10', '1', 'Aereo');

COMMIT;

-- ----------------------------
--  Table structure `PATOLOGIA`
-- ----------------------------

DROP TABLE IF EXISTS `PATOLOGIA`;
CREATE TABLE `PATOLOGIA` (
`NomePatologia` VARCHAR (20) NOT NULL,
`AgentePatogeno` VARCHAR (20) NOT NULL, 
`TipoLotta` VARCHAR (20) NOT NULL, 
 
PRIMARY KEY (`NomePatologia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `PATOLOGIA`
-- ----------------------------

BEGIN;
INSERT INTO PATOLOGIA (NomePatologia, AgentePatogeno, TipoLotta)
VALUES	('Patologia1', 'AgentePatogeno1', 'Chimica'),
        ('Patologia2', 'AgentePatogeno2', 'Chimica'),
        ('Patologia3', 'AgentePatogeno3', 'Chimica'),
        ('Patologia4', 'AgentePatogeno4', 'Chimica'),
        ('Patologia5', 'AgentePatogeno5', 'Chimica'),
        ('Patologia6', 'AgentePatogeno6', 'Chimica'),
        ('Patologia7', 'AgentePatogeno7', 'Chimica'),
        ('Patologia8', 'AgentePatogeno8', 'Chimica'),
        ('Patologia9', 'AgentePatogeno9', 'Chimica'),
        ('Patologia10', 'AgentePatogeno10', 'Chimica');

COMMIT;

-- ----------------------------
--  Table structure `SINTOMO`
-- ----------------------------

DROP TABLE IF EXISTS `SINTOMO`;
CREATE TABLE `SINTOMO` (
`CodiceSintomo` INT NOT NULL AUTO_INCREMENT,
`Immagine` VARCHAR (20) NOT NULL, 
`Descrizione` VARCHAR (100) NOT NULL, 
 
PRIMARY KEY (`CodiceSintomo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SINTOMO`
-- ----------------------------

BEGIN;
INSERT INTO SINTOMO (Immagine, Descrizione)
VALUES	('Link1', 'Descrizione1'),
        ('Link2', 'Descrizione2'),
        ('Link3', 'Descrizione3'),
        ('Link4', 'Descrizione4'),
        ('Link5', 'Descrizione5'),
        ('Link6', 'Descrizione6'),
        ('Link7', 'Descrizione7'),
        ('Link8', 'Descrizione8'),
        ('Link9', 'Descrizione9'),
        ('Link10', 'Descrizione10');

COMMIT;

-- ----------------------------
--  Table structure `TRATTAMENTO`
-- ----------------------------

DROP TABLE IF EXISTS `TRATTAMENTO`;
CREATE TABLE `TRATTAMENTO` (
`CodicePianta` INT (2) NOT NULL,
`CodiceTrattamento` INT NOT NULL AUTO_INCREMENT,
`Farmaco1` VARCHAR (20),
`Farmaco2` VARCHAR (20),
`Farmaco3` VARCHAR (20),
`NomePatologia` VARCHAR (20) NOT NULL,
 
PRIMARY KEY (`CodiceTrattamento`),
FOREIGN KEY (`CodicePianta`)
REFERENCES PIANTA (`CodicePianta`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`Farmaco1`)
REFERENCES FARMACO (`NomeCommerciale`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`Farmaco2`)
REFERENCES FARMACO (`NomeCommerciale`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`Farmaco3`)
REFERENCES FARMACO (`NomeCommerciale`)
ON DELETE CASCADE
ON UPDATE NO ACTION,
FOREIGN KEY (`NomePatologia`)
REFERENCES PATOLOGIA (`NomePatologia`)
ON DELETE CASCADE
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `TRATTAMENTO`
-- ----------------------------

BEGIN;
INSERT INTO TRATTAMENTO (CodicePianta, Farmaco1, Farmaco2, Farmaco3, NomePatologia)
VALUES	('6', 'Farmaco9', 'Farmaco1', 'Farmaco3', 'Patologia1'),
        ('2', 'Farmaco1', 'Farmaco6', NULL, 'Patologia2'),
        ('3', 'Farmaco2', 'Farmaco1', 'Farmaco3', 'Patologia3'),
        ('16', 'Farmaco9', 'Farmaco7', NULL, 'Patologia1'),
        ('15', 'Farmaco1', NULL, NULL, 'Patologia4'),
        ('14', 'Farmaco1', 'Farmaco2', 'Farmaco3', 'Patologia5'),
        ('19', 'Farmaco9', 'Farmaco7', NULL, 'Patologia6'),
        ('8', 'Farmaco1', NULL, NULL, 'Patologia8'),
        ('11', 'Farmaco1', 'Farmaco3', NULL, 'Patologia9'),
        ('1', 'Farmaco1', NULL, NULL, 'Patologia3');

COMMIT;

-- ----------------------------
--  Table structure `SINTOMATOLOGIA`
-- ----------------------------

DROP TABLE IF EXISTS `SINTOMATOLOGIA`;
CREATE TABLE `SINTOMATOLOGIA` (
`CodiceSintomo` INT (20) NOT NULL,
`NomePatologia` VARCHAR (20) NOT NULL, 

 
PRIMARY KEY (`CodiceSintomo`, `NomePatologia`),
FOREIGN KEY (`CodiceSintomo`) 
REFERENCES SINTOMO(`CodiceSintomo`)
ON DELETE NO ACTION
ON UPDATE NO ACTION, 
FOREIGN KEY (`NomePatologia`)
REFERENCES PATOLOGIA(`NomePatologia`)
ON DELETE NO ACTION
ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

-- ----------------------------
--  Records of `SINTOMATOLOGIA`
-- ----------------------------

BEGIN;
INSERT INTO SINTOMATOLOGIA (CodiceSintomo, NomePatologia)
VALUES	('9', 'Patologia1'),
        ('2', 'Patologia2'),
        ('5', 'Patologia3'),
        ('7', 'Patologia4'),
        ('6', 'Patologia5'),
        ('5', 'Patologia6'),
        ('1', 'Patologia7'),
        ('2', 'Patologia8'),
        ('5', 'Patologia9'),
        ('6', 'Patologia10');

COMMIT;

