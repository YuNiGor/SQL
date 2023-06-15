create database database_15062023;

use database_15062023;



CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(128) NOT NULL,
    age INT
);

CREATE TABLE Teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(128) NOT NULL,
    age INT
);

CREATE TABLE Competencies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128) NOT NULL
);

CREATE TABLE Teachers2Competencies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    competency_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id),
    FOREIGN KEY (competency_id) REFERENCES Competencies(id)
);

CREATE TABLE Courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    title VARCHAR(128) NOT NULL,
    headman_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id),
    FOREIGN KEY (headman_id) REFERENCES Students(id)
);

CREATE TABLE Students2Courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Students (name, age)
VALUES
    ('Анатолий', 29),
    ('Олег', 25),
    ('Семен', 27),
    ('Олеся', 28),
    ('Ольга', 31),
    ('Иван', 22);

INSERT INTO Teachers (name, age)
VALUES
    ('Петр', 39),
    ('Максим', 35),
    ('Антон', 37),
    ('Всеволод', 38),
    ('Егор', 41),
    ('Светлана', 32);

INSERT INTO Competencies (title)
VALUES
    ('Математика'),
    ('Информатика'),
    ('Программирование'),
    ('Графика');

INSERT INTO Teachers2Competencies (teacher_id, competency_id)
VALUES
    (1, 1),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 1),
    (5, 3);

INSERT INTO Courses (teacher_id, title, headman_id)
VALUES
    (1, 'Алгебра логики', 2),
    (2, 'Математическая статистика', 3),
    (4, 'Высшая математика', 5),
    (5, 'Javascript', 1),
    (5, 'Базовый Python', 1);

INSERT INTO Students2Courses (student_id, course_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (3, 3),
    (4, 5);
