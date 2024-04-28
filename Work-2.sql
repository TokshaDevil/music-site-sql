# название и год выхода альбомов, вышедших в 2018 году;
select title, year from albums
where year = 2018;

# название и продолжительность самого длительного трека;
select title, duration from tracks
where duration = (
select max(duration) from tracks);

# название треков, продолжительность которых не менее 3,5 минуты;
select title, duration from tracks
where duration <= 210;

# названия сборников, вышедших в период с 2018 по 2020 год включительно;
select title, year from compilations
where year between 2018 and 2020;

# исполнители, чье имя состоит из 1 слова;
select name from performens
where name not like '% %';

# название треков, которые содержат слово "мой"/"my".
select title FROM tracks
WHERE title ~* 'my';
