SELECT *
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com';
/* The email starts with a letter then any number of letters,
numbers, dash, dot, or underscore then the domain */
