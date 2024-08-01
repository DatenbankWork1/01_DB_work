/* USER TAB. Version 2 */

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

INSERT INTO boo.users(userName, userPwd, familyName, firstName)
VALUES("max", "12", "Mustamann", "Max");
INSERT INTO boo.users (userName, userPwd, familyName, firstName) 
VALUES ('john', "123", 'Doe', 'John');
INSERT INTO boo.users (userName, userPwd, familyName, firstName) 
VALUES ('emily', "1234", 'Brown', 'Emily');
INSERT INTO boo.users (userName, userPwd, familyName, firstName) 
VALUES ('michael', "1235", 'Smith', 'Michael');

/* Daten */
-- Nachteil: PWDs liegen offen! 


/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;