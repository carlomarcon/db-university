-- 1
SELECT * FROM `students` WHERE YEAR(`date_of_birth`)= 1990
-- 2
SELECT * FROM `courses` WHERE `cfu`> 10
-- 3
SELECT * FROM `students` WHERE YEAR(`date_of_birth`) < 1993 
-- 4
SELECT * FROM `courses` WHERE `period` = 'I semestre'
-- 5
SELECT * FROM `exams` WHERE `date` = '2020-06-20' AND HOUR(`hour`) > 14 
-- 6
SELECT * FROM `degrees` WHERE `name` LIKE 'Corso di Laurea Magistrale%'
--7
SELECT COUNT(*) AS `num_dep` FROM `departments` 
--8
SELECT COUNT(*) AS `teachers` FROM `teachers` WHERE `phone` IS NULL

