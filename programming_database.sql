drop table IF EXISTS programming_languages;
drop database IF EXISTS programming_db;
-- Drops the favorite_db if it exists currently --
create DataBase programming_db; 

use programming_db; 

CREATE TABLE programming_languages(
	id int(10) NOT NULL auto_increment,
    languages varchar(20),
    rating numeric(20),
    mastered boolean default true,
    primary key(id)
);
insert into programming_languages(languages,rating)
value ('python',8);
insert into programming_languages(languages,rating)
value ('R',6);
insert into programming_languages(languages,rating)
value ('C++',2);
insert into programming_languages(languages,rating)
value ('C',1);


select * from programming_languages;
