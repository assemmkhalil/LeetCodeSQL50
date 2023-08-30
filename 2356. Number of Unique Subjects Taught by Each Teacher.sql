SELECT teacher_id,
    COUNT(DISTINCT subject_id) AS cnt  -- The no. of unique subjects
FROM Teacher
GROUP BY teacher_id;
