create database olympics_db;
use olympics_db;
show databases;
show Tables;
desc olympics;
drop table olympics_data;
select * from olympics;

#Count medals per country.

select distinct Country,count(Medal) 
from olympics 
group by country;

#Get athlete with most medals.

select count(Medal),Athlete 
from olympics 
group by Athlete 
order by count(Medal) 
desc 
limit 5;

#Analyze yearly medal trends.

select Year,count(Medal) 
from olympics 
group by Year;

#Filter data by sport, gender, or event.

select Sport,count(Medal) 
from olympics 
group by Sport;

describe olympics;

select * from olympics 
where Discipline='Swimming';

select * from olympics 
where Sport='Hockey'; 

select Country,City,Year,Sport 
from olympics 
where Sport='Hockey';

select * from olympics 
where Event_gender='W' and medal is not null;

select * from olympics 
where Event='100m freestyle';

select Athlete,gender,Event from olympics 
where Event='vault' and gender='women';

select Sport,count(Gender),Gender from olympics 
where Gender='women' 
group by Sport 
order by count(Gender) desc;