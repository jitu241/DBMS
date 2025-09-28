#Student Database - MySQL Project

A MySQL database project featuring Indian student names and Assam city names, demonstrating SQL queries with AND/OR conditions.

## 📋 Project Description

This project creates a student database with Indian student data from Assam cities, showcasing multi-condition SQL queries using AND/OR operators.

## 🚀 Quick Start

### Method 1: Run in MySQL Command Line
```sql
-- Copy and paste this entire code into MySQL:
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

-- Run queries
SELECT 'Complex AND/OR' AS query_type;
SELECT * FROM students WHERE (age > 20 AND grade = 'A') OR (city = 'Jorhat');

SELECT 'AND Condition' AS query_type;
SELECT * FROM students WHERE age > 20 AND grade = 'A';
