-- 1
SELECT DISTINCT `students`.`name`, `students`.`surname`
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di laurea in economia"

--2
SELECT `degrees`.`name`
FROM `courses`
JOIN `degrees`
ON `courses`.`degree_id`  = `degrees`.`id`
JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "dipartimento di neuroscienze"
AND `degrees`.`name` LIKE "corso di laurea magistrale%"

--3
