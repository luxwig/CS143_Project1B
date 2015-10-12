-- Movie TABLE
INSERT INTO Movie VALUES
(2, "DUMMY", NULL, NULL, NULL); -- Dupicate of primary key
INSERT INTO Movie VALUES
(1, NULL, NULL, NULL, NULL); -- Title cannot be NULL

-- Actor TABLE
INSERT INTO Actor VALUES
(1, NULL, NULL, NULL, '1990/01/01', NULL); -- Dupicate of primary key
INSERT INTO Actor VALUES
(2, NULL, NULL, NULL, NULL, NULL); -- DOB cannot be NULL

-- Director TABLE
INSERT INTO Director VALUES
(16, NULL, NULL, '1990/01/01', NULL); -- Dupicate of primary key
INSERT INTO Director VALUES
(1, NULL, NULL, NULL, NULL); -- DOB cannot be NULL

-- MovieGenre TABLE
INSERT INTO MovieGenre VALUES
(1, NULL); -- Movie id 1 does not exist (FOREIGN KEY)

-- MovieDirector TABLE
INSERT INTO MovieDirector VALUES
(1, 16); -- Movie id 1 does not exist (FOREIGN KEY)
INSERT INTO MovieDirector VALUES
(2, 1); -- Director id 16 does not exist(FOREIGN KEY )

-- MovieActor TABLE
INSERT INTO MovieActor VALUES
(1, 16, NULL); -- Movie id 1 does not exist (FOREIGN KEY)
INSERT INTO MovieActor VALUES 
(2, 1, NULL); -- Director id 2 does not exist (FOREIGN KEY)

-- Review TABLE
INSERT INTO Review VALUES
(NULL, NULL, 1, NULL, NULL); -- Movie id 1 does not exist (FOREIGN KEY)

-- CHECK Clause constraint
INSERT INTO Actor VALUES
(999991, NULL, NULL, 'DUMMY', '1900/01/01', NULL); -- sex cannot be 'DUMMY', CHECK Clasue assertion

INSERT INTO Actor VALUES
(999992, NULL, NULL, 'male', '2000/01/01', '1900/01/01'); -- dod cannot earlier than dob, CHECK Clasue assertion

INSERT INTO Director VALUES
(999993, NULL, 'male', '2000/01/01', '1900/01/01'); -- dod cannot earlier than dob, CHECK Clasue assertion
