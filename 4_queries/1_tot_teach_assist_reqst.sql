SELECT  count(*),
teachers.name as name
FROM assistance_requests
JOIN teachers on assistance_requests.teacher_id = teachers.id
WHERE teachers.name ='Waylon Boehm'
GROUP BY teachers.name;