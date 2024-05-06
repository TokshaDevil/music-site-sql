--количество исполнителей в каждом жанре;
select name, count(*) from genres g
LEFT JOIN performensgenres p ON g.genres_id  = p.genres_id
GROUP BY g.genres_id;

--количество треков, вошедших в альбомы 2019-2020 годов;
select a.title, year, count(*) from albums a 
left join tracks t ON a.albums_id = t.albums_id
where year between 2019 and 2020
GROUP BY a.albums_id;

--средняя продолжительность треков по каждому альбому;
select a.title, count(*), AVG(duration) from albums a 
left join tracks t ON a.albums_id = t.albums_id
GROUP BY a.albums_id;

--все исполнители, которые не выпустили альбомы в 2020 году;
select name from performens p2 
EXCEPT 
	select name from performens p
	join performensalbums pa on p.performens_id = pa.performens_id
	join albums a on pa.albums_id  = a.albums_id
	where year = 2020;


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select c.title, name from compilations c 
join compilationstracks c2 ON c.compilations_id = c2.compilations_id 
join tracks t on c2.tracks_id = t.tracks_id 
join albums a on t.albums_id = a.albums_id 
join performensalbums p on a.albums_id = p.albums_id 
join performens p2 on p.performens_id = p2.performens_id
where name = 'Serebro'


--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.title, count(*) from albums a 
join performensalbums p on a.albums_id = p.albums_id 
join performens p2  on p.performens_id = p2.performens_id 
join performensgenres p3 on p2.performens_id = p3.performens_id
join genres g on p3.genres_id = g.genres_id
group by a.title
having count(*) > 1;

--наименование треков, которые не входят в сборники;
select t.title, ct.tracks_id  from tracks t
full join compilationstracks ct on ct.tracks_id = t.tracks_id 
where ct.tracks_id IS NULL;


--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select name, t.title, duration from performens p 
join performensalbums p2 on p.performens_id = p2.performens_id 
join albums a on p2.albums_id = a.albums_id 
join tracks t on a.albums_id = t.albums_id
where duration = (select min(duration) from tracks);

--название альбомов, содержащих наименьшее количество треков.
select a.title, count(*)   from albums a 
join tracks t on a.albums_id = t.albums_id 
group by a.title
having count(*) = (select count(*) from albums a 
join tracks t on a.albums_id = t.albums_id group by a.title order by count(*) limit 1);
