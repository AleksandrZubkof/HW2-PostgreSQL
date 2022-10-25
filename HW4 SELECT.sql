select name, count(singer_id) from musical_genre mg 
	join genre_singer gs on mg.id = gs.musical_genre_id 
	group by mg."name"; 

select year_of_release, count(mt.name) from music_album ma 
	join music_track mt on ma.id = mt.id
    where year_of_release > 2018
    group by ma.year_of_release ;
   
select ma.name, avg(duration) from music_album ma 
	join music_track mt on ma.id = mt.music_album_id 
	group by ma.name;

select distinct s."name" from singer s 
	join singer_album sa on s.id = sa.singer_id 
	join music_album ma on ma.id = sa.music_album_id 
	where ma.year_of_release != 2020 and s.name not in (select distinct s."name" from singer s 
	join singer_album sa on s.id = sa.singer_id 
	join music_album ma on ma.id = sa.music_album_id 
	where ma.year_of_release = 2020);
    
select distinct (c."name") from collection c 
	join collection_track ct on c.id = ct.collection_id 
	join music_track mt on mt.id = ct.music_truck_id 
	join music_album ma on ma.id = mt.music_album_id 
	join singer_album sa on sa.music_album_id = ma.id
	join singer s on s.id = sa.singer_id 
	where upper(c."name") like '%ÌÈÕÀÈË ÊÐÓÃ%';

select distinct (c."name"), count(mg."name") from collection c 
	join collection_track ct on c.id = ct.collection_id 
	join music_track mt on mt.id = ct.music_truck_id 
	join music_album ma on ma.id = mt.music_album_id 
	join singer_album sa on sa.music_album_id = ma.id
	join singer s on s.id = sa.singer_id
	join genre_singer gs on s.id = gs.singer_id 
	join musical_genre mg on mg.id = gs.musical_genre_id 
	group by c."name"
	having count(mg."name") > 1;

select mt."name" from music_track mt 
    full join collection_track ct on mt.id = ct.music_truck_id 
	full join collection c on c.id = ct.collection_id 
	where c."name" is null ;
	
select s."name", min(duration) from singer s 
	join singer_album sa on s.id = sa.singer_id 
	join music_album ma on ma.id = sa.music_album_id 
	join music_track mt on mt.music_album_id  = ma.id 
	group by s."name" 
	order by min(duration)
	limit 1;

select ma.name, count(mt.id) count_q from music_album ma 
	join music_track mt on ma.id = mt.music_album_id 
	group by ma.name
	having count(mt.id) = 
	(select count(mt.id) from music_album ma 
	join music_track mt on ma.id = mt.music_album_id 
	group by ma.name
	order by count(mt.id)
	limit 1) 
	

	
	
	

	