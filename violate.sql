-- Movie TABLE
INSERT INTO Movie VALUES
(2, "DUMMY", NULL, NULL, NULL); -- Dupicate of primary key
-- ERROR 1062 (23000) at line 2: Duplicate entry '2' for key 'PRIMARY'

INSERT INTO Movie VALUES
(1, NULL, NULL, NULL, NULL); -- Title cannot be NULL
-- ERROR 1048 (23000) at line 4: Column 'title' cannot be null

-- Actor TABLE
INSERT INTO Actor VALUES
(1, NULL, NULL, NULL, '1990/01/01', NULL); -- Dupicate of primary key
-- ERROR 1062 (23000) at line 8: Duplicate entry '1' for key 'PRIMARY'


INSERT INTO Actor VALUES
(2, NULL, NULL, NULL, NULL, NULL); -- DOB cannot be NULL
--  ERROR 1048 (23000) at line 10: Column 'dob' cannot be null
-- Director TABLE

INSERT INTO Director VALUES
(16, NULL, NULL, '1990/01/01', NULL); -- Dupicate of primary key
-- ERROR 1062 (23000) at line 14: Duplicate entry '16' for key 'PRIMARY'

INSERT INTO Director VALUES
(1, NULL, NULL, NULL, NULL); -- DOB cannot be NULL
-- ERROR 1048 (23000) at line 16: Column 'dob' cannot be null

-- MovieGenre TABLE
INSERT INTO MovieGenre VALUES
(1, NULL); -- Movie id 1 does not exist (FOREIGN KEY)
-- ERROR 1452 (23000) at line 20: Cannot add or update a child row: a foreign key constraint fails (`CS143`.`MovieGenre`, CONSTRAINT `MovieGenre_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))

-- MovieDirector TABLE
INSERT INTO MovieDirector VALUES
(1, 16); -- Movie id 1 does not exist (FOREIGN KEY)
-- ERROR 1452 (23000) at line 24: Cannot add or update a child row: a foreign key constraint fails (`CS143`.`MovieDirector`, CONSTRAINT `MovieDirector_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))


INSERT INTO MovieDirector VALUES
(2, 1); -- Director id 16 does not exist(FOREIGN KEY )
-- ERROR 1452 (23000) at line 26: Cannot add or update a child row: a foreign key constraint fails (`CS143`.`MovieDirector`, CONSTRAINT `MovieDirector_ibfk_2` FOREIGN KEY (`did`) REFERENCES `Director` (`id`))

 
-- MovieActor TABLE
INSERT INTO MovieActor VALUES
(1, 16, NULL); -- Movie id 1 does not exist (FOREIGN KEY)
-- ERROR 1452 (23000) at line 30: Cannot add or update a child row: a foreign key constraint fails (`CS143`.`MovieActor`, CONSTRAINT `MovieActor_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))

INSERT INTO MovieActor VALUES 
(2, 2, NULL); -- Director id 2 does not exist (FOREIGN KEY)
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`CS143`.`MovieActor`, CONSTRAINT `MovieActor_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `Actor` (`id`))
 
-- Review TABLE
INSERT INTO Review VALUES
(NULL, NULL, 1, NULL, NULL); -- Movie id 1 does not exist (FOREIGN KEY)
-- ERROR 1452 (23000) at line 36: Cannot add or update a child row: a foreign key constraint fails (`CS143`.`Review`, CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))

-- CHECK Claue constraint
INSERT INTO Actor VALUES
(999991, NULL, NULL, 'DUMMY', '1900/01/01', NULL); -- sex cannot be 'DUMMY', CHECK Claue assertion

INSERT INTO Actor VALUES
(999992, NULL, NULL, 'male', '2000/01/01', '1900/01/01'); -- dod cannot earlier than dob, CHECK Claue assertion

INSERT INTO Director VALUES
(999993, NULL, 'male', '2000/01/01', '1900/01/01'); -- dod cannot earlier than dob, CHECK Claue assertion
