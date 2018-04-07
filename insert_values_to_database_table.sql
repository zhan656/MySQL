use favorite_db;
-- favorit food

-- drop table if exists favorite_foods;
insert into favorite_foods(food,score)
value ('avocado',5);
-- My friend's favorite
insert into favorite_foods(food,score)
value ('pizza',10);

select * from favorite_foods;

-- drop table if exists favorite_songs;
insert into favorite_songs(song,artist,score)
value ('banana','minion',5);

insert into favorite_songs(song,artist,score)
value ('little apple','chopsticks bro',10);

select * from favorite_songs;

-- drop table if exists favorite_movies;
insert into favorite_movies(film,five_times,score)
value ('avocado',True, 5);

insert into favorite_movies(film,five_times,score)
value ('banana',False, 5);



select * from favorite_movies;