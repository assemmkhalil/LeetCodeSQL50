WITH process_times AS (
  SELECT 
    machine_id,
    process_id,
    MIN(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
    MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
  FROM Activity
  GROUP BY machine_id, process_id  
)
-- The CTE returns the start time and end time for each process of each machine
-- The start_time is the first 'start' timestamp (smallest time) for a given machine and process
-- The end_time is the last 'end' timestamp (largest time) for a given machine and process

SELECT 
  machine_id,
  ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM process_times
GROUP BY machine_id;
