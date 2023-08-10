CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'OurExercise_Db', FILENAME = 'D:\Indeed2\Phase-2\Day-1\OurExercise_Db.mdf',
SIZE = 24MB , FILEGROWTH= 8MB)
LOG ON
(NAME = 'OurExercise_log', FILENAME = 'D:\Indeed2\Phase-2\Day-1\OurExercise_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(
StudentId INT,
CourseCode NVARCHAR(50),
RegistrationDate DATE,
CONSTRAINT PK_StudentRegistrations PRIMARY KEY(StudentId,CourseCode)
)

INSERT INTO StudentRegistrations (StudentId, CourseCode,RegistrationDate)
VALUES (101, 'CSE101', '2023-08-01'),
       (102, 'MATH202', '2023-08-02'),
       (103, 'PHY101', '2023-08-03'),
       (104, 'ENG101', '2023-08-04'),
       (105, 'CHEM201', '2023-08-05')
select * from StudentRegistrations