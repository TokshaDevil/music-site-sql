INSERT INTO genres (name) VALUES
    ('Рок'),
    ('Хип-хоп'),
    ('Фанк'),
    ('Джаз'),
    ('Соул'),
    ('Диско'),
    ('Поп-музыка'),
    ('Регги');
    
INSERT INTO performens (name) VALUES
   ('23:45'),
   ('5sta Family'),
   ('ARIA'),
   ('CAPRICE'),
   ('Serebro'),
   ('Би-2'),
   ('Винтаж'),
   ('Дискотека Авария'),
   ('Чай вдвоём'),
   ('Reflex'),
   ('YIN AND YAN'),
   ('The Beatles');
   
INSERT INTO performensgenres  (genres_id, performens_id) VALUES
	(1,3),
	(2,4),
	(2,7),
	(3,11),
	(4,12),
	(5,10),
	(6,8),
	(7,1),
	(7,2),
	(8,9),
	(3,5),
    (1,6);
    
INSERT INTO albums (title, year) VALUES
	('Dangerous',2020),
	('Backstreet Boys',1997),
	('Born in the U.S.A.',2019),
	('Goodbye Yellow Brick Road',2018),
	('Titanic',1997),
	('Daydream',2020),
	('Whitney Houston',1985),
	('Believe',2018),
	('Ray of Light',1998),
	('Come Away with Me',2002);
	
INSERT INTO performensalbums  (albums_id, performens_id) VALUES
	(1,10),
	(2,8),
	(3,9),
	(4,1),
	(5,3),
	(6,2),
	(7,4),
	(8,6),
	(9,5),
	(1,11),
	(2,12),
	(10,7);

INSERT INTO tracks  (albums_id, title, duration) VALUES
	(1,'No Window',220),
	(2,'Trylon And Perisphere',450),
	(3,'Photos Of Ghosts',199),
	(4,'New Age Surf',198),
	(5,'Dramatic Combo',225),
	(6,'Cream',198),
	(7,'Banana Banji',185),
	(8,'Spooky Loops',199),
	(9,'We Love Radio',230),
	(10,'Closing The my night',193),
	(9,'New Wave Saturday Night Chickens',199),
	(8,'Audio Santo',198),
	(9,'Ipso Fvcto',191),
	(7,'My Dear Medical Assurance',245),
	(6,'Time Of A Storm',188),
	(5,'Honey, Set Me Free',195),
	(4,'Love Of A Dream',194),
	(3,'I Know He Wrote A Song About You',193),
	(2,'Troubles Of My Friends',196),
	(4,'She Said You Can Dance',198),
	(5,'Thrill For Tonight',200),
	(8,'Endless Soul',210),
	(1,'Imagine Your Fire',199),
	(9,'Warriors For The Gang',225),
	(2,'Delighted Kiss',190),
	(5,'Notes Junky',200);

	
INSERT INTO compilations (title, year) VALUES
	('Drink For Her Love',2018),
	('Memories Of His Gal',2005),
	('Blissful Chances',2019),
	('I Love She Wrote A Song About You',1999),
	('Home Of My Hat',1997),
	('Daydream',1995),
	('Troubles Of My Music',1933),
	('Thoughts Of A Storm',2020),
	('Home Of My Shadow',1998),
	('Drive For Me',2002);
	
INSERT INTO compilationstracks  (tracks_id, compilations_id) VALUES
	(1,10),
	(2,8),
	(3,9),
	(4,1),
	(5,3),
	(6,2),
	(7,4),
	(8,6),
	(9,5),
	(10,6),
	(11,7),
	(12,8),
	(13,9),
	(14,10),
	(15,1),
	(16,2),
	(17,3),
	(18,4),
	(19,5),
	(20,6),
	(21,7);
