INSERT INTO coursera.courses
VALUES (1, N'Analysis', 1, 20, 10, CAST(N'2020-03-16 13:26:44.283' AS DateTime));

INSERT INTO coursera.courses
VALUES (2, N'Linear Algebra', 1, 30, 15, CAST(N'2020-03-16 13:27:26.300' AS DateTime));

INSERT INTO coursera.courses
VALUES (3, N'Statistics', 2, 30, 15, CAST(N'2020-03-16 13:27:38.417' AS DateTime));

INSERT INTO coursera.courses
VALUES (4, N'Geometry', 3, 35, 20, CAST(N'2020-03-16 13:27:54.013' AS DateTime));

INSERT INTO coursera.instructors
VALUES (1, N'Neno', N'Dimitrov', CAST(N'2020-03-16 13:25:34.973' AS DateTime));

INSERT INTO coursera.instructors
VALUES (2, N'Petko', N'Valchev', CAST(N'2020-03-16 13:26:00.143' AS DateTime));

INSERT INTO coursera.instructors
VALUES (3, N'Petar', N'Penchev', CAST(N'2020-03-16 13:26:12.613' AS DateTime));

INSERT INTO coursera.students
VALUES (N'9412011005', N'Krasimir', N'Petrov', CAST(N'2020-03-16 13:23:58.777' AS DateTime));

INSERT INTO coursera.students
VALUES (N'9501011014', N'Elena', N'Foteva', CAST(N'2020-03-16 13:24:29.853' AS DateTime));

INSERT INTO coursera.students
VALUES (N'9507141009', N'Ivan', N'Ivanov', CAST(N'2020-03-16 13:23:39.220' AS DateTime));

INSERT INTO coursera.students_courses
VALUES (N'9412011005', 1, CAST(N'2019-07-16' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9412011005', 2, CAST(N'2019-08-20' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9501011014', 1, CAST(N'2019-07-16' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9501011014', 2, CAST(N'2019-08-01' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9501011014', 3, CAST(N'2019-10-01' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9501011014', 4, CAST(N'2019-12-05' AS Date));

INSERT INTO coursera.students_courses
VALUES (N'9507141009', 4, CAST(N'2019-08-20' AS Date));
