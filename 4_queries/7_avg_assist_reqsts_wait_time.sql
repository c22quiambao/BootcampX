SELECT
  AVG(started_at - created_at) AS average_wait_time
FROM
  assistance_requests
JOIN
  students ON assistance_requests.student_id = students.id
ORDER BY average_wait_time DESC
LIMIT 1;