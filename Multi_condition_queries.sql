CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    grade CHAR(1),
    marks INT,
    city VARCHAR(30)
);

INSERT INTO students (name, age, grade, marks, city) VALUES
('Aarav Sharma', 22, 'A', 85, 'Guwahati'),
('Priya Das', 19, 'B', 72, 'Jorhat'),
('Rahul Bora', 25, 'A', 90, 'Dibrugarh'),
('Ananya Baruah', 21, 'C', 65, 'Silchar'),
('Rajiv Gogoi', 20, 'A', 88, 'Tezpur'),
('Sunita Kalita', 23, 'B', 75, 'Nagaon'),
('Amit Singh', 22, 'A', 82, 'Guwahati'),
('Monalisa Saikia', 19, 'B', 78, 'Jorhat'),
('Deepak Choudhury', 24, 'A', 92, 'Dibrugarh'),
('Puja Sharma', 21, 'C', 68, 'Silchar');

-- Run your queries
SELECT 'Complex AND/OR' AS query_type;
SELECT * FROM students WHERE (age > 20 AND grade = 'A') OR (city = 'Jorhat');

SELECT 'AND Condition' AS query_type;
SELECT * FROM students WHERE age > 20 AND grade = 'A';