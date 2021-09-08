create Database Student;--CREATES DATABASE

use Student;--SWITCHES TO DATABSE

CREATE TABLE Admissions (
    GR INT PRIMARY KEY,
    StudentID VARCHAR (50),
    JoiningDate DATETIME
);-- CREATES A TABLE

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1001, 'S005', 10-10-2000);--INSERTS A RECORD

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1002, 'S007', 11-9-2001);

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1003, 'S009', 12-8-2002);

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1004, 'S011', 6-11-2005);

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1005, NULL, 6-12-2005);

INSERT INTO Admissions(GR, StudentID, JoiningDate)
VALUES (1006, 'S0015', NULL);

select * from Admissions;

CREATE TABLE Students (
    StudentID VARCHAR (50),
    StudentName VARCHAR (50),
    StdName VARCHAR(50),
	Location VARCHAR(50)
);

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S005', 'Swapnil Nawale' , 'IX', 'Vashi');

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S007', 'ABC','VII', 'Sanpada');

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S009', 'PQR', 'II', 'Nerul');

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S011', 'XYZ', 'V', 'Seawoods');

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S013', 'IJK', NULL, 'Chembur');

INSERT INTO Students(StudentID, StudentName, StdName, Location)
VALUES ('S015', 'STQ', 'VII', NULL);

select * from Students;

--INNER JOIN
SELECT Admissions.GR, Admissions.JoiningDate, Students.StudentName
FROM Students
INNER JOIN Admissions--displays only matching records form both tables
ON Admissions.StudentID=Students.StudentID;

--EQUI JOIN
SELECT Admissions.GR, Admissions.JoiningDate, Students.StudentName
FROM Students, Admissions
WHERE Admissions.StudentID=Students.StudentID;--displays only matching records form both tables

--LEFT OUTER JOIN
SELECT Admissions.GR, Students.StudentName
FROM Students
LEFT OUTER JOIN Admissions ON Students.StudentID = Admissions.StudentID;--Displays All Values from left table

--RIGHT OUTER JOIN
SELECT Admissions.JoiningDate, Students.StudentName
FROM Students
RIGHT outer JOIN Admissions ON Students.StudentID = Admissions.StudentID;--Displays All Values from right table

--FULL OUTER JOIN
SELECT Students.StudentName, Admissions.JoiningDate, Admissions.GR
FROM Students
FULL OUTER JOIN Admissions ON Students.StudentID = Admissions.StudentID;--Displays all values

--CROSS JOIN
SELECT StudentName, JoiningDate
FROM Students
CROSS JOIN Admissions;--CROSS JOIN ARE USED FOR SHOWING EVERY POSSIBLE COMBINATION

