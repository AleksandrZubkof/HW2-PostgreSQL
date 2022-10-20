create table if not exists musical_genre(
	id SERIAL primary key,
	name varchar(60) unique not null
);

create table if not exists singer(
	id SERIAL primary key,
	name varchar(60) not null
);

create table if not exists music_album(
	id SERIAL primary key,
	name varchar(60) not null,
	year_of_release integer check(year_of_release < 2023)
);

create table if not exists music_track(
	id SERIAL primary key,
	music_album_id integer not null references music_album(id),
	name varchar(60) not null,
	duration integer
);

ALTER TABLE music_track ALTER COLUMN duration TYPE integer;

create table if not exists collection(
	id SERIAL primary key,
	name varchar(60) not null,
	year integer
);

create table if not exists genre_singer(
	musical_genre_id integer references musical_genre(id),
	singer_id integer references singer(id),
	constraint gs primary key(musical_genre_id, singer_id)
);

create table if not exists singer_album(
	singer_id integer references singer(id),
	music_album_id integer references music_album(id),
	constraint sm primary key(singer_id, music_album_id)
);

create table if not exists collection_track(
	collection_id integer references collection(id),
	music_truck_id integer references music_track(id),
	constraint ct primary key(collection_id, music_truck_id)
);

ALTER TABLE music_track
DROP CONSTRAINT duration;