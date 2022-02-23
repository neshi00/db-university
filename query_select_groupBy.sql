-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(`id`), YEAR(`enrolment_date`)
FROM `students`
GROUP BY `enrolment_date`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`), `office_number`
FROM `teachers` 
GROUP BY `office_number`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`), `exam_id`
FROM `exam_student`
GROUP BY `exam_id`
ORDER BY AVG(`vote`);

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT( `name`) AS `courses_degree`, `department_id`
FROM `degrees`
GROUP BY `department_id`;