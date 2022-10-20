insert into musical_genre
	values(1, 'Поп');

insert into musical_genre
	values(2, 'Рок');

insert into musical_genre
	values(3, 'Рэп');

insert into musical_genre
	values(4, 'Классическая музыка');

insert into musical_genre
	values(5, 'Шансон');

select * from musical_genre;

insert into singer 
	values(1, 'Михаил Круг');

insert into singer 
	values(2, 'Кино');

insert into singer 
	values(3, 'Антонио Вивальди');

insert into singer 
	values(4, 'Золотое кольцо');

insert into singer 
	values(5, 'Eminem');

insert into singer 
	values(6, 'Zivert');

insert into singer 
	values(7, 'Баста');

insert into singer 
	values(8, 'Queen');

insert into singer 
	values(9, 'CENTR');

select * from singer;

insert into music_album 
	values(1, 'Мадам', 1998);

insert into music_album 
	values(2, 'Звезда по имени Солнце', 1989);

insert into music_album 
	values(3, 'Vinyl #1', 2018);

insert into music_album 
	values(4, 'Баста+', 2013);

insert into music_album 
	values(5, 'Весна', 1725);

insert into music_album 
	values(6, 'Течет ручей', 1995);

insert into music_album 
	values(7, 'Recovery', 2010);

insert into music_album 
	values(8, 'News of the World', 1977);

insert into music_album 
	values(9, 'Качели', 2007);

select * from music_album;

insert into music_track 
	values(1, 1, 'Владимирский централ', 267);

insert into music_track 
	values(16, 1, 'Мой бог', 334);

insert into music_track 
	values(2, 2, 'Пачка сигарет', 269);

insert into music_track 
	values(3, 4, 'Город дорог', 268);

insert into music_track 
	values(4, 3, 'Beverly Hills', 219);

insert into music_track 
	values(5, 4, 'Всем берегам', 303);

insert into music_track 
	values(6, 5, 'Allegro. Пришла весна', 216);

insert into music_track 
	values(7, 3, 'Credo', 184);

insert into music_track 
	values(8, 1, 'Давай поговорим', 246);

insert into music_track 
	values(9, 6, 'Течет ручей', 128);

insert into music_track 
	values(10, 7, 'Not Afraid', 248);

insert into music_track 
	values(11, 7, 'So bad', 325);

insert into music_track 
	values(12, 8, 'We Will Rock You', 121);

insert into music_track 
	values(13, 8, 'We Are the Champions', 299);

insert into music_track 
	values(14, 9, 'Качели', 296);

insert into music_track 
	values(15, 9, 'Мутные замуты', 226);

select * from music_track;

insert into collection  
	values(1, 'Сборник_1', 2006);

insert into collection  
	values(2, 'Сборник_2', 2008);

insert into collection  
	values(3, 'Сборник_3', 2010);

insert into collection  
	values(4, 'Сборник_4', 2012);

insert into collection  
	values(5, 'Сборник_5', 2014);

insert into collection  
	values(6, 'Сборник_6', 2016);

insert into collection  
	values(7, 'Сборник_7', 2018);

insert into collection  
	values(8, 'Сборник_8', 2019);

insert into collection  
	values(9, 'Сборник_9', 2022);

select * from collection;

insert into genre_singer  
	values(1, 6);

insert into genre_singer  
	values(1, 7);

insert into genre_singer  
	values(2, 2);

insert into genre_singer  
	values(2, 8);

insert into genre_singer  
	values(3, 5);

insert into genre_singer  
	values(3, 7);

insert into genre_singer  
	values(3, 9);

insert into genre_singer  
	values(4, 3);

insert into genre_singer  
	values(5, 1);

insert into genre_singer  
	values(3, 4);

update genre_singer 
	set musical_genre_id = 1
	where  singer_id = 4; 

select * from genre_singer;

insert into singer_album  
	values(1, 1);

insert into singer_album  
	values(2, 2);

insert into singer_album  
	values(3, 5);

insert into singer_album  
	values(4, 6);

insert into singer_album  
	values(5, 7);

insert into singer_album  
	values(6, 3);

insert into singer_album  
	values(7, 4);

insert into singer_album  
	values(7, 8);

update singer_album  
	set singer_id  = 8
	where  music_album_id  = 8; 

insert into singer_album  
	values(9, 9);

insert into singer_album  
	values(9, 4);

insert into singer_album  
	values(7, 9);

select * from singer_album;

insert into collection_track  
	values(1, 1);

insert into collection_track  
	values(1, 2);

insert into collection_track  
	values(1, 6);

insert into collection_track  
	values(2, 6);

insert into collection_track  
	values(2, 9);

insert into collection_track  
	values(3, 10);

insert into collection_track  
	values(3, 8);

insert into collection_track  
	values(4, 8);

insert into collection_track  
	values(4, 1);

insert into collection_track  
	values(5, 1);

insert into collection_track  
	values(5, 5);

insert into collection_track  
	values(5, 15);

insert into collection_track  
	values(6, 13);

insert into collection_track  
	values(6, 12);

insert into collection_track  
	values(6, 11);

insert into collection_track  
	values(7, 1);

insert into collection_track  
	values(7, 2);

insert into collection_track  
	values(1, 9);

insert into collection_track  
	values(7, 9);

insert into collection_track  
	values(8, 4);

insert into collection_track  
	values(8, 7);

insert into collection_track  
	values(8, 5);

insert into collection_track  
	values(9, 10);

insert into collection_track  
	values(9, 3);

insert into collection_track  
	values(9, 6);

insert into collection_track  
	values(9, 14);

select * from collection_track;









