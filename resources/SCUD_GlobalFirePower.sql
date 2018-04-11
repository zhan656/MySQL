use globalfirepower;

-- ALTER TABLE globalfirepower CHANGE `oldcolname` `newcolname` datatype(length);

delete
from globalfirepower 
where `Reserve Personnel` = 0;

use hideandseek_db;

select * from table1;
select * from table2;

select 
* from table1
full_outer join table2
	on table1.Table1ID = table2.Table2ID;
    
select 
p.Player,p.height, p.weight, p.college, p.born, s.pos, s.tm 
from players p
left join seasons_stats s
	on p.player = s.player;

select 
p.Player,p.height, p.weight, p.college, p.born, s.pos, s.tm 
from players p
left join seasons_stats s
	on p.player = s.player;




