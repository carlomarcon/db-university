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
SELECT `courses`.`name`
FROM `courses`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `teachers`. `id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44

--4

SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name`
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
ON `degrees`. `department_id` = `departments`.`id`

--5

SELECT `courses`.`name`,`teachers`.`name`,`teachers`.`surname`
FROM `courses`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `course_teacher`. `teacher_id` = `teachers`.`id`

--6

SELECT `teachers`.`name`, `teachers`.`surname`
FROM `teachers`
JOIN `course_teacher`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses`
ON `course_teacher`. `course_id` = `courses`.`id`
JOIN `degrees`
ON `degrees`.`id` = `courses`. `degree_id`
JOIN `departments` 
ON `degrees`.`department_id`=`departments`.`id`
WHERE `departments`.`name`= "Dipartimento di Matematica"