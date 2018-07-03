USE test_db;

select * from wordassociation
where source = 'AC';

select * from wordassociation
where source = 'BC';

select * from wordassociation
where source = 'CC';

select * from wordassociation
where author between 0 and 20;

select * from wordassociation
where word1 = 'pie' or word2 = 'pie';

select min(author), max(author), count(*) 
from wordassociation;

select source, count(*) 
from wordassociation
group by source
order by source;

select avg(author) 
from wordassociation;
