SELECT user_id,
  CONCAT(UPPER(SUBSTRING(name, 1, 1)), -- Set 1st character to uppercase
          LOWER(SUBSTRING(name, 2))) AS name -- Set the rest to lowercase
FROM Users
ORDER BY user_id;