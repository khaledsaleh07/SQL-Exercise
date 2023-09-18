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
