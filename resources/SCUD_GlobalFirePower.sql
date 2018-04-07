use globalfirepower;

-- ALTER TABLE globalfirepower CHANGE `oldcolname` `newcolname` datatype(length);

delete
from globalfirepower 
where `Reserve Personnel` = 0;

