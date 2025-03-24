-- 1. Find the total milk production for the year 2023.
Select sum(Value) as Total
from milk_production mp
where year = 2023

-- 2. Show coffee production data for the year 2015.
select *
from coffee_production cp 
where year = 2015

-- 3. Find the average honey production for the year 2022.
select year, count(value) as total_production, avg(value) as average_production
from honey_production hp 
group by year

-- 4. Get the state names with their corresponding ANSI codes from the state_lookup table.
select *
from state_lookup sl 
where state = "IOWA"

-- 5. Find the highest yogurt production value for the year 2022.
select max(value)
from yogurt_production yp 
where year = 2022

-- 6. Find states where both honey and milk were produced in 2022.
-- Did State_ANSI "35" produce both honey and milk in 2022?
select 
(select count(*) from honey_production where year = 2022 and state_ansi = "35") > 0 as has_honey,
(select count(*) from milk_production where year = 2022 and state_ansi = "35") > 0 as has_milk,
hp.State_ANSI 
from honey_production hp
join milk_production mp on mp.State_ANSI = hp.State_ANSI
where hp.year = 2022 and mp.year = 2022;

SELECT DISTINCT hp.State_ANSI
FROM honey_production hp
JOIN milk_production mp ON hp.State_ANSI = mp.State_ANSI
WHERE hp.Year = 2022 AND mp.Year = 2022 and hp.State_ANSI = 35

-- 7. Find the total yogurt production for states that also produced cheese in 2022.
SELECT SUM(yp.Value) as total_production
FROM yogurt_production yp
WHERE yp.Year = 2022 AND yp.State_ANSI IN (
    SELECT DISTINCT cp.State_ANSI FROM cheese_production cp WHERE cp.Year = 2022
);