-- 1. List all students
SELECT * FROM students;

-- 2. Show all courses a student is taking
SELECT s.first_name, s.last_name, c.course_name, e.semester
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

-- 3. Count how many students are in each major
SELECT major, COUNT(*) AS total_students
FROM students
GROUP BY major;

-- 4. Average grade per course (A=4, B=3, etc.)
SELECT c.course_name,
       AVG(CASE grade
           WHEN 'A' THEN 4
           WHEN 'B' THEN 3
           WHEN 'C' THEN 2
           WHEN 'D' THEN 1
           ELSE 0 END) AS avg_grade
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_id;

-- 5. Students who earned an A in any course
SELECT s.first_name, s.last_name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade = 'A';
