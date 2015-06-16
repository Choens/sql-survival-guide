-- #############################################################################
-- LEFT JOIN
--
-- Examples of Left Join queries.
--
-- #############################################################################

-- -----------------------------------------------------------------------------
-- LEFT OUTER JOIN
--
-- Note: There is no difference between a LEFT JOIN and a LEFT OUTER JOIN.
-- -----------------------------------------------------------------------------
select *
from EMPLOYEES empl left join DEPARTMENTS dept
    on empl.dept_id = dept.dept_id
;

-- -----------------------------------------------------------------------------
-- LEFT JOIN OR INNER JOIN
--
-- The following queries return only 3 rows of data, rather than 6, which
-- surprises many new users.
-- -----------------------------------------------------------------------------

-- This returns 3 rows because of the SQL Order of Operations.
select *
from EMPLOYEES empl left join DEPARTMENTS dept
on empl.dept_id = dept.dept_id
where dept.dept_id < 34
;

-- This highlights what the former query is doing.
-- It is easier to understand why this only returns 3 rows.
select *
from (
       -- This sub-query returns 6 rows.
       select *
       from EMPLOYEES empl left join DEPARTMENTS dept
       on empl.dept_id = dept.dept_id
     ) src0
-- But then ommits three of those rows from the final result set.     
where src0.dept_id < 34
;


-- This also only returns 3 rows, but it is even harder to see why.
select *
from EMPLOYEES empl, DEPARTMENTS dept
where
    empl.dept_id = dept.dept_id 
    and dept.dept_id < 34
;


