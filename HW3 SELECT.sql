select name, year_of_release from music_album
	where year_of_release = 2018;
	
select name, duration from music_track
	order by duration desc
	limit 1;	
	
select name, duration from music_track
	where duration >= 210;
	
select name from collection
	where year between 2018 and 2020;


select name from singer
	where name not like '% %'
	
select name from music_track mt 
	where upper("name") like '%лни%' or upper("name") like'%MY%';
	

