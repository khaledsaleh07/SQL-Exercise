#BASIC QUERIES:
//////////////////////
#1-
SELECT Name FROM students
#2-
SELECT * FROM students WHERE (Age >= 30) 
#3-
SELECT name FROM students WHERE Gender = 'F' AND Age = 30
#4-
SELECT Points FROM students WHERE name = 'Alex'
#5-
INSERT INTO students (ID, name, Gender, Age, Points) VALUES (17, 'Khaled', 'M', 21, 7000);
#6-
UPDATE students SET Points=Points + 10 WHERE name='Basma'
#7-
UPDATE students SET Points=Points - 10 WHERE name='Alex'
////////////////////////////////////////

#CREATING TABLE:
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
);
#10, 11-
INSERT INTO graduates (ID, Name, Age, Gender, Points, Graduation)
SELECT ID, Name, Age, Gender, Points, '08/09/2018'
FROM students
WHERE Name = 'Layal';
#12-
DELETE FROM students  WHERE name = 'Layal'

#14-
SELECT Employees.Name AS EmployeeName, Companies.Name AS CompanyName, Companies.Date AS CompanyDate
FROM Employees
JOIN Companies ON Employees.Company = Companies.ID;
#15-
SELECT Employees.Name
FROM Employees
JOIN Companies ON Employees.Company = Companies.ID
WHERE Companies.Date < '2000-01-01';

#16-
SELECT DISTINCT Companies.Name
FROM Employees
JOIN Companies ON Employees.Company = Companies.ID
WHERE Employees.Role = 'Graphic Designer';


