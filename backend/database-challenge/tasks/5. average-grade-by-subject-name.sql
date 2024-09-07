UPDATE student_subject SET grade = 3.00 WHERE student_name = 'John' AND subject_name = 'Algebra';
UPDATE student_subject SET grade = 2.00 WHERE student_name = 'John' AND subject_name = 'Biology';
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('John', 'World History', 5.00);

UPDATE student_subject SET grade = 4.00 WHERE student_name = 'Adam' AND subject_name = 'Algebra';
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Adam', 'Biology', 3.00);
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Adam', 'World History', 2.00);

UPDATE student_subject SET grade = 4.00 WHERE student_name = 'Lucy' AND subject_name = 'Biology';
UPDATE student_subject SET grade = 3.00 WHERE student_name = 'Lucy' AND subject_name = 'World History';
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Lucy', 'Algebra', 5.00);

SELECT subject_name, AVG(grade) AS average_grade
FROM student_subject
GROUP BY subject_name;
