CREATE TABLE Persons (
    PersonID int NOT NULL PRIMARY KEY,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
	City varchar(255)
);

select * from Persons

INSERT INTO Persons(PersonID, LastName, FirstName, Age, City)
VALUES ( 1001, 'Norouzi', 'Amirhossein', 18, 'Tehran'), ( 1002, 'Imani', 'Marry', 22, 'Shiraz'), ( 1003, 'Liliaee', 'Lili', 17, 'Tabriz');

INSERT INTO Persons(PersonID, LastName, FirstName, Age, City)
VALUES ( 1004, 'Akbari', 'Mohammad', 27, 'Esfehan'), ( 1005, 'Mohammadi', 'Hossein', 42, 'Bandar'), ( 1006, 'Zahra', 'Fatemeh', 37, 'Yasoj');


select * from Major

UPDATE Major
SET MajorField = 'Accounting'
WHERE MajorID = 3;

CREATE TABLE Student (
    StudentID int NOT NULL PRIMARY KEY,
	PersonID int FOREIGN KEY REFERENCES Persons(PersonID),
	MajorID int FOREIGN KEY REFERENCES Major(MajorID)
);

select * from Student

INSERT INTO Student(StudentID, PersonID, MajorID)
VALUES ( 2001, 1001, 1), ( 2003, 1002, 3), ( 2002, 1003, 2);


CREATE TABLE Teacher (
    TeacherID int NOT NULL PRIMARY KEY,
	PersonID int FOREIGN KEY REFERENCES Persons(PersonID),
	MajorID int FOREIGN KEY REFERENCES Major(MajorID)
);

select * from Teacher

INSERT INTO Teacher(TeacherID, PersonID, MajorID)
VALUES ( 2004, 1006, 2), ( 2005, 1005, 3), ( 2006, 1004, 1);

