SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id  -- Meaning the author viewed his own content 
ORDER BY author_id;