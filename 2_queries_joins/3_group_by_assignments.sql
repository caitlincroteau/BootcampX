/*EXAMPLE FROM COMPASS

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;*/

/*ONLY SHOW ENROLLED

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;

*/

/*HAVING LESS THAN 100 total submissions. 
HAVING works on aggregated data.
WHERE works on normal data*/

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name 
HAVING count(assignment_submissions.*) < 100;