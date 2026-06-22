

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);


SELECT * FROM Students

SELECT *,ROW_NUMBER() over (order by marks desc) as [row numbers]
FROM Students

--Rank function --> If there is a tie then rank/ranks will be skipped
SELECT * ,RANK() over (order by marks desc) as [rank] 
FROM Students

--dense rank --> here rank wont be skipped 
SELECT * ,DENSE_RANK() over (order by marks desc) as [rank]
FROM Students

--interview example
--if there a olympic race for example running and four people are competing
--and three of the people came exactly at sam second to the finish line and 4 the guy delayed by 2 sec 
-- so here of we use rank it gives us correct first 3 persons as first and 4 th person as 4 th by skipping
--but where as in dense rank even 4 th person will be gives second rank 
--soo we cant manage 4 people standing on the podium right this is the real life example

SELECT * FROM Students

SELECT *, ROW_NUMBER() OVER (partition by subject order by marks desc)  [ROW number ] 
FROM Students

SELECT *,RANK() over (partition by subject order by marks desc) [Rank]
FROM Students

SELECT *,DENSE_RANK() over (partition by subject order by marks desc) [Rank]
FROM Students

SELECT *, ROW_NUMBER() OVER (partition by student_name order by marks desc)  [ROW number ] 
FROM Students

SELECT *, rank() OVER (partition by student_name order by marks desc)  [ROW number ] 
FROM Students