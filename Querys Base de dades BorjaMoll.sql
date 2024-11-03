SELECT * FROM Student;

SELECT DISTINCT company_id FROM Employee;

SELECT * FROM Student WHERE teacher_id = 1;

SELECT * FROM Student WHERE teacher_id = 1 AND employee_id = 2;

SELECT * FROM Student ORDER BY surname ASC;

INSERT INTO Student (id, name, surname, email, phone, teacher_id, employee_id) 
VALUES (7, 'Laura', 'Diaz', 'laura@cifpfbmoll.eu', '650777888', 2, 3);

SELECT * FROM Employee WHERE phone IS NULL;

UPDATE Student SET phone = '650999000' WHERE id = 1;

DELETE FROM Student WHERE id = 7;

SELECT * FROM Student LIMIT 3;

SELECT MIN(id) AS MinID, MAX(id) AS MaxID FROM Student;

SELECT COUNT(*) AS TotalStudents FROM Student;
SELECT AVG(id) AS AvgID FROM Student;

SELECT * FROM Employee WHERE email LIKE '%@barcelo.com';

SELECT * FROM Student WHERE teacher_id IN (1, 2);

SELECT * FROM Student WHERE id BETWEEN 1 AND 3;

SELECT name AS StudentName, surname AS StudentSurname FROM Student;

SELECT Student.name AS StudentName, Teacher.name AS TeacherName
FROM Student
JOIN Teacher ON Student.teacher_id = Teacher.id;

SELECT Student.name, Employee.name
FROM Student
INNER JOIN Employee ON Student.employee_id = Employee.id;

SELECT Company.name AS CompanyName, Employee.name AS EmployeeName
FROM Company
LEFT JOIN Employee ON Company.id = Employee.company_id;

SELECT teacher_id, COUNT(*) AS StudentCount
FROM Student
GROUP BY teacher_id;

SELECT teacher_id, COUNT(*) AS StudentCount
FROM Student
GROUP BY teacher_id
HAVING StudentCount > 1;

SELECT name FROM Teacher WHERE EXISTS (SELECT * FROM Student WHERE teacher_id = Teacher.id);

SELECT name FROM Student WHERE id > ANY (SELECT id FROM Employee);

SELECT name FROM Student WHERE teacher_id = (SELECT id FROM Teacher WHERE name = 'Antonia');

SELECT name, 
CASE 
    WHEN teacher_id = 1 THEN 'Assigned to Antonia'
    WHEN teacher_id = 2 THEN 'Assigned to Josep'
    ELSE 'Assigned to other teacher'
END AS TeacherAssignment
FROM Student;




