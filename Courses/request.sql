SELECT Students.name, Courses.title
FROM Students
JOIN Students2Courses ON Students.id = Students2Courses.student_id
JOIN Courses ON Students2Courses.course_id = Courses.id;

SELECT Teachers.name, Competencies.title
FROM Teachers
LEFT JOIN Teachers2Competencies ON Teachers.id = Teachers2Competencies.teacher_id
LEFT JOIN Competencies ON Teachers2Competencies.competency_id = Competencies.id;

SELECT Teachers.name
FROM Teachers
LEFT JOIN Teachers2Competencies ON Teachers.id = Teachers2Competencies.teacher_id
WHERE Teachers2Competencies.id IS NULL;

SELECT Students.name
FROM Students
LEFT JOIN Students2Courses ON Students.id = Students2Courses.student_id
WHERE Students2Courses.id IS NULL;

SELECT Courses.title
FROM Courses
LEFT JOIN Students2Courses ON Courses.id = Students2Courses.course_id
WHERE Students2Courses.id IS NULL;

SELECT Competencies.title
FROM Competencies
LEFT JOIN Teachers2Competencies ON Competencies.id = Teachers2Competencies.competency_id
WHERE Teachers2Competencies.id IS NULL;

SELECT Courses.title, Students.name AS Headman
FROM Courses
LEFT JOIN Students ON Courses.headman_id = Students.id;

SELECT S.name AS Student, H.name AS Headman
FROM Students AS S
JOIN Students2Courses AS SC ON S.id = SC.student_id
JOIN Courses AS C ON SC.course_id = C.id
LEFT JOIN Students AS H ON C.headman_id = H.id;
