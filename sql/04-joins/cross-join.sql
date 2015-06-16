-- =============================================================================
-- CROSS JOIN
-- 
-- CROSS JOINs are not INNER JOINs.
-- They return the cartesian product of the two tables.
-- In other words, they put everything together in as many ways as is humanly possible.
--
-- THIS IS ALMOST ALWAYS BAD. YOU ALMOST NEVER WANT TO DO THIS.
--
-- =============================================================================


-- -----------------------------------------------------------------------------
-- EXPLICIT CROSS JOIN
--
-- It is explicit, because the FROM clause explicitly says CROSS JOIN.
--
-- -----------------------------------------------------------------------------
SELECT *
from DEPARTMENTS dept cross join EMPLOYEES empl
;

-- -----------------------------------------------------------------------------
-- IMPLICIT CROSS JOIN
--
-- It is IMPLICIT, because the FROM clause does not include CROSS JOIN.
--
-- An IMPLICIT CROSS JOIN is almost exactly like an IMPLICIT INNER JOIN;
-- But it lacks the WHERE CLAUSE.
-- One reason to not write inner joins like this is that it makes it too easy
-- mistake accidentally write a CROSS JOIN instead.
-- -----------------------------------------------------------------------------
SELECT *
from DEPARTMENTS dept, EMPLOYEES empl
;

