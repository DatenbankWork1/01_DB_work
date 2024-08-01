/* USER TAB. Version 2 */
-- link: MySQL :: MySQL 8.4 Reference Manual :: 14.13 Encryption and Compression Functions

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Besser: PWDs verschlüsset mit SHA1!
INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('johndoe123', 'Doe', 'John', SHA1('1234'));


INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('emilybrown22', 'Brown', 'Emily', SHA1('7#Dx'));


INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('michaelsmith7', 'Smith', 'Michael',SHA1('user1234'));


/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;

/* Änderungen an bestehender Tabelle / Struktur*/
ALTER TABLE boo.users ADD
    userPLZ VARChAR(5) NOT NULL DEFAULT "00000"
;

/* Struktur */
DESCRIBE boo.users;
Select * boo.users;

/* Update vo Daten */
-- UPDATE boo.users SET userPLZ = "70367";
UPDATE boo.users SET userPLZ = "70368" WHERE id=2;
SELECT * FROM boo.users;
