-- -----------------------------------------------------------------------------
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
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl cross join DEPARTMENTS dept
;

-- -----------------------------------------------------------------------------
-- IMPLICIT CROSS JOIN
-- 
-- YOU ALMOST NEVER WANT TO DO THIS.
-- UNLESS YOU WANT TO MAKE SAMIT CRY.
--
-- Note: An implicit CROSS JOIN is ALMOST EXACTLY like an implicit INNER JOIN
-- But it lacks the WHERE CLAUSE.
-- THIS IS ONE REASON TO NOT WRITE INNER JOINS this way. It is an easy mistake to make.
-- -----------------------------------------------------------------------------
SELECT *
FROM EMPLOYEES empl, DEPARTMENTS dept
;

