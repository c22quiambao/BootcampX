select AVG(total_duration) 
FROM (SELECT cohorts.name as name,
        SUM(completed_at - started_at) AS total_duration
      FROM
  assistance_requests
      JOIN
        students ON assistance_requests.student_id = students.id
      JOIN
        cohorts ON students.cohort_id = cohorts.id
      GROUP BY cohorts.name) AS filtered_table
limit 1;