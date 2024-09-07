CREATE TABLE subject (
    subject_name VARCHAR(100) UNIQUE
);

INSERT INTO subject (subject_name) VALUES ('Algebra');
INSERT INTO subject (subject_name) VALUES ('Biology');
INSERT INTO subject (subject_name) VALUES ('World History');

CREATE TABLE student_subject (
    student_name VARCHAR(100),
    student_email VARCHAR(100),
    subject_name VARCHAR(100),
    grade DECIMAL(5, 2),
    PRIMARY KEY (student_name, subject_name),
    FOREIGN KEY (student_email) REFERENCES student(email),
    FOREIGN KEY (subject_name) REFERENCES subject(subject_name)
);

INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('John', 'Algebra', 95.00);
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('John', 'Biology', 88.00);
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Adam', 'Algebra', 85.00);
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Lucy', 'Biology', 92.00);
INSERT INTO student_subject (student_name, subject_name, grade) VALUES ('Lucy', 'World History', 89.00);

