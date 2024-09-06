CREATE TABLE homeroom (
    homeroom_name VARCHAR(50) UNIQUE
);

INSERT INTO homeroom (homeroom_name) VALUES ('9A');
INSERT INTO homeroom (homeroom_name) VALUES ('9B');

ALTER TABLE student
ADD COLUMN homeroom_name VARCHAR(50);

ALTER TABLE student
ADD CONSTRAINT fk_homeroom
FOREIGN KEY (homeroom_name) REFERENCES homeroom(homeroom_name);


UPDATE student SET homeroom_name = '9A' WHERE name = 'John';
UPDATE student SET homeroom_name = '9B' WHERE name = 'Adam';
UPDATE student SET homeroom_name = '9A' WHERE name = 'Lucy';