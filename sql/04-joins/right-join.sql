-- #############################################################################
-- Right JOIN
--
-- Examples of Right Join queries.
--
-- #############################################################################

select *
   from EMPLOYEES empl right join DEPARTMENTS dept
   on empl.dept_id = dept.dept_id
   ;



-- -----------------------------------------------------------------------------
-- This Left Join returns the same result set as the Right Join above.
-- -----------------------------------------------------------------------------

select *
    from DEPARTMENTS dept left join EMPLOYEES empl
    on dept.dept_id = empl.dept_id
    ;
