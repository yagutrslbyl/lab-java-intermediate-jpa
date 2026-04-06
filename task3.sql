CREATE DATABASE task_db;
SELECT title, due_date,
       RANK() OVER (ORDER BY due_date) AS task_rank
FROM task;

-- Why not JPQL?
-- JPQL does not support window functions like RANK() and OVER()

-- Why native SQL?
-- Needed for analytical queries such as ranking and advanced pagination


SELECT *
FROM contact
WHERE LOWER(company) LIKE LOWER('%tech%');


-- JPQL has limited support for database-specific optimizations
-- and cannot fully utilize indexing or collation features

-- Why native SQL?
-- Gives more control over how case-insensitive search is implemented
-- and can be optimized based on database behavior


CALL update_task_status();

-- Why not JPQL?
-- JPQL is not designed to call stored procedures directly

-- Why native SQL?
-- Useful when business logic is implemented at the database level and for better performances