INSERT INTO condition VALUES (1, 'NA');
INSERT INTO condition VALUES (2, 'Neuf');
INSERT INTO condition VALUES (3, 'Très bon');
INSERT INTO condition VALUES (4, 'Bon');
INSERT INTO condition VALUES (5, 'Moyen');
INSERT INTO condition VALUES (6, 'Mauvais');
INSERT INTO condition VALUES (7, 'Très mauvais');
INSERT INTO condition VALUES (8, 'Non Fonctionnel');

INSERT INTO type VALUES (1, 'NA');
INSERT INTO type VALUES (2, 'Réseau');
INSERT INTO type VALUES (3, 'Serveur');
INSERT INTO type VALUES (4, 'Ordinateur');
INSERT INTO type VALUES (5, 'Périphérique');
INSERT INTO type VALUES (6, 'Petit matériel');
INSERT INTO type VALUES (7, 'Câbles');
INSERT INTO type VALUES (8, 'Autre');

INSERT INTO etatAnnonce VALUES (1, 'NA');
INSERT INTO etatAnnonce VALUES (2, 'En attente'); -- En attente de validation par le labo
INSERT INTO etatAnnonce VALUES (3, 'Publiée'); -- Validée par le labo et publiée (vue par les étudiants en tant que 'En stock')
INSERT INTO etatAnnonce VALUES (4, 'Vendue'); -- Plus de stock (vue par les étudiants en tant que 'Rupture de stock')
INSERT INTO etatAnnonce VALUES (5, 'Annulée'); -- Annulée par le labo (vue par le vendeur en tant que 'Annulée')
INSERT INTO etatAnnonce VALUES (6, 'Terminé'); -- Annonce n'existant plus (vue par le vendeur en tant que 'Terminée' et plus visible par les étudiants en tant qu'annonce)

INSERT INTO etatReservation VALUES (1, 'NA');
INSERT INTO etatReservation VALUES (2, 'En cours vérification'); -- En cours de vérification par le labo
INSERT INTO etatReservation VALUES (3, 'En attente de payement du client'); -- En attente de payement par le client
INSERT INTO etatReservation VALUES (4, 'En attente du dépot du vendeur'); -- En attente du dépot par le vendeur
INSERT INTO etatReservation VALUES (5, 'En attente de récupération du client'); -- En attente de récupération par le client
INSERT INTO etatReservation VALUES (6, 'Annulée par le vendeur'); 
INSERT INTO etatReservation VALUES (7, 'Annulée par le client'); 
INSERT INTO etatReservation VALUES (8, 'Annulée par le labo');
INSERT INTO etatReservation VALUES (9, 'Vendu');
INSERT INTO etatReservation VALUES (10, 'Terminé'); -- Réservation n'existant plus (vue par le vendeur en tant que 'Terminée' et plus visible par les étudiants en tant que réservation)

INSERT INTO groupe VALUES (1, 'NA');
INSERT INTO groupe VALUES (2, 'A1');
INSERT INTO groupe VALUES (3, 'A2');
INSERT INTO groupe VALUES (4, 'B1');
INSERT INTO groupe VALUES (5, 'B2');
INSERT INTO groupe VALUES (6, 'X1');
INSERT INTO groupe VALUES (7, 'X2');
INSERT INTO groupe VALUES (8, 'Y1');
INSERT INTO groupe VALUES (9, 'Y2');

INSERT INTO etudiants VALUES (1, 'suykerbt', 'tim.suykerbuyk@etu.univ-smb.fr', 3, 'JFHHC9QJG8PYy02sGBJcpQ==', 'Tim', 'Suykerbuyk');
INSERT INTO etudiants VALUES (2, 'isamberm', 'mael.isambert-georges@etu.univ-smb.fr', 3, '24Mhrn+WIk5smJ+xI8TfMg==', 'Mael', 'Isambert', 'mael.jpg');
INSERT INTO etudiants VALUES (3, 'dumass', 'simon.dumas@etu.univ-smb.fr', 2, '+5ZIOMNM8/EL2DTBrvOSWQ==', 'Simon', 'Dumas' , 'simon.jpg');
INSERT INTO etudiants VALUES (4, 'durandax', 'axel.durand@etu.univ-smb.fr', 2, 'eepyOWT5rE1I05IGRw8Ffw==', 'Axel', 'Durand' , 'axel.jpg');
INSERT INTO etudiants VALUES (5, 'helbiga', 'alexandre.helbig@etu.univ-smb.fr', 3, 'IwAtWyO6yc0o2Ugk6ElcWA==', 'Alexandre', 'Helbig' , 'alexandre.jpg');
INSERT INTO etudiants VALUES (6, 'goyetc', 'clement.goyet@etu.univ-smb.fr', 3, 'gElAWiBRS7fMlr6MTwikVQ==', 'Clément', 'Goyet' , 'clement.jpg');
INSERT INTO etudiants VALUES (7, 'bordellm', 'matteo.bordellier@etu.univ-smb.fr', 3, 'qBnlGvO/rzzpaWfSJmYAYg==', 'Mattéo', 'Bordellier' , 'matteo.jpg');

INSERT INTO annonces VALUES (1, 1, 'Test 1', 'Article Test 1 sans image', '', 10, 1, '2023-01-01', 1, 1, 2);
INSERT INTO annonces VALUES (2, 2, 'Test 2', 'Article Test 2 avec image', 'networking.jpg', 20, 5, '2023-01-02', 2, 1, 3);
INSERT INTO annonces VALUES (3, 5, 'Test 3', 'Article Test 3 sans image', '', 30, 10, '2023-01-03', 3, 2, 3);
INSERT INTO annonces VALUES (4, 3, 'Test 4', 'Article Test 4 avec image', 'networking.jpg', 40, 15, '2023-01-01', 4, 1, 3);
INSERT INTO annonces VALUES (5, 4, 'Test 5', 'Article Test 5 sans image', '', 50, 20, '2023-01-02', 5, 1, 4);
INSERT INTO annonces VALUES (6, 1, 'Test 6', 'Article Test 6 sans image', '', 25, 2, '2023-01-03', 3, 2, 1);
INSERT INTO annonces VALUES (7, 5, 'Test 7', 'Article Test 7 avec image', 'networking.jpg', 35, 3, '2023-01-01', 7, 2, 5);
INSERT INTO annonces VALUES (8, 7, 'Test 8', 'Article Test 8 sans image', '', 12, 6, '2023-01-02', 2, 1, 3);
INSERT INTO annonces VALUES (9, 8, 'Test 9', 'Article Test 9 avec image', 'networking.jpg', 15, 8, '2023-01-03', 2, 2, 2);
INSERT INTO annonces VALUES (10, 8, 'Test 10', 'Article Test 10 sans image', '', 20, 10, '2023-01-01', 6, 1, 6);

INSERT INTO role VALUES (1, 'NA');
INSERT INTO role VALUES (2, 'Admin');
INSERT INTO role VALUES (3, 'User');
INSERT INTO role VALUES (4, 'Président');
INSERT INTO role VALUES (5, 'Vice-Président');
INSERT INTO role VALUES (6, 'Trésorier');
INSERT INTO role VALUES (7, 'Secrétaire');
INSERT INTO role VALUES (8, 'Community Manager');
INSERT INTO role VALUES (9, 'Responsable CTF');

INSERT INTO staff VALUES (1, 1, 2);
INSERT INTO staff VALUES (2, 2, 5);
INSERT INTO staff VALUES (3, 3, 6);
INSERT INTO staff VALUES (4, 4, 7);
INSERT INTO staff VALUES (5, 5, 4);
INSERT INTO staff VALUES (6, 6, 9);
INSERT INTO staff VALUES (7, 7, 8);

INSERT INTO creneau VALUES (1, '2023-05-22 10:00:00', '2023-05-22 12:00:00', 'CTF');
INSERT INTO creneau VALUES (2, '2023-05-22 14:00:00', '2023-05-22 16:00:00', 'Réunion');
INSERT INTO creneau VALUES (3, '2023-05-23 09:00:00', '2023-05-23 11:00:00', 'Maintenance du réseau');
INSERT INTO creneau VALUES (5, '2023-05-25 10:00:00', '2023-05-25 12:00:00', 'CTF');
INSERT INTO creneau VALUES (6, '2023-05-25 13:00:00', '2023-05-25 15:00:00', 'Préparation dun challenge de sécurité');
INSERT INTO creneau VALUES (7, '2023-05-26 16:00:00', '2023-05-26 18:00:00', 'Réunion de planification');
INSERT INTO creneau VALUES (8, '2023-05-27 10:00:00', '2023-05-27 12:00:00', 'Analyse de vulnérabilités');
INSERT INTO creneau VALUES (9, '2023-06-03 10:00:00', '2023-06-03 12:00:00', 'CTF');    
INSERT INTO creneau VALUES (10, '2023-06-04 14:00:00', '2023-06-04 16:00:00', 'Réunion');

INSERT INTO events VALUES (1, '2023-05-15', 'Capture The Flag Practice', 'Un event pour s améliorer en hacking');
INSERT INTO events VALUES (2, '2023-06-19', 'Workshop sur la sécurité', 'Un event pour sensibiliser sur la sécurité');
INSERT INTO events VALUES (3, '2023-06-15', 'Formation sur la cybersécurité', 'Un event pour apprendre les bases de la cyber');
