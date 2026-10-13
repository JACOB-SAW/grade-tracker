USE student_tracker;

INSERT INTO students (first_name, last_name, major, enrollment_year)
VALUES
('Jacob', 'Smith', 'Information Technology', 2023),
('Emily', 'Johnson', 'Computer Science', 2022),
('Michael', 'Brown', 'Cybersecurity', 2024);

INSERT INTO courses (course_name, department, credits)
VALUES
('Database Systems', 'CS', 3),
('Networking Fundamentals', 'IT', 4),
('Operating Systems', 'CS', 3),
('Cybersecurity Basics', 'CYBER', 3);

INSERT INTO enrollments (student_id, course_id, semester, grade)
VALUES
(1, 1, 'Fall 2023', 'A'),
(1, 2, 'Fall 2023', 'B'),
(2, 1, 'Fall 2023', 'A'),
(2, 3, 'Spring 2024', 'B'),
(3, 4, 'Fall 2023', 'A');
