-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`id`, `degrees`.`name`
FROM `degrees`
JOIN `students`
	ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name`
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` LIKE 'Dipartimento di Neuroscienze';

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `course_teacher`.`teacher_id`, `courses`.`name` AS 'course name'
FROM `courses`
JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `course_teacher`.`teacher_id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti
-- e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT *
FROM `degrees`
JOIN `students`
	ON `degrees`.`id` = `students`.`degree_id`
ORDER BY `students`.`surname`;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name` AS 'Degree Course', `degrees`.`level`, `courses`.`name` AS 'Course', `courses`.`year`, `courses`.`cfu`, `teachers`.`name` AS 'Teacher name', `teachers`.`surname` AS 'Teacher surname'
FROM `degrees`
JOIN `courses`
	ON `degrees`.`id` = `courses`.`degree_id` 
JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`;


6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

