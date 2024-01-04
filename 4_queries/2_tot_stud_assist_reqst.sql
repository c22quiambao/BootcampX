SELECT  count(assistance_requests.*) as total_assitance,
students.name as name
FROM assistance_requests
JOIN students on assistance_requests.student_id = assistance_requests.student_id
WHERE students.name ='Elliot Dickinson'
GROUP BY students.name;