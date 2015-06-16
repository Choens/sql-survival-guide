-- #############################################################################
-- INNER JOIN
--
-- Examples of Inner Join queries.
--
-- #############################################################################

-- -----------------------------------------------------------------------------
-- EXPLICIT INNER JOIN
--
-- This is the preferred way of writing an INNER JOIN.
--
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl INNER JOIN  DEPARTMENTS dept 
    ON empl.dept_id = dept.dept_id
;



-- -----------------------------------------------------------------------------
-- IMPLICIT INNER JOIN
--
-- This is how a lot of people write INNER JOINs.
-- Do not do this. Deprecated in 1992.
-- It is too easy to accidentally write an IMPLICIT CROSS JOIN.
-- See cross-joins.sql for example syntax.
--
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl, DEPARTMENTS dept 
WHERE empl.dept_id = dept.dept_id
;


   
-- -----------------------------------------------------------------------------
-- EQUI JOIN
--
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl inner join DEPARTMENTS dept using (dept_id)
;


-- -----------------------------------------------------------------------------
-- NATURAL JOIN
--
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl natural join DEPARTMENTS dept
;
