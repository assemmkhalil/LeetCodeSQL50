DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email AND p1.id > p2.id;
/* Self joining the table to compare emails and delete the email if it's repeated
and has a higher id (keeping only one unique email with the smallest id) */