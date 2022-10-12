# Travel
Application Web de location et reservation des voitures d'une agence de transport

#BaseDeDonnees

DROP DATABASE IF EXISTS gestion_location_Voiture;

CREATE DATABASE IF NOT EXISTS gestion_location_Voiture;
USE gestion_location_Voiture;
# -----------------------------------------------------------------------------
#       TABLE : ADMINISTRATEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMINISTRATEUR
 (
   IDADMIN SMALLINT unsigned NOT NULL auto_increment  ,
   TELEPHONE CHAR(255) NULL  ,
   MOTPASSE CHAR(255) NULL  ,
   NOM CHAR(255) NULL  ,
   EMAIL CHAR(255) NOT NULL  
   , PRIMARY KEY (IDADMIN) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : UTILISATEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS UTILISATEUR
 (
   ID SMALLINT unsigned NOT NULL auto_increment  ,
   IDROLE SMALLINT NOT NULL  ,
   UUID CHAR(255) NOT NULL  ,
   NOM CHAR(255) NULL  ,
   TELEPHONE CHAR(255) NOT NULL  ,
   MOTPASSE CHAR(255) NOT NULL  ,
   STATUT CHAR(255) NULL  ,
   EMAILUTILISATEUR CHAR(255) NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE UTILISATEUR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_UTILISATEUR_ROLE
     ON UTILISATEUR (IDROLE ASC);

# -----------------------------------------------------------------------------
#       TABLE : VOITURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS VOITURE
 (
   IDVOITURE SMALLINT unsigned NOT NULL auto_increment ,
   IDADMIN SMALLINT NOT NULL  ,
   NUMEROVOITURE INTEGER NOT NULL  ,
   IMMATRICULATION CHAR(255) NOT NULL  ,
   NOMBREPLACE INTEGER NOT NULL  ,
   PRIXLOCATION INTEGER NOT NULL  ,
   TYPE CHAR(255) NOT NULL  ,
   ETAT BOOL NOT NULL  
   , PRIMARY KEY (IDVOITURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE VOITURE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_VOITURE_ADMINISTRATEUR
     ON VOITURE (IDADMIN ASC);

# -----------------------------------------------------------------------------
#       TABLE : ROLE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ROLE
 (
   IDROLE SMALLINT unsigned NOT NULL auto_increment  ,
   NOMROLE CHAR(255) NULL  
   , PRIMARY KEY (IDROLE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : LOCATIONVOITURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LOCATIONVOITURE
 (
   ID SMALLINT NOT NULL  ,
   IDVOITURE SMALLINT unsigned NOT NULL auto_increment  ,
   IDLOCATIONVOITURE INTEGER NULL  ,
   DATELOCATION CHAR(255) NOT NULL  ,
   DATERETOUR CHAR(255) NOT NULL  
   , PRIMARY KEY (ID,IDVOITURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE LOCATIONVOITURE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_LOCATIONVOITURE_UTILISATEUR
     ON LOCATIONVOITURE (ID ASC);

CREATE  INDEX I_FK_LOCATIONVOITURE_VOITURE
     ON LOCATIONVOITURE (IDVOITURE ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE UTILISATEUR 
  ADD FOREIGN KEY FK_UTILISATEUR_ROLE (IDROLE)
      REFERENCES ROLE (IDROLE) ;


ALTER TABLE VOITURE 
  ADD FOREIGN KEY FK_VOITURE_ADMINISTRATEUR (IDADMIN)
      REFERENCES ADMINISTRATEUR (IDADMIN) ;


ALTER TABLE LOCATIONVOITURE 
  ADD FOREIGN KEY FK_LOCATIONVOITURE_UTILISATEUR (ID)
      REFERENCES UTILISATEUR (ID) ;


ALTER TABLE LOCATIONVOITURE 
  ADD FOREIGN KEY FK_LOCATIONVOITURE_VOITURE (IDVOITURE)
      REFERENCES VOITURE (IDVOITURE) ;

create trigger HashPassWord after insert on Utilisateur for each row
begin
	update utilisateur set motpasse = MD5(new.motpasse) where emailutilisateur = new.emailutilisateur;
end$

create function connexion (mdp varchar(40), email varchar(40)) returns integer
Begin
	declare pass varchar(255);
	declare mdp_MD5 varchar(255);
	declare i int;
	select motpasse into pass from utilisateur where emailutilisateur = email;
	select MD5(mdp) into mdp_MD5;
	if mdp_MD5 = pass then
		set i=1;
	else
		set i=0;
	end if;
	return i;
end$
	
create trigger verification before insert on Utilisateur for each row
begin
	declare message varchar(255);
	if(new.emailutilisateur in (select emailutilisateur from utilisateur)) then
		set message = 'Veillez en utiliser une autre adresse mail, celle ci a déjà été utilisée';
		signal sqlstate '46000' set message_text = message;
	end if;
end$
