-- ============================================================================
-- DEPARTMENTS
-- ============================================================================

-- CREATE THE TABLE -----------------------------------------------------------
create table DEPARTMENTS
(
  DEPT_ID int
 ,DEPT_NAME varchar(20)
 ,DEPT_FLOOR int
);
 
-- INSERT DATA ----------------------------------------------------------------
-- 4 Rows of data.
insert into DEPARTMENTS values(31, 'Sales'      , 1);
insert into DEPARTMENTS values(33, 'Engineering', 3);
insert into DEPARTMENTS values(34, 'Clerical'   , 2);
insert into DEPARTMENTS values(35, 'Marketing'  , 3);



-- ============================================================================
-- EMPLOYEES
-- ============================================================================

-- CREATE THE TABLE -----------------------------------------------------------
create table EMPLOYEES
(
  EID int
 ,DEPT_ID int
 ,LAST_NAME varchar(20)
 ,FIRST_NAME varchar(20)
,GENDER varchar(1)
);
 
-- INSERT DATA ---------------------------------------------------------------- 
-- 6 Rows of data.
insert into EMPLOYEES values( 1, 31  , 'Rafferty'  , 'Gerry'    , 'M');
insert into EMPLOYEES values( 3, 33  , 'Jones'     , 'Jon'      , 'M');
insert into EMPLOYEES values( 5, 33  , 'Heisenberg', 'Werner'   , 'M');
insert into EMPLOYEES values( 7, 34  , 'Robinson'  , 'Elizabeth', 'F');
insert into EMPLOYEES values( 9, 34  , 'Smith'     , 'Jefferson', 'M');
insert into EMPLOYEES values(11, NULL, 'Williams'  , 'Serena'   , 'F');

-- After running this script, please open the DEPARTMENTS and EMPLOYEES 
-- tables, in your home schema, to confirm that they exist and have the 
-- correct number of rows



-- ============================================================================
-- SALES
-- ============================================================================

TODO
