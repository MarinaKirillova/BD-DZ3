create table if not exists Genres (
	genres_id SERIAL primary key,
	name VARCHAR(30) not null
);

create table if not exists Singer(
	singer_id SERIAL primary key,
	name_singer VARCHAR(30) not null
);


create table if not exists GenresSinger(
	genres_id integer not null references Genres(genres_id),
	singer_id integer not null references Singer(singer_id)
);

create table if not exists Album (
	album_id SERIAL primary key,
	name_album VARCHAR(30) not null,
	year integer check (year between 1950 and extract(year from now())) 
);

create table if not exists AlbumSinger (
	album_id integer not null references Album(album_id),
	singer_id integer not null references Singer(singer_id)
);

create table if not exists Track (
	track_id SERIAL primary key,
	name_track VARCHAR(20) not null,
	duration integer,
	album_id integer not null references Album(album_id)
);

create table if not exists Collection (
	collection_id SERIAL primary key,
	name_collection VARCHAR(20) not null,
	year integer check (year between 1950 and extract(year from now()))
);

create table if not exists CollectionTrack (
	collection_id integer not null references Collection(collection_id),
	track_id integer not null references Track(track_id)
);

create table if not exists SingerCollection (
	singer_id integer not null references Singer(singer_id),
	collection_id integer not null references Collection(collection_id)	
);