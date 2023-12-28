-- 1

SELECT COUNT(*) AS `year_registered`, YEAR(`enrolment_date`)
FROM `students`
GROUP BY YEAR(`enrolment_date`)

-- 2

SELECT COUNT(*) AS `teacher`, `office_address`
FROM `teachers`
GROUP BY `office_address`
HAVING `teacher` <> 1

-- 3

SELECT ROUND(AVG(`vote`)) 
FROM `exam_student`
GROUP BY `exam_id`

-- 4

SELECT COUNT(*)
FROM `degrees`
JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
GROUP BY `departments`.`name` 