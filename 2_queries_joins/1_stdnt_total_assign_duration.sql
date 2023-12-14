SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students on assignment_submissions.student_id = students.id
WHERE name = 'Ibrahim Schimmel';