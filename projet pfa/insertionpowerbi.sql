use gestionentreprise;
#insertion dans etat
INSERT INTO Etat (nom, type, pays, budget, politique_economique, impots) VALUES
('France', 'Fédéral', 'France', 5000000.00, 'Libéral', 15.00),
('USA', 'Républicain', 'USA', 8000000.00, 'Capitaliste', 20.00),
('Japon', 'Monarchique', 'Japon', 6000000.00, 'Technologique', 18.00),
('Canada', 'Fédéral', 'Canada', 7000000.00, 'Social-démocrate', 17.00),
('Allemagne', 'Républicain', 'Allemagne', 5500000.00, 'Socialiste', 16.00),
('Brésil', 'Monarchique', 'Brésil', 4000000.00, 'Fédéralisme', 14.00),
('Australie', 'Fédéral', 'Australie', 5000000.00, 'Libéral', 15.00),
('Royaume-Uni', 'Républicain', 'Royaume-Uni', 6000000.00, 'Capitaliste', 18.00),
('Espagne', 'Monarchique', 'Espagne', 4500000.00, 'Technocratique', 17.00),
('Italie', 'Fédéral', 'Italie', 7000000.00, 'Socialiste', 16.00);
 select * from Etat;
 #insertion dans compagnie
 INSERT INTO Compagnie (nom, adresse, telephone, email, idEtat) VALUES
('TechCorp', '1 Rue de la Paix, Paris', '0123456789', 'contact@techcorp.com', 1),
('Innovatech', '123 Silicon Valley, USA', '0987654321', 'info@innovatech.com', 2),
('NipponTech', '456 Tokyo Central, Japon', '0345678901', 'support@nippontech.jp', 3),
('MapleSoft', '789 Ottawa St, Canada', '0765432109', 'contact@maplesoft.ca', 4),
('SoftWorks', '567 New York St, USA', '0345123456', 'hello@softworks.com', 2),
('MediCorp', '123 Medic Street, UK', '0745392831', 'medicorp@medic.com', 8),
('GlobeTech', '33 Global Rd, Germany', '0789456789', 'globe@glotech.com', 5),
('NextGen', '42 Silicon Valley, USA', '0712345678', 'nextgen@nextgen.com', 2),
('SmartBuild', '80 High St, Australia', '0738524671', 'contact@smartbuild.com', 7),
('CleanEnergy', '55 Green Rd, Brazil', '0723456789', 'energy@cleanenergy.com', 6),
('SpeedyLog', '10 Fast St, USA', '0745678901', 'speedy@logistics.com', 2),
('FashionHub', '88 Trendy Rd, Italy', '0698765432', 'style@fashionhub.com', 10),
('TechnoElite', '60 Innovation St, France', '0654342321', 'elite@techno.com', 1),
('AutoDrive', '70 Car Rd, Germany', '0765432321', 'contact@autodrive.com', 5),
('GreenPlanet', '45 Eco St, Canada', '0798765432', 'green@planet.com', 4),
('BuildPro', '60 Construction Rd, Australia', '0789456721', 'build@buildpro.com', 7),
('FoodieCo', '25 Tasty Rd, France', '0601234567', 'info@foodieco.com', 1),
('EduTech', '100 Learn Ave, Japan', '0654328765', 'edutech@edu.com', 3),
('CloudNet', '200 Cloud St, UK', '0789432109', 'info@cloudnet.com', 8),
('CyberSolutions', '900 Tech Rd, USA', '0789453210', 'cyber@cyber.com', 2);
select *from compagnie;
#insertion produit
INSERT INTO Produit (nom, description, prix, idCompagnie, stock) 
VALUES
('Smartphone Galaxy', 'Un smartphone Android haut de gamme avec un écran OLED de 6,5 pouces.', 899.99, 1,50),
('Ordinateur Portable X1', 'Ordinateur portable léger et puissant avec un processeur Intel i7.', 1299.99, 1,50),
('Montre Connectée FitPro', 'Montre connectée avec suivi de la santé, notifications et GPS intégré.', 199.99, 2,400),
('Casque Audio ProSound', 'Casque sans fil avec réduction de bruit active et son haute définition.', 249.99, 2,800),
('Appareil Photo Reflex EOS', 'Appareil photo reflex numérique avec objectifs interchangeables.', 799.99, 3,900),
('Tablette TabPro 10', 'Tablette Android de 10 pouces avec un processeur octa-core et 4 Go de RAM.', 349.99, 3,1000),
('Enceinte Bluetooth BoomBox', 'Enceinte Bluetooth portable avec son stéréo puissant et étanchéité IPX7.', 129.99, 4,800),
('Coffre-Fort Sécurisé SafeLock', 'Coffre-fort avec serrure à code et système de sécurité avancé.', 599.99, 4,777),
('Lunettes de Soleil Polarize', 'Lunettes de soleil avec protection UV et verres polarisés.', 79.99, 5,10000),
('Clé USB FlashSpeed 128 Go', 'Clé USB 3.0 avec 128 Go de stockage rapide et design compact.', 49.99, 5,933),
('Tapis de Yoga Relax', 'Tapis de yoga antidérapant et écologique, parfait pour la pratique du yoga à domicile.', 29.99, 6,744),
('Chaise Ergonomique ComfortPro', 'Chaise de bureau ergonomique avec soutien lombaire et ajustabilité complète.', 159.99, 6,852),
('Réfrigérateur InoxCool', 'Réfrigérateur avec congélateur en bas, capacité 400L et classe énergétique A++.', 799.99, 7,965),
('Cuisinière Vitrocéramique Flexi', 'Cuisinière à vitrocéramique avec 4 foyers et four multifonction.', 499.99, 7,441),
('Robot Aspirateur SmartClean', 'Aspirateur robot intelligent avec navigation autonome et station de recharge.', 349.99, 8,777),
('Barbecue Gaz GrillPro', 'Barbecue à gaz avec surface de cuisson de 3 zones et système de sécurité intégré.', 349.99, 8,855),
('Brosse à Dents SonicClean', 'Brosse à dents électrique avec 3 modes de nettoyage et technologie sonique.', 89.99, 9,8555),
('Sèche-Cheveux TurboDry', 'Sèche-cheveux professionnel avec 3 réglages de vitesse et technologie ionique.', 79.99, 9,855),
('Écouteurs Sans Fil BeatBuds', 'Écouteurs Bluetooth sans fil avec autonomie de 12 heures et qualité sonore premium.', 99.99, 10,7444),
('Chaussures de Course SpeedRun', 'Chaussures de course légères avec semelle absorbant les chocs et technologie de ventilation.', 119.99, 10,888),
('Vélo Électrique CityRide', 'Vélo électrique avec moteur de 250W, batterie lithium-ion et autonomie de 60 km.', 799.99, 1,9666),
('Montre de Sport Enduro', 'Montre de sport avec GPS, suivi des performances et étanchéité jusqu’à 100m.', 249.99, 1,78855),
('Tente de Camping UltraLight', 'Tente de camping légère et résistante avec 2 places et imperméabilité renforcée.', 139.99, 2,855),
('Sac à Dos Trekker', 'Sac à dos de randonnée avec plusieurs compartiments et système de ventilation.', 79.99, 2,966),
('Grille-Pain ProToast', 'Grille-pain avec 6 niveaux de brunissement et fonction de décongélation.', 39.99, 3,8544),
('Machine à Café EspressoMax', 'Machine à café espresso avec système de mousse de lait et réservoir de 1,5L.', 179.99, 3,966),
('Trousse de Premiers Secours SafeKit', 'Trousse de premiers secours avec 150 accessoires pour toute situation d’urgence.', 29.99, 4,844),
('Lampe de Bureau LED SmartLight', 'Lampe de bureau avec réglage de la luminosité et de la température de couleur.', 49.99, 4,5222),
('Appareil de Massage RelaxFit', 'Appareil de massage électrique pour soulager les tensions musculaires et améliorer la circulation.', 89.99, 5,522),
('Moulin à Poivre AutoGrind', 'Moulin à poivre électrique avec réglage de la mouture et design moderne.', 29.99, 5,844),
('Bouteille Isotherme ThermoCup', 'Bouteille isotherme avec capacité de 500 ml et maintien de la température pendant 12h.', 19.99, 6,966),
('Serviette de Plage SunRelax', 'Serviette de plage ultra-absorbante et douce avec motif exclusif.', 24.99, 6,755),
('Aspirateur à Main MiniClean', 'Aspirateur à main sans fil avec grande capacité de récupération de poussière.', 59.99, 7,855),
('Climatiseur Mobile CoolBreeze', 'Climatiseur mobile avec 3 vitesses et fonction déshumidification.', 299.99, 7,744),
('Console de Jeu GameBox 4K', 'Console de jeu ultra-rapide avec résolution 4K et jeux préinstallés.', 499.99, 8,300),
('Casque VR VisionPro', 'Casque de réalité virtuelle avec expérience immersive et compatibilité multiplateforme.', 349.99, 8,855),
('Appareil de Cuisine Multifonction CookPro', 'Appareil de cuisine 12 en 1 pour la préparation de repas, soupes et smoothies.', 199.99, 9,8455),
('Gant de Boxe ProFight', 'Gants de boxe en cuir avec rembourrage haute densité pour la protection des poignets.', 69.99, 9,966),
('Table de Ping-Pong ProServe', 'Table de ping-pong avec surface de jeu en MDF et système de rangement intégré.', 399.99, 10,822),
('Balle de Tennis TourMaster', 'Balles de tennis haute performance pour jeux sur surfaces dures.', 19.99, 10,844),
('Chaise de Plage RelaxSun', 'Chaise de plage légère et compacte avec porte-gobelet intégré.', 29.99, 1,362),
('Canapé Convertible Flexi', 'Canapé convertible avec matelas mémoire et coussins amovibles.', 499.99, 1,744),
('Générateur Électrique PowerGen', 'Générateur portable avec une capacité de 2000W et démarrage facile.', 499.99, 2,7444),
('Machine à Pop-Corn PopStar', 'Machine à pop-corn électrique avec capacité de 1L et design rétro.', 39.99, 2,96),
('Tondeuse à Gazon ProCut', 'Tondeuse à gazon électrique avec une coupe précise et moteur puissant.', 119.99, 3,855),
('Pelle à Neige SnowClear', 'Pelle à neige ergonomique avec manche télescopique et lame en acier.', 29.99, 3,52),
('Barre de Son UltraSound', 'Barre de son Bluetooth avec basses profondes et connectivité facile.', 149.99, 4,30),
('Microphone USB StudioPro', 'Microphone USB pour enregistrement professionnel avec isolation acoustique.', 89.99, 4,74),
('Kit de Peinture ArtMaster', 'Kit de peinture complet avec pinceaux, toiles et couleurs pour artistes débutants et avancés.', 59.99, 5,744),
('Trousse de Maquillage Glamour', 'Trousse de maquillage avec tous les essentiels pour un maquillage de tous les jours.', 49.99, 5,955);

#insertion dans Employe id compagnie1
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Dupont', 'Jean', 'RH', 3200.00, 1),
('Leclerc', 'Sophie', 'Livreur', 2500.00, 1),
('Martin', 'Lucie', 'Technicien', 3000.00, 1),
('Pires', 'Michel', 'Agent Financier', 4200.00, 1),
('Moreau', 'Pierre', 'RH', 3300.00, 1),
('Girard', 'Marc', 'Livreur', 2200.00, 1),
('Meunier', 'Camille', 'Technicien', 3100.00, 1),
('Lemoine', 'Anne', 'Agent Financier', 4000.00, 1),
('Baron', 'Thomas', 'RH', 2700.00, 1),
('Lambert', 'Julie', 'Livreur', 2400.00, 1),
('Hernandez', 'Carlos', 'Technicien', 3200.00, 1),
('Fournier', 'Luc', 'Agent Financier', 4300.00, 1),
('Pirelli', 'Ariane', 'Livreur', 2300.00, 1),
('Rousseau', 'Claudia', 'Technicien', 2900.00, 1),
('Langlois', 'Bruno', 'RH', 3100.00, 1),
('Huguet', 'François', 'Livreur', 2400.00, 1),
('Lopez', 'Victoria', 'Agent Financier', 3800.00, 1),
('Benoit', 'Maxime', 'Technicien', 3500.00, 1),
('Klein', 'Chantal', 'RH', 3200.00, 1);

#insertion dans Employe id compagnie2
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Lemoine', 'Alice', 'Livreur', 2600.00, 2),
('Mercier', 'David', 'Technicien', 3000.00, 2),
('Chavez', 'José', 'Agent Financier', 4500.00, 2),
('Garcia', 'Lucia', 'RH', 2800.00, 2),
('Blanc', 'Éric', 'Livreur', 2350.00, 2),
('Lang', 'Vivian', 'Technicien', 3100.00, 2),
('Dumont', 'Sophie', 'Agent Financier', 4200.00, 2),
('Lemoine', 'Marc', 'RH', 2700.00, 2),
('Fontaine', 'Pierre', 'Livreur', 2400.00, 2),
('Gupta', 'Rahul', 'Technicien', 3000.00, 2),
('Héron', 'Claire', 'Agent Financier', 4000.00, 2),
('Yamamoto', 'Hiroshi', 'RH', 3100.00, 2),
('Bois', 'Aline', 'Livreur', 2500.00, 2),
('Richard', 'Thierry', 'Technicien', 3200.00, 2),
('Rivière', 'Nicolas', 'Agent Financier', 4300.00, 2),
('Sato', 'Ayaka', 'RH', 2900.00, 2),
('Cohen', 'Simon', 'Livreur', 2250.00, 2),
('Boucher', 'Pierre', 'Technicien', 3100.00, 2),
('Moulin', 'Sophie', 'Agent Financier', 3800.00, 2);
#insertion dans Employe id compagnie3
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Dupont', 'Julien', 'RH', 3500.00, 3),
('Lemoine', 'Bernard', 'Livreur', 2700.00, 3),
('Miller', 'Hélène', 'Technicien', 3300.00, 3),
('Leblanc', 'Claude', 'Agent Financier', 4600.00, 3),
('Girard', 'Sophie', 'RH', 2900.00, 3),
('Tanguy', 'Édith', 'Livreur', 2550.00, 3),
('Chauvin', 'Marc', 'Technicien', 3400.00, 3),
('Perrier', 'Alice', 'Agent Financier', 4400.00, 3),
('Dupuis', 'Sylvain', 'RH', 3100.00, 3),
('Bourgeois', 'Sébastien', 'Livreur', 2300.00, 3),
('Rivière', 'Marianne', 'Technicien', 3200.00, 3),
('Dufresne', 'Valérie', 'Agent Financier', 4200.00, 3),
('Hoffmann', 'Max', 'Livreur', 2400.00, 3),
('Martin', 'Caroline', 'Technicien', 3100.00, 3),
('Langlois', 'Lina', 'RH', 2800.00, 3),
('Thompson', 'James', 'Livreur', 2600.00, 3),
('Duval', 'Marie', 'Technicien', 3300.00, 3),
('Chretien', 'Robert', 'Agent Financier', 4300.00, 3),
('Sullivan', 'Andrew', 'RH', 3200.00, 3);
#insertion dans Employe id compagnie4
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Benoit', 'Pierre', 'RH', 3300.00, 4),
('Leclerc', 'Maxime', 'Livreur', 2700.00, 4),
('Muller', 'Hélène', 'Technicien', 3000.00, 4),
('Da Silva', 'Carlos', 'Agent Financier', 4500.00, 4),
('Nunes', 'Isabelle', 'RH', 3100.00, 4),
('Lambert', 'Juliette', 'Livreur', 2400.00, 4),
('Meyer', 'Marie', 'Technicien', 3200.00, 4),
('Garcia', 'Jean', 'Agent Financier', 4200.00, 4),
('Boucher', 'Claude', 'RH', 2800.00, 4),
('Santos', 'Raul', 'Livreur', 2300.00, 4),
('Truong', 'Linh', 'Technicien', 3100.00, 4),
('Hughes', 'Nathan', 'Agent Financier', 4300.00, 4),
('Klein', 'Lucie', 'Livreur', 2500.00, 4),
('Martinez', 'Rafael', 'Technicien', 3400.00, 4),
('Lemoine', 'Albert', 'RH', 3000.00, 4),
('Girard', 'Paul', 'Livreur', 2200.00, 4),
('Chavez', 'Juan', 'Technicien', 3300.00, 4),
('Dumas', 'Bernadette', 'Agent Financier', 4400.00, 4),
('Moulin', 'Michel', 'RH', 3100.00, 4);
#insertion dans Employe id compagnie5
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Perrot', 'Nicolas', 'RH', 3200.00, 5),
('Lemoine', 'Estelle', 'Livreur', 2300.00, 5),
('Langlois', 'Emilie', 'Technicien', 3500.00, 5),
('Martin', 'Bertrand', 'Agent Financier', 4600.00, 5),
('Bouchard', 'Sophie', 'RH', 2900.00, 5),
('Dupuy', 'Jacques', 'Livreur', 2400.00, 5),
('Naves', 'Christine', 'Technicien', 3100.00, 5),
('Giroux', 'David', 'Agent Financier', 4200.00, 5),
('Lemoine', 'Jérôme', 'RH', 2800.00, 5),
('Leclerc', 'Claude', 'Livreur', 2200.00, 5),
('Tanguy', 'François', 'Technicien', 3000.00, 5),
('Thompson', 'Sarah', 'Agent Financier', 4300.00, 5),
('Brunet', 'Pascal', 'Livreur', 2500.00, 5),
('Bois', 'Sophie', 'Technicien', 3300.00, 5),
('Meyer', 'Florence', 'RH', 3100.00, 5),
('Martin', 'Jacques', 'Livreur', 2300.00, 5),
('Nguyen', 'Pierre', 'Technicien', 3400.00, 5),
('Klein', 'Lucie', 'Agent Financier', 4000.00, 5),
('Hughes', 'Nicole', 'RH', 2900.00, 5);
#insertion dans Employe id compagnie6
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Dufresne', 'Julien', 'RH', 3300.00, 6),
('Dubois', 'Clément', 'Livreur', 2700.00, 6),
('Vasseur', 'Léo', 'Technicien', 3100.00, 6),
('Santos', 'Ana', 'Agent Financier', 4400.00, 6),
('Lemoine', 'Sylvie', 'RH', 3000.00, 6),
('Lemoine', 'Benjamin', 'Livreur', 2400.00, 6),
('Tanguy', 'Denis', 'Technicien', 3400.00, 6),
('Sophie', 'Éric', 'Agent Financier', 4500.00, 6),
('Brunet', 'Luc', 'RH', 2900.00, 6),
('Santos', 'Raul', 'Livreur', 2200.00, 6),
('Giroux', 'Émilie', 'Technicien', 3200.00, 6),
('Dupont', 'Jean', 'Agent Financier', 4300.00, 6),
('Pires', 'Patricia', 'Livreur', 2500.00, 6),
('Moulin', 'Bernard', 'Technicien', 3300.00, 6),
('Girard', 'Maurice', 'RH', 3100.00, 6),
('Klein', 'Bruno', 'Livreur', 2300.00, 6),
('Boucher', 'Catherine', 'Technicien', 3000.00, 6),
('Thompson', 'Louis', 'Agent Financier', 4200.00, 6),
('Rivière', 'Juliette', 'RH', 2800.00, 6);
#insertion dans Employe id compagnie7
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Perrot', 'Maxime', 'RH', 3100.00, 7),
('Meyer', 'Sophie', 'Livreur', 2500.00, 7),
('Dubois', 'Clara', 'Technicien', 3000.00, 7),
('Chavez', 'Luis', 'Agent Financier', 4400.00, 7),
('Lemoine', 'Léa', 'RH', 2900.00, 7),
('Tanguy', 'Paul', 'Livreur', 2400.00, 7),
('Tanguy', 'Bernadette', 'Technicien', 3200.00, 7),
('Moulin', 'Isabelle', 'Agent Financier', 4200.00, 7),
('Lopez', 'Carmen', 'RH', 2800.00, 7),
('Nguyen', 'Thierry', 'Livreur', 2200.00, 7),
('Meyer', 'Patricia', 'Technicien', 3100.00, 7),
('Santos', 'Camille', 'Agent Financier', 4300.00, 7),
('Klein', 'Nicolas', 'Livreur', 2500.00, 7),
('Moulin', 'Jean', 'Technicien', 3300.00, 7),
('Perrot', 'André', 'RH', 3100.00, 7),
('Santos', 'Sandra', 'Livreur', 2300.00, 7),
('Dupont', 'Gérard', 'Technicien', 3000.00, 7),
('Rivière', 'Alexandre', 'Agent Financier', 4100.00, 7),
('Vasseur', 'Bernard', 'RH', 3200.00, 7);
#insertion dans Employe id compagnie8
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Dufresne', 'Carole', 'RH', 3100.00, 8),
('Gautier', 'Jean', 'Livreur', 2600.00, 8),
('Meyer', 'Elodie', 'Technicien', 3200.00, 8),
('Nguyen', 'Lucie', 'Agent Financier', 4400.00, 8),
('Perrot', 'Henri', 'RH', 2900.00, 8),
('Lemoine', 'Camille', 'Livreur', 2300.00, 8),
('Martin', 'Pierre', 'Technicien', 3400.00, 8),
('Pires', 'Antoine', 'Agent Financier', 4500.00, 8),
('Vasseur', 'Julie', 'RH', 2800.00, 8),
('Boucher', 'Maxime', 'Livreur', 2400.00, 8);
#insertion dans Employe id compagnie9
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Garcia', 'Luis', 'RH', 3000.00, 9),
('Santos', 'Jérôme', 'Livreur', 2200.00, 9),
('Vasseur', 'Renée', 'Technicien', 3100.00, 9),
('Dumas', 'Géraldine', 'Agent Financier', 4300.00, 9),
('Lopez', 'Marc', 'RH', 2900.00, 9),
('Truong', 'Thierry', 'Livreur', 2300.00, 9),
('Boucher', 'Claude', 'Technicien', 3300.00, 9),
('Klein', 'Julie', 'Agent Financier', 4200.00, 9),
('Giroux', 'Denis', 'RH', 3100.00, 9),
('Thompson', 'Marie', 'Livreur', 2400.00, 9);
#insertion dans Employe id compagnie10
INSERT INTO Employe (nom, prenom, poste, salaire, idCompagnie)
VALUES 
('Dufresne', 'Michel', 'RH', 3200.00, 10),
('Santos', 'Pierre', 'Livreur', 2500.00, 10),
('Lopez', 'Béatrice', 'Technicien', 3300.00, 10),
('Dupont', 'Clément', 'Agent Financier', 4400.00, 10),
('Martin', 'Isabelle', 'RH', 2900.00, 10),
('Tanguy', 'David', 'Livreur', 2200.00, 10),
('Vasseur', 'André', 'Technicien', 3200.00, 10),
('Moulin', 'Georges', 'Agent Financier', 4300.00, 10),
('Leclerc', 'Brigitte', 'RH', 2800.00, 10),
('Klein', 'Philippe', 'Livreur', 2300.00, 10);
#insertion RH dans Employe id compagnie1
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(1, 'Gestion des recrutements et des formations'),
(5, 'Suivi des conditions de travail et des litiges'),
(9, 'Gestion des contrats et de la paie'),
(15, 'Mise en place de la politique de bien-être au travail'),
(19, 'Accompagnement des employés dans leurs parcours professionnels');
#insertion RH dans Employe id compagnie2
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(23, 'Recrutement des employés et gestion de la formation'),
(27, 'Suivi de la politique salariale et des primes'),
(31, 'Mise en place d’initiatives de bien-être au travail'),
(35, 'Organisation des événements d’équipe et des séminaires');
#insertion RH dans Employe id compagnie3
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(39, 'Gestion des relations avec les syndicats et les comités d’entreprise'),
(43, 'Planification des évaluations annuelles et des augmentations'),
(47, 'Supervision du processus de recrutement et d’intégration'),
(53, 'Gestion des conflits et des évaluations de performance'),
(57, 'Suivi des fiches de paie et des bonus');
#insertion RH dans Employe id compagnie4
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(58, 'Gestion des recrutements et des formations'),
(62, 'Accompagnement des employés dans leurs parcours professionnels'),
(66, 'Gestion des contrats et de la paie'),
(72, 'Mise en place d’initiatives de bien-être au travail'),
(76, 'Suivi des objectifs de développement personnel et professionnel');
#insertion RH dans Employe id compagnie5
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(77, 'Mise en place de la politique salariale et des primes'),
(81, 'Gestion des recrutements et des formations'),
(85, 'Accompagnement des employés dans leurs parcours professionnels'),
(91, 'Gestion des conflits et des évaluations de performance'),
(95, 'Suivi des fiches de paie et des bonus');
#insertion RH dans Employe id compagnie6
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(96, 'Organisation des événements d’équipe et des séminaires'),
(100, 'Gestion des conditions de travail et des litiges'),
(104, 'Suivi des objectifs de développement personnel et professionnel'),
(110, 'Supervision du processus de recrutement et d’intégration'),
(114, 'Développement et suivi des plans de carrière');
#insertion RH dans Employe id compagnie7
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(115, 'Suivi des fiches de paie et des bonus'),
(119, 'Planification des évaluations annuelles et des augmentations'),
(123, 'Accompagnement des employés dans leurs parcours professionnels'),
(129, 'Rédaction des rapports de performance et des évaluations'),
(133, 'Gestion des relations avec les syndicats et les comités d’entreprise');
#insertion RH dans Employe id compagnie8
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(134, 'Recrutement des employés et gestion de la formation'),
(138, 'Gestion des contrats et de la paie'),
(142, 'Suivi des conditions de travail et des litiges');
#insertion RH dans Employe id compagnie9
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(144, 'Suivi des objectifs de développement personnel et professionnel'),
(148, 'Recrutement des employés et gestion de la formation'),
(152, 'Planification des évaluations annuelles et des augmentations');
#insertion RH dans Employe id compagnie10
INSERT INTO RH (idEmploye, responsabilites)
VALUES 
(154, 'Accompagnement des employés dans leurs parcours professionnels'),
(158, 'Suivi des fiches de paie et des bonus'),
(162, 'Gestion des recrutements et des formations');
#livreur companie 1
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(2, 'Scooter', 'Zone industrielle'),
(6, 'Vélo électrique', 'Centre-ville'),
(10, 'Vélo', 'Quartier résidentiel'),
(13, 'Scooter', 'Périphérie urbaine'),
(16, 'Vélo électrique', 'Rues commerçantes');
#livreur companie 2
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(20, 'Vélo', 'Zone industrielle'),
(24, 'Scooter', 'Quartier résidentiel'),
(28, 'Vélo électrique', 'Centre-ville'),
(32, 'Scooter', 'Périphérie urbaine'),
(33, 'Vélo', 'Rues commerçantes');
#livreur companie 3
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(40, 'Vélo', 'Zone industrielle'),
(44, 'Scooter', 'Quartier résidentiel'),
(48, 'Vélo électrique', 'Centre-ville'),
(51, 'Scooter', 'Périphérie urbaine'),
(54, 'Vélo', 'Rues commerçantes');
#livreur companie 4
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(59, 'Scooter', 'Zone industrielle'),
(63, 'Vélo', 'Quartier résidentiel'),
(67, 'Vélo électrique', 'Centre-ville'),
(70, 'Scooter', 'Périphérie urbaine'),
(73, 'Vélo', 'Rues commerçantes');
#livreur companie 5
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(78, 'Vélo électrique', 'Zone industrielle'),
(82, 'Scooter', 'Quartier résidentiel'),
(86, 'Vélo', 'Centre-ville'),
(92, 'Scooter', 'Périphérie urbaine');
#livreur companie 6
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(97, 'Scooter', 'Zone industrielle'),
(101, 'Vélo', 'Quartier résidentiel'),
(105, 'Vélo électrique', 'Centre-ville'),
(108, 'Scooter', 'Périphérie urbaine'),
(111, 'Vélo', 'Rues commerçantes');
#livreur companie 7
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(116, 'Vélo', 'Zone industrielle'),
(120, 'Scooter', 'Quartier résidentiel'),
(124, 'Vélo électrique', 'Centre-ville'),
(127, 'Scooter', 'Périphérie urbaine'),
(130, 'Vélo', 'Rues commerçantes');
#livreur companie 8
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(135, 'Vélo', 'Zone industrielle'),
(139, 'Scooter', 'Quartier résidentiel'),
(143, 'Vélo électrique', 'Centre-ville');
#livreur companie 9
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(145, 'Scooter', 'Zone industrielle'),
(149, 'Vélo', 'Quartier résidentiel'),
(153, 'Vélo électrique', 'Centre-ville');
#livreur companie 10
INSERT INTO Livreur (idEmploye, vehicule, zone_de_livraison) 
VALUES 
(155, 'Vélo électrique', 'Zone industrielle'),
(159, 'Scooter', 'Quartier résidentiel'),
(163, 'Vélo', 'Centre-ville');
-- Insertion dans Technicien pour compagnie 1
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(3, 'Maintenance informatique', 'Intermédiaire'),
(7, 'Réparation équipements électroniques', 'Débutant'),
(11, 'Systèmes de sécurité', 'Expert'),
(14, 'Gestion de réseau informatique', 'Intermédiaire'),
(18, 'Support technique matériel', 'Débutant');

-- Insertion dans Technicien pour compagnie 2
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(21, 'Technologie de communication', 'Intermédiaire'),
(25, 'Gestion des systèmes de données', 'Expert'),
(29, 'Soutien en infrastructure informatique', 'Débutant'),
(33, 'Automatisation des systèmes', 'Intermédiaire'),
(37, 'Conseil en technologie', 'Expert');

-- Insertion dans Technicien pour compagnie 3
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(41, 'Contrôle de qualité', 'Débutant'),
(45, 'Systèmes embarqués', 'Expert'),
(49, 'Maintenance industrielle', 'Intermédiaire'),
(52, 'Services cloud', 'Intermédiaire'),
(55, 'Technologie de gestion des données', 'Expert');

-- Insertion dans Technicien pour compagnie 4
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(60, 'Télécommunications', 'Débutant'),
(64, 'Réseau et cybersécurité', 'Expert'),
(68, 'Optimisation des performances système', 'Intermédiaire'),
(71, 'Soutien aux logiciels d\'entreprise', 'Débutant'),
(74, 'Analyse et conception logicielle', 'Expert');

-- Insertion dans Technicien pour compagnie 5
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(79, 'Systèmes exploitation', 'Intermédiaire'),
(83, 'Maintenance des infrastructures réseau', 'Expert'),
(87, 'Réparation et installation de matériels', 'Débutant'),
(90, 'Gestion des applications logicielles', 'Intermédiaire'),
(93, 'Développement outils personnalisés', 'Expert');

-- Insertion dans Technicien pour compagnie 6
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(102, 'Systèmes exploitation', 'Intermédiaire'),
(106, 'Maintenance des infrastructures réseau', 'Expert'),
(109, 'Réparation et installation de matériels', 'Débutant'),
(112, 'Gestion des applications logicielles', 'Intermédiaire');
-- Insertion dans Technicien pour compagnie 7
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(117, 'Systèmes dinformation', 'Expert'),
(121, 'Soutien logiciel', 'Intermédiaire'),
(125, 'Réparation équipements électroniques', 'Débutant'),
(128, 'Sécurité des réseaux', 'Expert'),
(131, 'Gestion de la performance des applications', 'Intermédiaire');

-- Insertion dans Technicien pour compagnie 8
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(136, 'Maintenance logicielle', 'Débutant'),
(140, 'Conseil en infrastructure', 'Expert');

-- Insertion dans Technicien pour compagnie 9
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(146, 'Contrôle des systèmes', 'Débutant'),
(150, 'Optimisation des systèmes', 'Expert');

-- Insertion dans Technicien pour compagnie 10
INSERT INTO Technicien (idEmploye, specialite, niveau_competence)
VALUES
(156, 'Contrôle des systèmes', 'Débutant'),
(160, 'Optimisation des systèmes', 'Expert');

-- Insertion dans AgentFinancier pour compagnie 1
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(4, 'Gestion financière', 150000.00),
(8, 'Contrôle de gestion', 200000.50),
(12, 'Audit financier', 120000.00),
(17, 'Gestion des investissements', 500000.75);

-- Insertion dans AgentFinancier pour compagnie 2
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(22, 'Analyse financière', 300000.00),
(26, 'Planification budgétaire', 100000.00),
(30, 'Stratégie financière', 450000.25),
(34, 'Reporting financier', 120000.00),
(38, 'Optimisation des coûts', 75000.50);

-- Insertion dans AgentFinancier pour compagnie 3
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(42, 'Gestion de trésorerie', 350000.00),
(46, 'Conseil fiscal', 200000.00),
(50, 'Gestion des actifs', 600000.00),
(56, 'Analyse des risques financiers', 400000.75);

-- Insertion dans AgentFinancier pour compagnie 4
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(61, 'Gestion des portefeuilles', 800000.00),
(65, 'Suivi des investissements', 500000.00),
(69, 'Gestion des risques', 120000.50),
(75, 'Financement des projets', 600000.00);

-- Insertion dans AgentFinancier pour compagnie 5
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(80, 'Contrôle budgétaire', 150000.00),
(84, 'Analyse des coûts', 350000.00),
(88, 'Planification stratégique', 750000.50),
(94, 'Gestion des crédits', 450000.75);

-- Insertion dans AgentFinancier pour compagnie 6
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(99, 'Contrôle budgétaire', 150000.00),
(103, 'Analyse des coûts', 350000.00),
(107, 'Planification stratégique', 750000.50),
(113, 'Gestion des crédits', 450000.75);

-- Insertion dans AgentFinancier pour compagnie 7
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(118, 'Gestion des fonds', 1000000.00),
(122, 'Audit interne', 250000.00),
(126, 'Comptabilité analytique', 600000.00),
(132, 'Planification fiscale', 300000.25);

-- Insertion dans AgentFinancier pour compagnie 8
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(137, 'Analyse des investissements', 500000.00),
(141, 'Gestion des liquidités', 350000.50);

-- Insertion dans AgentFinancier pour compagnie 9
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(147, 'Audit externe', 450000.00),
(151, 'Planification stratégique', 550000.50);
-- Insertion dans AgentFinancier pour compagnie 10
INSERT INTO AgentFinancier (idEmploye, domaine, budget_gere)
VALUES
(157, 'Audit externe', 450000.00),
(161, 'Planification stratégique', 550000.50);
select *from employe
#insertion client:

INSERT INTO Client (nom, prenom, email, adresse, telephone)
VALUES 
('Dupont', 'Marie', 'marie.dupont@email.com', '12 rue de la Liberté, Paris', '0123456789'),
('Martin', 'Sophie', 'sophie.martin@email.com', '45 rue de la Paix, Lyon', '0234567890'),
('Lemoine', 'Claire', 'claire.lemoine@email.com', '78 avenue des Champs, Toulouse', '0345678901'),
('Durand', 'Lucie', 'lucie.durand@email.com', '56 boulevard Saint-Germain, Paris', '0456789012'),
('Bertrand', 'Anne', 'anne.bertrand@email.com', '23 rue de la République, Marseille', '0567890123'),
('Lefevre', 'Julie', 'julie.lefevre@email.com', '89 avenue des Ternes, Lille', '0678901234'),
('Roussel', 'Caroline', 'caroline.roussel@email.com', '34 place de l’Opéra, Nantes', '0789012345'),
('Girard', 'Catherine', 'catherine.girard@email.com', '12 rue Victor Hugo, Nice', '0890123456'),
('Fournier', 'Emilie', 'emilie.fournier@email.com', '90 rue de la République, Strasbourg', '0901234567'),
('Gauthier', 'Virginie', 'virginie.gauthier@email.com', '34 avenue des Champs, Bordeaux', '1012345678'),
('Blanc', 'Isabelle', 'isabelle.blanc@email.com', '67 rue du Faubourg, Montpellier', '1123456789'),
('Dufresne', 'Amandine', 'amandine.dufresne@email.com', '12 rue de la Gare, Rennes', '1234567890'),
('Robert', 'Hélène', 'helene.robert@email.com', '56 rue de l’Église, Paris', '1345678901'),
('Garnier', 'Anne', 'anne.garnier@email.com', '67 avenue du Général Leclerc, Nantes', '1456789012'),
('Benoit', 'Marion', 'marion.benoit@email.com', '89 rue des Docks, Toulouse', '1567890123'),
('Guillaume', 'Nathalie', 'nathalie.guillaume@email.com', '23 rue de l’Église, Lyon', '1678901234'),
('Morin', 'Elisabeth', 'elisabeth.morin@email.com', '34 rue de la Paix, Paris', '1789012345'),
('Lemoine', 'Julie', 'julie.lemoine@email.com', '12 rue des Alpes, Nice', '1890123456'),
('Michel', 'Florence', 'florence.michel@email.com', '90 rue de la Ville, Marseille', '1901234567'),
('Richard', 'Juliette', 'juliette.richard@email.com', '45 rue des Ternes, Bordeaux', '2012345678');


#insertion commande :
INSERT INTO Commande (idClient, dateCommande, statut, idCompagnie)
VALUES 
(1, '2025-04-01', 'Livrée', 1),
(2, '2025-04-02', 'En cours', 2),
(3, '2025-04-03', 'Annulée', 3),
(4, '2025-04-04', 'Livrée', 4),
(5, '2025-04-05', 'En cours', 5),
(6, '2025-04-06', 'Livrée', 6),
(7, '2025-04-07', 'Annulée', 7),
(8, '2025-04-08', 'Livrée', 8),
(9, '2025-04-09', 'En cours', 9),
(10, '2025-04-10', 'Livrée', 10),
(11, '2025-04-11', 'Annulée', 1),
(12, '2025-04-12', 'Livrée', 2),
(13, '2025-04-13', 'En cours', 3),
(14, '2025-04-14', 'Livrée', 4),
(15, '2025-04-15', 'Annulée', 5),
(16, '2025-04-16', 'Livrée', 6),
(17, '2025-04-17', 'En cours', 7),
(18, '2025-04-18', 'Livrée', 8),
(19, '2025-04-19', 'Annulée', 9),
(20, '2025-04-20', 'Livrée', 10),
(1, '2025-04-21', 'En cours', 1),
(2, '2025-04-22', 'Livrée', 2),
(3, '2025-04-23', 'Annulée', 3),
(4, '2025-04-24', 'Livrée', 4),
(5, '2025-04-25', 'En cours', 5),
(6, '2025-04-26', 'Livrée', 6),
(7, '2025-04-27', 'Annulée', 7),
(8, '2025-04-28', 'Livrée', 8),
(9, '2025-04-29', 'En cours', 9),
(10, '2025-04-30', 'Livrée', 10),
(11, '2025-05-01', 'Annulée', 1),
(12, '2025-05-02', 'Livrée', 2),
(13, '2025-05-03', 'En cours', 3),
(14, '2025-05-04', 'Livrée', 4),
(15, '2025-05-05', 'Annulée', 5),
(16, '2025-05-06', 'Livrée', 6),
(17, '2025-05-07', 'En cours', 7),
(18, '2025-05-08', 'Livrée', 8),
(19, '2025-05-09', 'Annulée', 9),
(20, '2025-05-10', 'Livrée', 10);
select * from commande ;
#insertion dans ligne de commande
 INSERT INTO LigneCommande (idCommande, idProduit, quantite, prixUnitaire, id_livreur)
VALUES 
(1, 1, 2, 899.99, 2), 
(1, 3, 1, 199.99, 6),
(2, 2, 1, 1299.99, 10), 
(2, 4, 3, 249.99, 13), 
(3, 5, 2, 799.99, 20), 
(4, 6, 1, 349.99, 24), 
(5, 8, 1, 349.99, 28), 
(6, 9, 2, 89.99, 32), 
(7, 7, 1, 799.99, 33), 
(8, 10, 1, 119.99, 40), 
(9, 11, 2, 249.99, 44), 
(10, 12, 1, 139.99, 48), 
(11, 13, 1, 79.99, 51), 
(12, 14, 1, 39.99, 54), 
(13, 15, 2, 179.99, 59), 
(14, 16, 1, 29.99, 63), 
(15, 17, 1, 49.99, 67), 
(16, 18, 2, 89.99, 70), 
(17, 19, 3, 29.99, 73), 
(18, 20, 1, 19.99, 78), 
(19, 21, 2, 24.99, 82), 
(20, 22, 1, 59.99, 86), 
(21, 23, 1, 299.99, 92), 
(22, 24, 2, 499.99, 97),
(23, 25, 3, 349.99, 101), 
(24, 26, 1, 199.99, 105), 
(25, 27, 4, 69.99, 108), 
(26, 28, 2, 399.99, 111),
(27, 29, 1, 19.99, 116), 
(28, 30, 1, 29.99, 120), 
(29, 31, 1, 499.99, 124), 
(30, 32, 1, 499.99, 127), 
(31, 33, 2, 39.99, 130), 
(32, 34, 1, 119.99, 135), 
(33, 35, 2, 29.99, 139),
(34, 36, 1, 149.99, 143), 
(35, 37, 3, 89.99, 145), 
(36, 38, 1, 59.99, 149), 
(37, 39, 2, 49.99, 153), 
(38, 40, 1, 499.99, 155), 
(39, 41, 1, 299.99, 159), 
(40, 42, 2, 349.99, 163);
select * from LigneCommande;

INSERT INTO Assurance (type, couverture, cout, idCompagnie)
VALUES 
('Produit', 'Couverture pour dommages matériels, vol, et perte de marchandise', 1500.00, 1),
('Employé', 'Assurance santé pour les employés de l\'entreprise', 3000.00, 2),
('Produit', 'Protection contre les risques liés à la production industrielle', 2000.00, 3),
('Employé', 'Assurance vie et invalidité pour les travailleurs', 2500.00, 4),
('Produit', 'Assurance pour les produits électroniques', 1200.00, 5),
('Employé', 'Assurance santé et couverture accidents pour les employés', 2200.00, 6),
('Produit', 'Assurance pour les dommages en transport maritime', 1800.00, 7),
('Employé', 'Plan de santé d\'entreprise pour les employés', 2700.00, 8),
('Produit', 'Assurance pour la perte de stock en cas de sinistre', 1300.00, 9),
('Employé', 'Couverture santé pour les employés à temps partiel', 2300.00, 10),
('Produit', 'Assurance pour les risques agricoles et d\'incendie', 1700.00, 11),
('Employé', 'Protection contre les risques de maladie professionnelle', 2600.00, 12),
('Produit', 'Assurance pour dommages lors de l\'expédition internationale', 1400.00, 13),
('Employé', 'Couverture pour les accidents sur le lieu de travail', 2100.00, 14),
('Produit', 'Assurance pour les risques de pollution industrielle', 1900.00, 15),
('Employé', 'Assurance maternité et soins pour les employés féminins', 2800.00, 16),
('Produit', 'Protection contre les pannes de machines et équipements', 1600.00, 17),
('Employé', 'Assurance pour les vacances et congés de maladie', 2400.00, 18),
('Produit', 'Assurance pour les véhicules de livraison de l\'entreprise', 1100.00, 19),
('Employé', 'Plan de retraite et couverture des risques de vieillesse', 3000.00, 20);

select * from Assurance ;
select * from Produit;
 
 