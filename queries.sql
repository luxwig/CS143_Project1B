-- Give me the names of all the actors in the movie 'Die Another Day'
SELECT CONCAT(first, SPACE(1), last)
FROM Actor A, MovieActor MA, Movie M 
WHERE (M.title = 'Die Another Day') AND 
      (MA.mid = M.id) AND 
      (MA.aid = A.id);  


-- Give me the count of all the actors who acted in multiple movies
 
-- Create a new schema with only the aid of the movie actors from MovieActor N, which selects actors' ids that 
-- has appeared more than once, then counts the number of all these actors to get the result. 

SELECT COUNT(*)
FROM (SELECT COUNT(*) num
	From MovieActor
	Group By aid
	) N
WHERE num > 1; 

-- another query that you came up with
