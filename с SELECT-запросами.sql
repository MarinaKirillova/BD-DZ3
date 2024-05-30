select name_track, duration from track
where duration >= (select max(duration) from track);


select name_track, duration from track
where duration >= 210;

select name_collection
from collection
where year between 2018 and 2020;

select name_singer
from singer
where name_singer NOT LIKE '% %';

select name_track
from track
where name_track ~* '\y(мой|my)\y';

select c.name, count(cs.singer_id) as count_singers
from genres c
left join genressinger cs on c.genres_id = cs.genres_id 
group by c.name;

select count(*) as track_count
from track
join album on track.album_id = album.album_id
where album.year between 2019 and 2020;

select album.name_album, avg(track.duration) as avg_duration
from album
join track on album.album_id = track.album_id
group by album.name_album;

select name_singer
from singer
where singer_id NOT IN (
  select singer_id
  from albumSinger
  join album ON albumsinger.album_id = album.album_id
  where year = 2020 );
  
select distinct c.name_collection 
from collection c 
join collectiontrack ct ON ct.collection_id = c.collection_id 
join track t ON t.track_id = ct.track_id 
join album a ON a.album_id = t.album_id 
join albumSinger asg ON asg.album_id = a.album_id 
join singer s ON s.singer_id = asg.singer_id 
where s.name_singer = 'Чайф';