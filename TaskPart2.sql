--1
select *from employees;
--2
select first_name||' '||last_name as fullname from employees;
--3
select first_name||' '|| last_name as "fullname", length(first_name|| ' '|| last_name) as "length"
from employees order by "length" desc;
--4
select *from employees
where department_id in (90,60,100,130,120);
--5
select *from employees
where department_id not in (90,60,100,130,120);
--6
select job_id from employees
group by job_id;
--6.1
select job_id, max(salary)
from employees
group by job_id;
--6.2
select job_id, min(salary)
from employees
group by job_id;
--6.3
select job_id, avg(salary)
from employees
group by job_id;
--6.4
select job_id, count (job_id) from employees
where salary < 5000
group by job_id;
--6.5
select job_id,sum(salary) from employees
group by job_id;
--7
select (first_name ||' '|| last_name||'') as "fullname", 
lower(email||'@gmail') as "fullemail"
from employees;
--8
select street_address || ','|| city|| ','||postal_code||','||country_id as "fulladdress"
from locations;












