-- #####################
-- Inner Join
--
-- Examples of Inner Join queries.
--
-- #####################

-- ---------------------
-- IMPLICIT INNER JOIN
--
-- Deprecated.
-- Don't do this. It looks too much like an IMPLICIT CROSS JOIN.
--
-- --------------------
SELECT *
FROM EMPLOYEES empl, DEPARTMENTS dept 
WHERE empl.dept_id = dept.dept_id
;



-- ---------------------
-- EXPLICIT INNER JOIN
--
-- This is the preferred way of writing an INNER JOIN.
--
-- --------------------
SELECT *
FROM EMPLOYEES empl INNER JOIN  DEPARTMENTS dept 
    ON empl.dept_id = dept.dept_id
;
    

    
-- ---------------------
-- EQUI JOIN
--
-- --------------------
SELECT *
FROM EMPLOYEES empl inner join DEPARTMENTS dept using (dept_id)
;


-- ---------------------
-- NATURAL JOIN
--
-- --------------------
SELECT *
FROM EMPLOYEES empl natural join DEPARTMENTS dept
;

-- --------------------
-- CROSS JOIN
-- 
-- CROSS JOINs are not INNER JOINs.
-- They return the cartesian product of the two tables.
-- In other words, they put everything together in as many ways as is humanly possible.
--
-- THIS IS ALMOST ALWAYS BAD. YOU ALMOST NEVER WANT TO DO THIS.
--
-- Unless your goals is to make Samir cry.
--
-- --------------------
SELECT *
FROM EMPLOYEES empl cross join DEPARTMENTS dept
;

-- --------------------
-- IMPLICIT CROSS JOIN
-- 
-- YOU ALMOST NEVER WANT TO DO THIS.
-- UNLESS YOU WANT TO MAKE SAMIT CRY.
--
-- Note: An implicit CROSS JOIN is ALMOST EXACTLY like an implicit INNER JOIN
-- But it lacks the WHERE CLAUSE.
-- THIS IS ONE REASON TO NOT WRITE INNER JOINS this way. It is an easy mistake to make.
-- --------------------
SELECT *
FROM EMPLOYEES empl, DEPARTMENTS dept
;

