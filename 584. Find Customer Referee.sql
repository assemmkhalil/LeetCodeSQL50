SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
/* A customer may be not referred specifically by the customer
with id number 2 or may be not referred by anyone at all*/