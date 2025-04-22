-- 1. Can you find out the total milk production for 2023? Your manager wants this information for the yearly report.
-- What is the total milk production for 2023?
select sum(value) as total_production
from milk_production mp
where year = 2023

-- 2. Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. 
-- How many states are there?
select state_ansi as total_state, period , value
from cheese_production cp
where year = 2023 and period = "APR" and value > 100000000

-- 3. Your manager wants to know how coffee production has changed over the years. 
-- What is the total value of coffee production for 2011?
select sum(value) as total_production
from coffee_production cp 
where year = 2011

-- 4. There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.
select avg(value) as average_production
from honey_production hp 
where year = 2022

-- 5. The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?
-- What is the State_ANSI code for Florida?
select *
from state_lookup sl 
where sl.State = "FLORIDA"

-- 6. For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023?
-- What is the total for NEW JERSEY?
select cp.value, sl.state
from cheese_production cp 
inner join state_lookup sl on cp.State_ANSI = sl.State_ANSI
where cp.period = "APR" and cp.year = 2023 and sl.state = "NEW JERSEY"

-- 7. Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.
select sum(yp.value)
from yogurt_production yp 
inner join cheese_production cp on cp.State_ANSI = yp.State_ANSI
where yp.year = 2022 and cp.year= 2023

-- 8. List all states from state_lookup that are missing from milk_production in 2023.
-- How many states are there?
select count(sl.State_ANSI) as total_missing_state
from state_lookup sl 
left join milk_production mp on sl.State_ANSI = mp.State_ANSI and mp.year = 2023
where mp.State_ANSI is null

-- 9. List all states with their cheese production values, including states that didn't produce any cheese in April 2023.
-- Did Delaware produce any cheese in April 2023?
select sl.state, cp.value
from cheese_production cp 
right join state_lookup sl on cp.State_ANSI = sl.State_ANSI and sl.state = "DELAWARE"
where cp.year = 2023 and cp.Period = "APR" 

-- 10. Find the average coffee production for all years where the honey production exceeded 1 million.
select avg(cp.value) AS average_coffee_production
from coffee_production cp 
where cp.year in (
select distinct hp.year
from honey_production hp
where value > 1000000
)
